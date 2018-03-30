<?php
    $conn = mysqli_connect('localhost', 'root', '', 'azhar-uni');
    $info = json_decode(file_get_contents("php://input"));

    if(count($info)){
        $question_id = mysqli_real_escape_string($conn, $info->question_id);
        $answer_body = mysqli_real_escape_string($conn, $info->answer_body);

        $query = "INSERT INTO answers (question_id, answer, created_at) VALUES ('$question_id', '$answer_body', CURTIME())";
        $result = mysqli_query($conn, $query);

        if($result){
            echo 1;
        } else {
            echo "Error: " . mysqli_error($conn);
        }
    }
