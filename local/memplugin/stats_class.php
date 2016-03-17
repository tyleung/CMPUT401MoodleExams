<?php
	require_once '../../config.php';

	class stats{
	
		// what stats needed for a grades? http://www.astronomy.ohio-state.edu/~pogge/Ast162/Quizzes/curve.html
		
		public function to_percentage_array($raw_score_array, $max_marks) {
			$percent = array();
			
			foreach($raw_score_array as $score) {
				array_push($percent, ($score / $max_marks) * 100);
			}
			
			return $percent;
		}
		
		public function count_grades($marks_array, $marks_interval, $max_marks) {
			$result = array_fill(0,floor(100/$marks_interval)+1,0);
			foreach($marks_array as $marks){
				$percentage = $marks/$max_marks*100;
				$index = floor($percentage/$marks_interval);
				$result[$index] = $result[$index]+1;
			}
			return $result;
		}
		
		public function mean($data_array) {
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
			$sum = 0.0;
			
			for($i=0; $i<$total; $i++) {
				$sum +=  pow(current($data_array) - $mean, 2);
				next($data_array);
			}
			
			$std_dev = sqrt($sum / ($total - 1));
			return $std_dev;
		}
		
		public function min($data_array) {
			$sorted = $data_array;
			asort($sorted);
			return current($sorted);		
		}
		
		public function max($data_array) {
			$sorted = $data_array;
			asort($sorted);
			return end($sorted);
		}

		public function graph($raw_score, $percentage_interval, $total_mark) {
			$data = $this->count_grades($raw_score, $percentage_interval, $total_mark);
			$datastr = serialize($data);
			return '<img src="stats_make_graph.php?data='.$datastr.'&interval='.$percentage_interval.'" alt="ResultsGraph.PNG"></br>';
		}

	}

?>

