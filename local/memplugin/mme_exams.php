<?php
	require_once '../../config.php';
	require_once "php-qrcode-detector-decoder/QrReader.php";
	require_once "TCPDF/tcpdf.php";
	require_once "FPDI/fpdi.php";
	set_time_limit (0);

	class MME_QRcode {

		private $data = "";
		private $path = "";
		private $qrcode = NULL;

		#Public Constructor. both parameters are optional.
		public function __construct($str="",$path=""){
			$this->data = $str;
			$this->path = $path;
		}

		#Generic Get/Setters
		public function get_data(){
			return $this->data;
		}

		public function set_data($data){
			$this->data = $data;
		}

		public function get_path(){
			return $this->path;
		}

		public function set_path($path){
			$this->path = $path;
		}

		#Reads data from the qrcode and returns the value.
		#TODO: Handle cases where image in the specified path doesn't exist
		#TODO: Handle cases where the image is not a valid QR Code
		public function get_data_from_QRcode(){
			$qrcode = new QrReader($this->path);
			$this->set_data($qrcode->text());
		}

		#Generates the QRcode containing $data to $path.png
		public function generate_QRcode(){
			QRcode::png($this->data,$this->path,'L',4,2);
		}

	}

	class MME_Exams	{
		private $pdf = NULL; // the pdf object that will be outputted.
		private $path = ""; // path to pdf file.
		private $name = ""; // optional name
		private $size = 0; // # of pages in the pdf file

		// QR code style
		private $style = array(
			'border' => 1,
			'vpadding' => 'auto',
			'hpadding' => 'auto',
			'fgcolor' => array(0,0,0),
			'bgcolor' => array(255,255,255),
			'module_width' => 1,
			'module_height' => 1
		);

		// Constructor. This takes in the file path and an optional name parameter.
		public function __construct($path,$name=""){
			$this->path = $path;
			$this->name = $name;
			$this->setup_pdf();
		}

		// This sets up a new FPDI object and is called from the constructor or whenever a new exam is being generated.
		private function setup_pdf(){
			$this->pdf = new FPDI();
			$this->size	= $this->pdf->setSourceFile($this->path);
			$this->pdf->SetFont('Courier','',10,true);
		}
		
		// Generates the text string to be inserted along with the QRcode image.
		public function get_QRcode_string($page_number,$exam_number){
			return $this->name.":#".$exam_number." pg:".$page_number;
		}

		// Generates the serialized data to be inserted into the QRcode....?
		public function get_QRcode_data($page_number,$exam_number){
			$data = array('page_number'=>$page_number,'exam_number'=>$exam_number,'name'=>$this->name);
			return serialize($data);
		}

		// Generates a serialized associative array from which the page, exam number and the name can be accessed/
		private function generate_QRcode($page_number,$exam_number){
			$this->pdf->write2DBarcode($this->get_QRcode_string($page_number,$exam_number),'QRCODE,L',10,10,20,20,$this->style,'N');
		}

		// removes the QR code
		private function remove_QRcode($page_number,$exam_number){
			if (file_exists($this->get_QRcode_path($page_number,$exam_number))){
				unlink($this->get_QRcode_path($page_number,$exam_number)); //unlink() will throw an error if file doesn't exist.
			}
		}

		// Public function for generating exams.
		// It takes $exam_count and the optional $extra_pages as the parameter.
		// And generate $exam_count exams with $extra_pages blank pages appended at the back with its unique qr code
		// 
		public function generate_exam($exam_count,$extra_pages = 0){
			$this->setup_pdf();
			for($i = 1;$i<=$exam_count;$i++){
				
				//Generate exam pages
				for($curpage = 1; $curpage <= $this->size; $curpage++){
					$tplIdx = $this->pdf->importPage($curpage,'/MediaBox');
					$this->pdf->AddPage();
					$this->pdf->useTemplate($tplIdx, 0, 0, 0, 0, true); 
					$this->generate_QRcode($curpage,$i);
					$this->pdf->Cell(50,0,$this->get_QRcode_string($curpage,$i),1);
				}

				//Generate extra "emergency" pages
				for($curpage = 1; $curpage<=$extra_pages; $curpage++){
					$this->pdf->AddPage();
					$this->generate_QRcode($curpage+$this->size,$i);
					$this->pdf->Cell(20,0,$this->get_QRcode_string($curpage+$this->size,$i),1);
				}
			}
		}

		// outputs the PDF. This will fail if there's any non PDF output.
		// This should be called after generating the exam. Otherwise it'll probably be a empty page.
		// The $dest parameter is identical to the one in the FPDF docs.
		// http://www.fpdf.org/en/doc/output.htm
		public function output_exam($dest="I",$name=""){
			$this->pdf->Output($dest);
		}
	}
?>

