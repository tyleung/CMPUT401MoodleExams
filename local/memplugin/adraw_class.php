<?php
	require_once '../../config.php';
	
	/**
	This class contains methods to aid the canvas and marking page.
	*/
	
	class draw_manager{
	
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
	}
?>

