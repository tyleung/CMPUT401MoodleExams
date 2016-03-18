<?php
	if (!class_exists('TCPDF')){
		require_once "TCPDF/tcpdf.php";
		require_once "FPDI/fpdi.php";
	}
	set_time_limit (0);


	/**
	 * Class for handling exam generation.
	 * @author Jaeyoon Kim
	 * @version 0.0.1
	 */ 
	class MME_Exams	{
		private $pdf = NULL; /**< The .pdf object that will be outputted.*/
		private $path = ""; /**< path to pdf file.*/
		private $name = ""; /**< Optional name parameter*/
		private $size = 0; /**< Number of pages in the pdf file*/

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

		/**
		 * The constuctor.
		 * The constructor takes 2 arguments, $path and the optional $name.
		 * The constructor will then setup a new pdf object based on the given arguments.
		 * This constructor will be changed to use database parameters instead at a later time.
		 * @param str $path The path to the exam file. 
		 * @param str $name="" Optional name of the exam.
		 */
		public function __construct($path,$name=""){
			$this->path = $path;
			$this->name = $name;
			$this->setup_pdf();
		}

		/**
		 * Private method. 
		 * The method is called by the constructor and whenever a new exam is being generated.
		 * The method sets up a new FPDI objects and sets up the number of pages and the font for later use.
		 * @return void
		 */
		private function setup_pdf(){
			$this->pdf = new FPDI();
			$this->size	= $this->pdf->setSourceFile($this->path);
			$this->pdf->SetFont('Courier','',10,true);
		}
		
		/**
		 * Public method. 
		 * The method takes 2 integer arguments for the current page and exam number.
		 * The method will return a string that will be displayed under the QRcode.
		 * @param int $page_number Current page number
		 * @param int $exam_number Current exam booklet number
		 * @return str String that will be displayed under the QRcode.
		 */
		public function get_QRcode_string($page_number,$exam_number){
			return $this->name.":#".$exam_number." pg:".$page_number;
		}

		/**
		 * Public method. 
		 * The method takes 2 integer arguments for the current page and exam number.
		 * This method will return a string of the serialized array data for use in the QRcode.
 		 * @param int $page_number Current page number.
		 * @param int $exam_number Current exam booklet number.
		 * @return str String of the serialized array data for use in the QRcode.
		 */
		public function get_QRcode_data($page_number,$exam_number){
			$data = array('page_number'=>$page_number,'exam_number'=>$exam_number,'name'=>$this->name);
			return serialize($data);
		}

		/**
		 * Private method.
		 * The method takes 2 integer arguments for the current page and exam number.
		 * The method generates and places the QRcode corresponding to the given arguments into the pdf.
		 * @param int $page_number Current page number
		 * @param int $exam_number Current exam booklet number 
		 * @return void
		 */
		private function generate_QRcode($page_number,$exam_number){
			$this->pdf->write2DBarcode($this->get_QRcode_string($page_number,$exam_number),'QRCODE,L',10,10,50,50,$this->style,'N');
		}

		/**
		 * Public method. 
		 * This method takes 2 integer arguments. $exam_count and $extra_pages
		 * This method will generate a exam each with a unique QRcode placed on the top left corner.
		 * @param int $exam_count Number of exams to be generated.
		 * @param int $extra_pages Number of extra "emergency" pages to generate for each exam.
		 * @return void
		 */
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
					$this->pdf->Cell(50,0,$this->get_QRcode_string($curpage+$this->size,$i),1);
				}
			}
		}


		/**
		 * Public method. 
		 * This method will output the generated .pdf file. Thus should only be called after generate_exam() method has been called.
		 * The PDF output will fail if there are any non PDF output made beforehand.
		 * An optional filename can be specified as the $name which will be used for the name in the download prompt.
		 * @param str $name="output" Optional filename.
		 * @return void
		 */
		public function output_exam($name="output"){
			$this->pdf->Output($name.".pdf","D");
		}
	}
?>

