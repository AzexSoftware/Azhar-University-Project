<?php 
$conn = mysqli_connect("localhost" , "root" , "" , "azhar-uni");
if (!$conn){
    die("Failed");
}
session_start();
$id = $_SESSION['id'];
$query = "SELECT * FROM `courses` WHERE doctor_id = '$id'";
$result = mysqli_query($conn , $query);
$counter = 1;


?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Azhar University</title>
        <link rel="stylesheet" href="general/css/bootstrap-reboot.min.css">
        <link rel="stylesheet" href="general/css/bootstrap.min.css">
        <link rel="stylesheet" href="general/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="css/edit.css">

    </head>
    <body class="bg-info">
        <!-- ******************************
        ******************************
        *** Navbar
        ******************************
        ****************************** -->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container">
                    <a class="navbar-brand  mb-0 h1" href="#">
                        <img src="general/images/azhar-logo.jpg" width="30" height="30" class="d-inline-block align-top rounded-circle" alt="azhar-logo">
                        Azhar University
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <!-- <li class="nav-item active">
                                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                            </li> -->
                            <li class="nav-item float-right">
                                <a class="nav-link" href="#">History</a>
                            </li>
                            <li class="nav-item float-right">
                                <a class="nav-link" href="#">Sections</a>
                            </li>
                            <li class="nav-item float-right">
                                <a class="nav-link" href="#">Courses</a>
                            </li>
                            <li class="nav-item float-right">
                                <a class="nav-link" href="#">Professors</a>
                            </li>
                        </ul>
                       
                    </div>
            </div>
        </nav>

        <!-- start the solutions box -->
        <section class="solutionsBox">
            <div class="container">
                
                <div class="accordion">
                	<?php foreach ($result as $row ): ?>
	                    <div 
							<?php if ($counter == 1): ?>
								class="qone"
							<?php else: ?>
								class = "qthree"
							<?php endif; ?>
							>
	                        
							<?php if ($row['academic_year'] == 1){
									echo "<h3>Preparatory</h3>";
								} elseif ($row['academic_year'] == 2) {
									echo "<h3>First Year</h3>";
								} elseif ($row['academic_year'] == 3) {
									echo "<h3>Second Year</h3>";
								}elseif ($row['academic_year'] == 4) {
									echo "<h3>Third Year</h3>";
								}elseif ($row['academic_year'] == 5) {
									echo "<h3>Third Year</h3>";
								}
							?>

	                        <p class="test">
								
								<?php $course_name = $row['course_name'];
								    $id = $row['id'];
								?>

								<a class="link link--yaku scroll" href="<?php echo "process.php?id=".$id ?>">
											
									<?php for ($i = 0 ; $i < strlen($course_name) ; $i++):?><span><?php echo$course_name{$i};?></span><?php endfor;?>
												
								</a>
								
							</p>
							<?php $counter++ ?>
	                        
	                    </div>
	                    <?php endforeach; ?>

	                    
	                  
                </div>
            </div>
            <div class="arrows">
                <span class="first"></span>
                <span class="second"></span>
                <span class="third"></span>
                <span class="fourth"></span>
            </div>
        </section>
        <div class="clearfix"></div>
        <!-- End the solutions box -->
       
        

        <script src="general/js/jquery-3.2.1.min.js"></script>
        <script src="general/js/popper.min.js"></script>
        <script src="general/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
    </body>
</html>
