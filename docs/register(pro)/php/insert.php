<?php
    $conn = mysqli_connect('localhost', 'root', '', 'azhar-uni');
    $info = json_decode(file_get_contents("php://input"));

    $courses = array();

    if(count($info)){
        $fname                  = mysqli_real_escape_string($conn, $info->fname);
        $lname                  = mysqli_real_escape_string($conn, $info->lname);
        $email                  = mysqli_real_escape_string($conn, $info->email);
        $password               = mysqli_real_escape_string($conn, $info->password);
        $phone                  = mysqli_real_escape_string($conn, $info->phone);
        $gender                 = isset($info->gender) ? mysqli_real_escape_string($conn, $info->gender) : null;
        // $image                  = addslashes(file_get_contents($_FILES[$info->image]['tmp_name']));
        $bio                    =  isset($info->bio) ? mysqli_real_escape_string($conn, $info->bio) : null;
        $position               =  isset($info->position) ? mysqli_real_escape_string($conn, $info->position) : null;
        $certificate            =  isset($info->certificate) ? mysqli_real_escape_string($conn, $info->certificate) : null;
        $courses['production']  =  isset($info->production) ? mysqli_real_escape_string($conn, $info->production) : null;
        $courses['chmistry']    =  isset($info->chmistry) ?mysqli_real_escape_string($conn, $info->chmistry) : null;
        $courses['physics']     =  isset($info->physics) ? mysqli_real_escape_string($conn, $info->physics) : null;
        $courses['math']        =  isset($info->math) ? mysqli_real_escape_string($conn, $info->math) : null;
        $fb                     =  isset($info->fb) ? mysqli_real_escape_string($conn, $info->fb) : null;
        $linked_in              =  isset($info->linked_in) ? mysqli_real_escape_string($conn, $info->linked_in) : null;
        $github                 =  isset($info->github) ? mysqli_real_escape_string($conn, $info->github) : null;
        $website                =  isset($info->website) ? mysqli_real_escape_string($conn, $info->website) : null;

        // <!-- *****************************************************************************
        // *********************** Store the name of the doctor in the session ********************
        // ******************************************************************************** -->
        session_start();
        $_SESSION['username'] = $fname;
        // <!-- *****************************************************************************
        // *********************** Store these data into the table of doctors ********************
        // ******************************************************************************** -->
        $query = "INSERT INTO doctors (first_name, last_name, email, PASSWORD, phone_number, gender, bio, current_position, certifications, facebook, linked_in, github, website) VALUES ('$fname', '$lname', '$email', '$password', '$phone', '$gender', '$bio', '$position', '$certificate', '$fb', '$linked_in', '$github', '$website')";
        $result = mysqli_query($conn, $query);

        if(!$result){
            echo "Error: " . mysqli_error($conn);
        }

        // <!-- ***************************************************************************
        // *********** select the id of the doctor ***************************************
        // ****************************************************************************** -->
        $query = "SELECT id FROM doctors WHERE email = '$email'";
        $result2 = mysqli_query($conn, $query);
        $row = mysqli_fetch_assoc($result2);
        $doc_id = $row['id'];

        if(!$result2){
            echo "Error: " . mysqli_error($conn);
        }
        // <!-- *************************************************************************************************
        // *********** Store the courses into the courses table related to the id of the doctor ********************
        // ************************************************************************************************ -->
        if(!count($courses)){
            foreach($courses as $key => $course){
                if($course == 1){
                    $query = "INSERT INTO courses (course_name, doctor_id) VALUES ('$key', '$doc_id')";
                    $result3 = mysqli_query($conn, $query);
                    if(!$result3){
                        echo "Error: " . mysqli_error($conn);
                    }
                }
            }
        } else {
            echo 2;
        }

        if($result && $result2 && $result3){
            echo 1;
        }
    }
