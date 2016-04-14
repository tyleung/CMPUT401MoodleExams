<?php
// This file is part of Moodle - http://moodle.org/
//
// Moodle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Moodle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Moodle.  If not, see <http://www.gnu.org/licenses/>.
/**
 * Main page of the plugin. 
 *
 * @package     local
 * @subpackage  memplugin
 * @copyright   Jaeyoon Kim jaeyoon1@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
	if (!class_exists('TCPDF')){
		require_once "TCPDF/tcpdf.php";
		require_once "TCPDF/tcpdi.php";
	}
	set_time_limit (0);


	/**
	 * Class for handling exam generation.
	 * @author Jaeyoon Kim
	 * @version 0.0.1
	 * @since 2016-03-18
	 */ 
	class MME_Exams	{
		private $pdf = NULL; /**< The .pdf object that will be outputted.*/
		private $path = ""; /**< path to pdf file.*/
		private $name = ""; /**< Optional name parameter*/
		private $size = 0; /**< Number of pages in the pdf file*/
		private $md5 = "";

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
		public function __construct($data,$name=""){
			$this->data = $data;
			$this->name = $name;
			$this->md5 = md5($data);
			$this->setup_pdf();
		}

		/**
		 * Private method. 
		 * The method is called by the constructor and whenever a new exam is being generated.
		 * The method sets up a new FPDI objects and sets up the number of pages and the font for later use.
		 * @return void
		 */
		private function setup_pdf(){
			$this->pdf = new TCPDI();
			$this->size	= $this->pdf->setSourceData($this->data);
			$this->pdf->SetFont('Courier','',10,true);
		}
		
		/**
		 * Public method. 
		 * The method takes 3 integer arguments for the current page and exam number.
		 * The method will return a string that will be displayed under the QRcode.
		 * @param int $page_number Current page number
		 * @param int $exam_number Current exam booklet number
		 * @param int $extra_count Number of extra pages to generate
		 * @return str String that will be displayed under the QRcode.
		 */
		public function get_QRcode_string($page_number, $exam_number, $extra_count = 0){
			return sprintf("%s:#%d pg:%d/%d", $this->name, $exam_number, $page_number, $this->size-1+$extra_count);
		}


		/**
		 * Public method. 
		 * The method takes 3 integer arguments for the current page and exam number.
		 * The method will return a string containing serialized data.
		 * @param int $page_number Current page number
		 * @param int $exam_number Current exam booklet number
		 * @param int $extra_count Number of extra pages to generate
		 * @return str String that will be displayed under the QRcode.
		 */
		public function get_serialized_data($page_number, $exam_number, $extra_count = 0){
			$data = array(
				'page_number' => $page_number,
				'exam_number' => $exam_number,
				'max_pages' => $this->size-1+$extra_count,
				'name' => $this->name,
				'md5' => $this->md5,
			);
			return serialize($data);
		}



		/**
		 * Private method.
		 * The method takes 2 integer arguments for the current page and exam number.
		 * The method generates and places the QRcode corresponding to the given arguments into the pdf.
		 * @param int $page_number Current page number
		 * @param int $exam_number Current exam booklet number 
		 * @param int $extra_count Number of extra pages to generate
		 * @return void
		 */
		private function generate_QRcode($page_number, $exam_number,  $extra_count = 0){
			$this->pdf->write2DBarcode($this->get_serialized_data($page_number, $exam_number, $extra_count),'QRCODE,L',10,10,50,50,$this->style,'N');
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
					$this->generate_QRcode($curpage-1, $i, $extra_pages);
					$this->pdf->Cell(50, 0, $this->get_QRcode_string($curpage-1, $i, $extra_pages), 1);
				}

				//Generate extra "emergency" pages
				for($curpage = 1; $curpage<=$extra_pages; $curpage++){
					$this->pdf->AddPage();
					$this->generate_QRcode($curpage+$this->size-1, $i, $extra_pages);
					$this->pdf->Cell(50,0,$this->get_QRcode_string($curpage+$this->size-1, $i, $extra_pages),1);
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

