<?php
    $conn = mysqli_connect("localhost" , "root" , "" , "dr-st-data");
    $info = json_decode(file_get_contents("php://input"));

    if(count($info)){
        //********************************************************//
        //**************** student registration ******************//
        //********************************************************//

        //********** stage 1 : strip html tags to avoid hacking. **************//
        $firstName_student    = strip_tags($info->firstName_student);
        $lastName_student     = strip_tags($info->lastName_student);
        $email_student        = strip_tags($info->email_student);
        $password_student     = strip_tags($info->password_student);
        $conPassword_student  = strip_tags($info->conPassword_student);
        $year_student         = strip_tags($info->year_student);
        $gender_student       = strip_tags($info->gender_student);
        $department_student       = strip_tags($info->department_student);

        //********** stage 2 : protect data from sql injection. **************//
        $firstName_student      = mysqli_real_escape_string($conn, $firstName_student);
        $lastName_student       = mysqli_real_escape_string($conn, $lastName_student);
        $email_student          = mysqli_real_escape_string($conn, $email_student);
        $password_student       = mysqli_real_escape_string($conn, $password_student);
        $conPassword_student    = mysqli_real_escape_string($conn, $conPassword_student);
        $year_student           = mysqli_real_escape_string($conn, $year_student);
        $gender_student         = mysqli_real_escape_string($conn, $gender_student);
        $department_student     = mysqli_real_escape_string($conn, $department_student);

        // check & filtering data before storing it in database
        if(empty($firstName_student) || empty($lastName_student) || empty($email_student) || empty($password_student) || empty($conPassword_student) ||  empty($gender_student) || empty($year_student) || empty($department_student) ){
            $error1 = 'all fields are required.';
        } elseif(filter_var($email_student, FILTER_VALIDATE_EMAIL) === 'false') {
            $error2 = 'Enter a valid email.';
        } elseif(strlen($password_student) <= 6 ) {
            $error3 = 'The password must be more than 6 characters.';
        } elseif($password_student !== $conPassword_student) {
            $error4 = 'you must Enter the same password.';
        }

        // INSERT students data INTO DB
        $query  = "INSERT INTO `student` (first_name, last_name, email, password, conpass, academic_year, department, gender) VALUES ('$firstName_student', '$lastName_student', '$email_student', '$password_student', '$conPassword_student', '$year_student', '$department_student', '$gender_student')";

        $insert = mysqli_query($conn, $query);
        if(!$insert){ // if not insert show the error
            echo "error" . mysqli_error($conn);
        } else {
            echo "Data INserted Successfully!";
        }

    }

    // if(isset($_POST['login'])){
    //         // strip html tags.
    //         $email = strip_tags($_POST['email']);
    //         $pass  = strip_tags($_POST['pass']);
    //         // protect data from sql injection.
    //         $email = mysqli_real_escape_string($email);
    //         $pass  = mysqli_real_escape_string($pass);
    //         // SELECT data FROM DB.
    //         $query  = "SELECT first-name FROM student WHERE email = '$email' AND password = '$pass'";
    //         $select = mysqli_query($conn, $query);
    //         if(!$select){
    //             echo "error" . mysqli_error($select);
    //         }
    //         header('location:dash.php');
    //         exit();
    // }
