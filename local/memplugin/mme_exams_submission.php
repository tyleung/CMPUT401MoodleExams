<?php
	require_once '../../config.php';
	require_once "php-qrcode-detector-decoder/QrReader.php";

	class MME_exam_submission {

		private $pdf = NULL;
		private $img = NULL;
		private $path = "";
		private $name = "";
		private $exam_number = 0;
		private $page_number = 0;
		private $qrtext ="";

		// pdf file path for the constructor for now.
		// replace with database parameters so we can grab the blob of the pdf file instead.
		// assuming 1 page per .pdf file for now.
		public function __construct($path=""){
			$this->path = $path;
			$this->img = new Imagick($path.'[0]');
			$this->img->setResolution(1000,1000);
			$this->img->setImageFormat('png');
			$this->crop_image();
			$this->read_QRcode();
		}

		public function get_data(){
			if($this->qrtext == ""){
				return "Could not read QRcode";
			} else {
				return $this->qrtext;
			}
		}

		private function get_image_blob(){
			return $this->img->getImageBlob();
		}

		// crop away everything but the top-left corner.
		private function crop_image(){
			$this->img->cropImage(200,200,0,0);
		}

		// read qrcode from the cropped image
		private function read_QRcode(){
			$blob = $this->img->getImageBlob();
			$qrcode = new QrReader($blob,QrReader::SOURCE_TYPE_BLOB);
			$this->qrtext = $qrcode->text();
		}

		// Deserialize data after reading QR.
		private function deserialize_data(){
			return;
		}

		//upload parameters (exam#,page#) to a table that has the image_id(?) as the key.
		private function do_database_thing(){
			return;
		}

	}

?>

