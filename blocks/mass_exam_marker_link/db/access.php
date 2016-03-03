<?php
    $capabilities = array(
 
    'blocks/mass_exam_marker_link:myaddinstance' => array(
        'captype' => 'write',
        'contextlevel' => CONTEXT_SYSTEM,
        'archetypes' => array(
            'teacher' => CAP_ALLOW,
            'editingteacher' => CAP_ALLOW,
            'manager' => CAP_ALLOW
        ),
 
        //'clonepermissionsfrom' => 'moodle/my:manageblocks'
    ),
 
    'blocks/mass_exam_marker_link:addinstance' => array(
        'riskbitmask' => RISK_SPAM | RISK_XSS,
 
        'captype' => 'write',
        'contextlevel' => CONTEXT_BLOCK,
        'archetypes' => array(
            'teacher' => CAP_ALLOW,
            'editingteacher' => CAP_ALLOW,
            'manager' => CAP_ALLOW
        ),
 
        //'clonepermissionsfrom' => 'moodle/site:manageblocks'
    ),
);
?>
