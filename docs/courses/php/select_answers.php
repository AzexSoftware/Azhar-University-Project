<?php
    $conn = mysqli_connect('localhost', 'root', '', 'azhar-uni');
    $info = json_decode(file_get_contents("php://input"));
    $output = array();

    if(count($info)){
        $question_id = mysqli_real_escape_string($conn, $info->question_id);

        $query = "SELECT * FROM answers WHERE question_id = '$question_id'";
        $result = mysqli_query($conn, $query);
        if(mysqli_num_rows($result)){
            while($row = mysqli_fetch_assoc($result)) {
                $output[] = $row;
            }
        }
        echo json_encode($output);

    }
