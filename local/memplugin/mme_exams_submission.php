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

	require_once "php-qrcode-detector-decoder/QrReader.php";

	/**
	 * Class for handling scanned submission for MME exams.	
 	 * @author Jaeyoon Kim
	 * @version 0.0.1
	 * @since 2016-03-18
	 */ 
	class MME_exam_submission {
	
		private $img = NULL; /**< processed image file object*/
		private $data = NULL;/**< original image data*/
		private $qrtext =""; /**< The string contained within the QRcode*/
		private $cid = -1; /**< The course id that the booklet will be assigned for */

		/**
		 * The constuctor.
		 * The constructor takes in 1 string corresponding to the raw bytes of the image.
		 * The image should be an .png image.
		 * Only the first page will be read if a multi-page pdf is submitted.
		 * This constructor will be changed to use database parameters instead at a later time.
		 * @param blob $data Raw blob of the image.
		 */
		public function __construct($data, $courseId){
			$this->img = new Imagick();
			$this->data = $data;
			$this->img->readImageBlob($this->data);
			$this->crop_image();
			$this->read_QRcode();
			$this->cid = $courseId;
			$this->insert_image_to_database();

			//Cleanup
			$this->img->clear();
		}



		/**
		 * Public method. 
		 * This method returns a string found within the scanned QRcode.
		 * If no QRcode is found, the method return a string "Could not read QRcode"
		 * @return str string of the QRcode data
		 */
		public function get_data(){
			if($this->qrtext == ""){
				return NULL;
			} else {
				return $this->qrtext;
			}
		}

		/**
		 * Private method. 
		 * This method returns the blob form of the image object.
		 * @return string Blob of the image object.
		 */
		private function get_image_blob(){
			return $this->img->getImageBlob();
		}

		/**
		 * Private method.
		 * The method crops the image object leaving the top left corner for faster QRcode reading.
		 * @return void
		 */
		private function crop_image(){
			$this->img->scaleImage(1000,0);
			$this->img->cropImage(350,350,0,0);
		}

		/**
		 * Private method.
		 * The method reads the QRcode within the image object and sets the resulting value to $this->qrtext.
		 * @return void
		 */
		private function read_QRcode(){
			$blob = $this->img->getImageBlob();
			$qrcode = new QrReader($blob,QrReader::SOURCE_TYPE_BLOB);
			$this->qrtext = $qrcode->text();
		}

		/**
		 * Public method.
		 * Returns the data parameters used to generate the QRcode as an array.
		 * @return array Associative array containing data from QRcode string.
		 * Exam name, Booklet num, page num, max pages
		 */
		// Deserialize data after reading QR.
		public function get_deserialized_data(){
			if($this->qrtext == "" or $this->qrtext === NULL){
				return NULL;
			} else {
				return unserialize($this->qrtext);
			}
		}

		/**
		 * Private method.
		 * Unimplemented
		 * @return void
		 */
		//upload parameters (exam#,page#) to a table that has the image_id(?) as the key.
		private function insert_image_to_database(){
			
			global $DB;

			$qrdata = $this->get_deserialized_data();
			if ($qrdata === NULL){
				return NULL;
			}
			
			$hash = $qrdata['md5'];
			$booknum = intval($qrdata['exam_number']);
			
			$rec_check = $DB->get_records_sql('SELECT pdf_file_id, {mem_booklet_data}.booklet_id
							FROM {mem_booklet_data}, {mem_pdf_files}
							WHERE {mem_booklet_data}.course_id=?
							AND {mem_booklet_data}.exam_hash=?
							AND {mem_booklet_data}.booklet_id={mem_pdf_files}.booklet_id
							AND {mem_pdf_files}.booklet_num=?'
							, array($this->cid, $hash, $booknum));
			var_dump($rec_check);
			$booklet_id = -1;
			
			if(empty($rec_check)) {
				$book_param = new stdClass();
				$book_param->year_semester_origin = "2016 SUMMER"; // replace with form data later.
				$book_param->course_id = intval($this->cid);
				$book_param->max_pages = intval($qrdata['max_pages']);
				$book_param->exam_hash = $hash;
				$booklet_id = $DB->insert_record("mem_booklet_data", $book_param, true, false);
			} else {
				$booklet_id = intval(current($rec_check)->booklet_id);
			}
			
			$img_param = new stdClass();
			$img_param->booklet_id = $booklet_id;
			$img_param->exam_hash = $hash;
			$img_param->pdf_file = $this->data;
			$img_param->page_num = intval($qrdata['page_number']);
			$img_param->booklet_num = intval($booknum); // exam-number is booklet number
			$ret = $DB->insert_record("mem_pdf_files", $img_param, true, false);
			
			$pg_param = new stdClass();
			$pg_param->booklet_id = $booklet_id;
			$pg_param->exam_hash = $hash;
			$pg_param->page_num = intval($qrdata['page_number']);
			$DB->insert_record("mem_pages", $pg_param, true, false);
			
			return $ret;
			
		}

	}

?>

