<?php
	require_once '../../config.php';
	
	/**
	This class contains methods to do statistical calculations for the graph and associated data.
	*/
	class stats{
	
		// what stats needed for a grades? http://www.astronomy.ohio-state.edu/~pogge/Ast162/Quizzes/curve.html
		
		/**
		 *Converts the given array into percentage.
		 */
		public function to_percentage_array($raw_score_array, $max_marks) {
			if(count($raw_score_array) == 0) {
				return 0;
			}
			$percent = array();
			
			foreach($raw_score_array as $score) {
				array_push($percent, ($score / $max_marks) * 100);
			}
			
			return $percent;
		}
		
		/**
		 Used by the graph function, makes grades into percentage and puts them into intervals/buckets.
		*/
		private function count_grades($marks_array, $marks_interval, $max_marks) {
			$result = array_fill(0,floor(100/$marks_interval)+1,0);
			foreach($marks_array as $marks){
				$percentage = $marks/$max_marks*100;
				$index = floor($percentage/$marks_interval);
				$result[$index] = $result[$index]+1;
			}
			return $result;
		}
		
		/**
		Method to calculate the mean of a given array.
		*/
		public function mean($data_array) {
			if(count($data_array) == 0) {
				return 0;
			}
			$mean = array_sum($data_array) / count($data_array);
			return $mean;
		}
		
		/**
		Method to calculate the median of a given array.
		*/
		public function median($data_array) {
			if(count($data_array) == 0) {
				return 0;
			}
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
		
		/**
		Method to calculate the spread of a given array.
		*/
		public function spread($data_array) {
			if(count($data_array) == 0) {
				return 0;
			}
			//s = sqrt((sum(i-mean)^2)/n-1)	where i is iteration, n is total.
			$mean = $this->mean($data_array);
			$total = count($data_array);
			$sum = 0.0;
			
			for($i=0; $i<$total; $i++) {
				$sum +=  pow(current($data_array) - $mean, 2);
				next($data_array);
			}
			$divide = $total - 1;
			if($divide <= 0) {
				$divide = 1;
			}
			$std_dev = sqrt($sum / ($divide));
			return $std_dev;
		}
		
		/**
		Method to calculate the minimum of a given array.
		*/
		public function min($data_array) {
			if(count($data_array) == 0) {
				return 0;
			}
			$sorted = $data_array;
			asort($sorted);
			return current($sorted);		
		}
		
		/**
		Method to calculate the maximum of a given array.
		*/
		public function max($data_array) {
			if(count($data_array) == 0) {
				return 0;
			}
			$sorted = $data_array;
			asort($sorted);
			return end($sorted);
		}

		/**
		Method to generate the graph PNG image. Calls upon stats_make_graph.php
		*/
		public function graph($raw_score, $percentage_interval, $total_mark) {
			$data = $this->count_grades($raw_score, $percentage_interval, $total_mark);
			$datastr = serialize($data);
			return '<img src="stats_make_graph.php?data='.$datastr.'&interval='.$percentage_interval.'" alt="ResultsGraph.PNG"></br>';
		}

	}

?>

