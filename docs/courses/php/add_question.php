<?php
    $conn = mysqli_connect('localhost', 'root', '', 'azhar-uni');
    $info = json_decode(file_get_contents("php://input"));

    if(count($info)){
        $question_body = mysqli_real_escape_string($conn, $info->question_body);
        $questioner_id = 24;
        $week_number = 1;
        $course_id = 29;

        $query = "INSERT INTO questions (question, questioner_id, week_number, course_id, created_at) VALUES ('$question_body', '$questioner_id', '$week_number', '$course_id', CURTIME())";
        $result = mysqli_query($conn, $query);

        if($result){
            echo 1;
        } else {
            echo "Error: " . mysqli_error($conn);
        }
    }
