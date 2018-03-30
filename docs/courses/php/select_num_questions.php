<?php
    $conn = mysqli_connect('localhost', 'root', '', 'azhar-uni');
    $output = array();


    $query = "SELECT * FROM questions";
    $result = mysqli_query($conn, $query);

    if(mysqli_num_rows($result)){
        while($row = mysqli_fetch_assoc($result)){
            $output[] = $row;
        }
    }
    echo json_encode($output);
