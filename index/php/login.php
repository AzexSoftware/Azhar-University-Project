<?php
    $conn = mysqli_connect('localhost', 'root', '', 'azhar-uni');
    $info = json_decode(file_get_contents("php://input"));

    if(count($info)){
        $login_name  = mysqli_real_escape_string($conn, $info->login_name);
        $login_pass  = mysqli_real_escape_string($conn, $info->login_pass);

        // search for that username and password, and select his ID and his name
        $query_student = "SELECT id, first_name FROM students WHERE email = '$login_name' AND PASSWORD = '$login_pass'";
        $query_pro     = "SELECT id, first_name FROM doctors WHERE email = '$login_name' AND PASSWORD = '$login_pass'";

        $result_student = mysqli_query($conn, $query_student);
        $result_pro     = mysqli_query($conn, $query_pro);

        if(mysqli_num_rows($result_student)){
            $row = mysqli_fetch_assoc($result_student);
            session_start();
            $_SESSION['id'] = $row['id'];
            $_SESSION['username'] = $row['first_name'];
            echo "found_student";
        } elseif(mysqli_num_rows($result_pro)) {
            $row = mysqli_fetch_assoc($result_pro);
            session_start();
            $_SESSION['id'] = $row['id'];
            $_SESSION['username'] = $row['first_name'];
            echo "found_pro";
        } else {
            echo "not_pro & not_student";
        }

    }


?>
