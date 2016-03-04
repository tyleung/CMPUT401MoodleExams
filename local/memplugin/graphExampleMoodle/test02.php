<?php
include '../../../config.php';
include $CFG->dirroot.'/lib/graphlib.php';

$chart = new graph(400,240);
$chart->parameter['title'] = 'Brush Line Chart';
$chart->parameter['x_label'] = 'Day of the Week';
$chart->parameter['y_label_left'] = 'Some Data';

$chart->x_data          = array('Friday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday');

srand ((double) microtime() * 1000000);
$a = 25;
$b = 10;
$c = 18;
$d = 4;
$e = 9;
$f = 12;
foreach (array('alpha','beta','theta') as $i) {
	$a += rand(-4, 2);
	$b += rand(-2, 4);
	$c += rand(-4, 2);
	$d += rand(-2, 4);
	$e += rand(-4, 2);
	$f += rand(-2, 4);
	if ($a < 0) $a = 0;
	if ($b < 0) $b = 0;
	if ($c < 0) $c = 0;
	if ($d < 0) $d = 0;
	if ($e < 0) $e = 0;
	if ($f < 0) $f = 0;
	$chart->y_data[$i] = array($a, $b, $c, $d, $e, $f);
}

$chart->parameter['point_size'] = 6;

// format for each data set
$chart->y_format['alpha'] =
  array('colour' => 'blue',
        'line'   => 'brush',
        'legend' => 'First Data Set');

$chart->y_format['beta'] =
  array('colour' => 'yellow',
        'line'   => 'brush',
        'legend' => 'Second Data Set');

$chart->y_format['theta'] =
  array('colour' => 'green',
        'line'   => 'brush',
        'legend' => 'Third Data Set');

// order in which to draw data sets.
$chart->y_order = array('alpha', 'beta', 'theta');

$chart->parameter['x_axis_angle'] = 60; // x_axis text rotation
$chart->parameter['y_decimal_left']= 2;
$chart->parameter['y_axis_num_ticks']= 6;

$chart->parameter['brush_size'] = 4;
$chart->parameter['shadow_offset'] = 4;

//$chart->parameter['legend'] = 'outside-left';
//$chart->parameter['legend_border'] = 'black';

// draw it.
$chart->draw();
?>
