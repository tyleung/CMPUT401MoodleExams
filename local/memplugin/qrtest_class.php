<?php
	require_once '../../config.php';
	require_once "phpqrcode/qrlib.php";
	require_once "php-qrcode-detector-decoder/QrReader.php";

	class MME_QRcode {

		private $data = "";
		private $path = "";

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

?>

