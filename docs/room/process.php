<?php

$course_id = $_GET['id'];

?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

	<form action="edit.php" method="post">
		<input type="text" name="course_id" value="<?php echo $course_id ?>">
		<input type="submit" value="click" id="submit">
	</form>


	<script type="text/javascript" src="js/control.js"></script>

</body>
</html>


