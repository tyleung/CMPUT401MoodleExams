<?php
require_once '../../config.php';
require_once $CFG->dirroot.'/lib/graphlib.php';

// $x_data = array(0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100);
// $y_data = array(5.610, 15.940, 30.670, 30.670, 40.940, 53.650, 39.561, 40.1635, 10.236, 15.2, 5.0);

/*
	private $x_max = 0;
	private $y_data = array();
	private $title = "";
	private $x_label = "";
	private $y_label = "";

	#Public Constructor.
	public function __construct($max_mark, $y_data_array, $graph_title="Results", $x_label="Marks", $y_label="Student Amount (%)") {
		$this->x_max = $max_mark;
		$this->y_data = $y_data_array;
		$this->title = $graph_title;
		$this->x_label = $x_label;
		$this->y_label = $y_label;
		$this->draw();
	}
	
	
	
	public function draw() {
		$line = new graph(600,480);
		$line->parameter['title']   = $this->title;
		$line->parameter['x_label'] = $this->x_label;
		$line->parameter['y_label_left'] = $this->y_label;

		$line->x_data = range(0, $this->x_max);

		$line->y_data['y_data_values'] = $this->y_data;
		$line->y_format['y_data_values'] = array('colour' => 'blue', 'bar' => 'fill', 'shadow_offset' => 3);
		$line->y_order = array('y_data_values');

		$line->parameter['y_min_left'] = 0; // lowest percentage.
		$line->parameter['y_max_left'] = 10; // get highest percentage occurence.
		$line->parameter['x_min'] = 0; // minimum mark
		$line->parameter['x_max'] = $this->x_max; // maximum mark

		$line->draw();
	}
}*/

$line = new graph(600,480);
$line->parameter['title']   = "Results";
$line->parameter['x_label'] = "Marks";
$line->parameter['y_label_left'] = "Student Amount (%)";

$line->x_data = range(0, $_GET['max_marks'], $_GET['interval']);

$line->y_data['y_data_values'] = unserialize($_GET['data']);
$line->y_format['y_data_values'] = array('colour' => 'blue', 'bar' => 'fill', 'shadow_offset' => 3);
$line->y_order = array('y_data_values');

$line->parameter['y_min_left'] = 0; // lowest percentage.
$line->parameter['y_max_left'] = 10; // get highest percentage occurence.
$line->parameter['x_min'] = 0; // minimum mark
$line->parameter['x_max'] = $_GET['max_marks']; // maximum mark

$line->draw();

?>
