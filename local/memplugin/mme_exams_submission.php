<?php
	require_once '../../config.php';
	require_once "php-qrcode-detector-decoder/QrReader.php";


	/**
	 *  Class for handling scanned submission for MME exams.	
	 */ 
	class MME_exam_submission {
	

		private $pdf = NULL; /**< .pdf file object*/
		private $img = NULL; /**< image file object converted from $pdf*/
		private $path = NULL; /**< path to the .pdf file*/
		private $qrtext =""; /**< The string contained within the QRcode*/

		/**
		 * The constuctor.
		 * The constructor takes in 1 string as the parameter corresponding to the filepath to the scan.
		 * The .pdf should only contain 1 page. 
		 * Only the first page will be read if a multi-page pdf is submitted.
		 * This constructor will be changed to use database parameters instead at a later time.
		 */

		public function __construct($path=""){
			$this->path = $path;
			$this->img = new Imagick($path.'[0]');
			$this->img->setResolution(1000,1000);
			$this->img->setImageFormat('png');
			$this->crop_image();
			$this->read_QRcode();
		}

		/**
		 * Public method. 
		 * This method takes no arguments.
		 * This method returns a string found within the scanned QRcode.
		 * If no QRcode is found, the method return a string "Could not read QRcode"
		 */
		public function get_data(){
			if($this->qrtext == ""){
				return "Could not read QRcode";
			} else {
				return $this->qrtext;
			}
		}

		/**
		 * Private method. 
		 * This method takes no arguments.
		 * This method returns the blob form of the image object.
		 */
		private function get_image_blob(){
			return $this->img->getImageBlob();
		}

		/**
		 * Private method.
		 * This method takes no arguments.
		 * This method does not return any values.
		 * The method crops the image object leaving the top left corner for faster QRcode reading.
		 */
		private function crop_image(){
			$this->img->cropImage(200,200,0,0);
		}

		/**
		 * Private method.
		 * This method takes no arguments.
		 * This method does not return any values.
		 * The method reads the QRcode within the image object and sets the resulting value to $this->qrtext.
		 */
		private function read_QRcode(){
			$blob = $this->img->getImageBlob();
			$qrcode = new QrReader($blob,QrReader::SOURCE_TYPE_BLOB);
			$this->qrtext = $qrcode->text();
		}

		/**
		 * Private method.
		 * Unimplemented
		 */
		// Deserialize data after reading QR.
		private function deserialize_data(){
			return;
		}

		/**
		 * Private method.
		 * Unimplemented
		 */
		//upload parameters (exam#,page#) to a table that has the image_id(?) as the key.
		private function do_database_thing(){
			return;
		}

	}

?>

