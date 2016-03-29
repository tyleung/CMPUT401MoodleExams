<?php
// from https://docs.moodle.org/dev/Blocks
/** This class gives Mass Exam Marker launching link to be displayed as a block in the moodle/my/ area. */
class block_mass_exam_marker_link extends block_base {
    public function init() {
        $this->title = get_string('block_title', 'block_mass_exam_marker_link');
    }
    
    public function get_content() {
    global $CFG;
    if ($this->content !== null) {
      return $this->content;
    }
 
    $this->content         =  new stdClass;
    /** The hyperlink to Mass Exam Marker's main page. */
    $this->content->text   = '<a href='.$CFG->wwwroot.'/local/memplugin/view.php>'.get_string('launch_text','block_mass_exam_marker_link').'</a>';
    //$this->content->footer = 'Footer here...';
 
    return $this->content;
  }
}
  
?>
