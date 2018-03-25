<?php
    if (!isset($_SESSION)){
        session_start();
    }

    $sessions = array();
    foreach($_SESSION as $key => $value){
        $sessions[$key] = $value;
    }

    header('Content-Type: application/json');
    echo json_encode($sessions);
?>
