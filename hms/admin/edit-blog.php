<?php
session_start();
error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();
$did=intval($_GET['id']);

if(isset($_POST['upload']))
{
	$file=$_FILES['photo'];

	$filename=$file['name'];
	$filepath=$file['tmp_name'];
	$fileerror=$file['error'];

	if($fileerror==0){
		$destfile='upload/'.$filename;
		move_uploaded_file($filepath,$destfile);
		//$insertquery= "INSERT INTO ";
	}
	$dest='upload/'.$filename;
	$sql=mysqli_query($con,"Update allblogs set pic='$dest' where blog_sno='$did'");
if($sql)
{
echo "<script>alert('Picture updated Successfully');</script>";

}

}


if(isset($_POST['submit']))
{
$usname=$_POST['username'];
$mail=$_POST['email'];
$title=$_POST['blog_title'];
$stitle=$_POST['blog_subtitle'];
$content=$_POST['blog_content'];
$sql=mysqli_query($con,"Update allblogs set username='$usname',email='$mail',blog_title='$title',blog_subtitle='$stitle',blog_content='$content' where blog_sno='$did'");
if($sql)
{
$msg="blog Details updated Successfully";

}
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Admin | Edit Blogs</title>
		
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
		<link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />


	</head>
	<body>
		<div id="app">		
<?php include('include/sidebar.php');?>
			<div class="app-content">
				
						<?php include('include/header.php');?>
						<!-- start: MENU TOGGLER FOR MOBILE DEVICES -->
					
				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
						<section id="page-title">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle">Admin | Edit blog Details</h1>
																	</div>
								<ol class="breadcrumb">
									<li>
										<span>Admin</span>
									</li>
									<li class="active">
										<span>Edit blog Details</span>
									</li>
								</ol>
							</div>
						</section>
						<!-- end: PAGE TITLE -->
						<!-- start: BASIC EXAMPLE -->
						<div class="container-fluid container-fullw bg-white">
							<div class="row">
								<div class="col-md-12">
									<h5 style="color: green; font-size:18px; ">
<?php if($msg) { echo htmlentities($msg);}?> </h5>
									<div class="row margin-top-30">
										<div class="col-lg-8 col-md-12">
											<div class="panel panel-white">
												<div class="panel-heading">
													<h5 class="panel-title">Edit blog info</h5>
												</div>
												<div class="panel-body">
									<?php $sql=mysqli_query($con,"select * from allblogs where blog_sno='$did'");
while($data=mysqli_fetch_array($sql))
{
?>
<h4><?php echo htmlentities($data['username']);?>'s Profile</h4>
<div class="left "><img id="doc_img" style="max-width: 500px;max-height: 500px;" src="<?php echo './'.htmlentities($data['pic']);?>" alt="null" ></div>
<hr />
													<form role="form" name="adddoc" method="post" onSubmit="return valid();">
														
<div class="form-group">
															<label for="username">
																 User Name
															</label>
	<input type="text" name="username" class="form-control" value="<?php echo htmlentities($data['username']);?>" >
														</div>


<div class="form-group">
															<label for="email">
                                                            Email Address
															</label>
    <input type="text" name="email" class="form-control" value="<?php echo htmlentities($data['email']);?>" >
														</div>
<div class="form-group">
															<label for="blog_title">
																 Blog title
															</label>
		<input type="text" name="blog_title" class="form-control" required="required"  value="<?php echo htmlentities($data['blog_title']);?>" >
														</div>
	
<div class="form-group">
									<label for="blog_subtitle">
																Blog subtitles
															</label>
					<input type="text" name="blog_subtitle" class="form-control" required="required"  value="<?php echo htmlentities($data['blog_subtitle']);?>">
														</div>
<div class="form-group">
									<label for="blog_content">
																 Blog content
															</label>
					<input type="text" name="blog_content" class="form-control" required="required"  value="<?php echo htmlentities($data['blog_content']);?>">
														</div>
														
														<?php } ?>
														
														
														<button type="submit" name="submit" class="btn btn-o btn-primary">
															Update
														</button>
													</form>

<form role="form" name="adddoc" method="post" enctype="multipart/form-data">
					<div class="form-group">
									<label for="fess">
																 <br> Blog thumbnail 
															</label>
					<input type="file" name="photo" class="form-control form-control ChangeEvntImage UploadEventImage tab5-required-check"  value="<?=$data['pic']?>" id="image" >
				
														</div>
											<button type="submit" name="upload" class="btn btn-o btn-primary">
															upload
														</button>
													</form>
										
												</div>
											</div>
										</div>
											
											</div>
										</div>
									<div class="col-lg-12 col-md-12">
											<div class="panel panel-white">
												
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- end: BASIC EXAMPLE -->
			
					
					
						
						
					
						<!-- end: SELECT BOXES -->
						
					</div>
				</div>
			</div>
			<!-- start: FOOTER -->
	<?php include('include/footer.php');?>
			<!-- end: FOOTER -->
		
			<!-- start: SETTINGS -->
	<?php include('include/setting.php');?>
			<>
			<!-- end: SETTINGS -->
		</div>
		<!-- start: MAIN JAVASCRIPTS -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
		<script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
		<script src="vendor/autosize/autosize.min.js"></script>
		<script src="vendor/selectFx/classie.js"></script>
		<script src="vendor/selectFx/selectFx.js"></script>
		<script src="vendor/select2/select2.min.js"></script>
		<script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		<script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: CLIP-TWO JAVASCRIPTS -->
		<script src="assets/js/main.js"></script>
		<!-- start: JavaScript Event Handlers for this page -->
		<script src="assets/js/form-elements.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->
	</body>
</html>
