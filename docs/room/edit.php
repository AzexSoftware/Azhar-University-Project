<?php
if ($_SERVER['REQUEST_METHOD'] == "POST") {
	$course_id = $_POST['course_id'];
	echo $course_id;
}
?>