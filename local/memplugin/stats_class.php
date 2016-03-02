<?php
	require_once '../../config.php';

	class stats {
	
	// what stats needed for a grades? http://www.astronomy.ohio-state.edu/~pogge/Ast162/Quizzes/curve.html

		private $data = "";
		private $path = "";

		#Public Constructor. both parameters are optional.
		public function __construct($str="",$path=""){
			$this->data = $str;
			$this->path = $path;
		}

		public function mean($data_array){
			$mean = array_sum($data_array) / count($data_array);
			return $mean;
		}
		
		public function median($data_array) {
			$med = -1.0;
			$sorted = $data_array;
			asort($sorted);
			$length = count($sorted);
			if($length % 2 == 0) {
				$midslice = array_slice($sorted, ($length / 2) - 1);
				$med = (current($midslice) + next($midslice)) / 2;
			} else {
				$med = current(array_slice($sorted, $length / 2));
			}
			return $med;
		}
		
		
		public function spread($data_array) {
			//s = sqrt((sum(i-mean)^2)/n-1)	where i is iteration, n is total.
			$mean = $this->mean($data_array);
			$total = count($data_array);
			
			$std_dev = 0;//sqrt();
			return $std_dev;
		}

	}

?>

