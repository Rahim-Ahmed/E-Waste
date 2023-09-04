<?php
session_start();
//error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();

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
	
	$sql=mysqli_query($con,"Update allblogs set pic='$destfile' where blog_sno='".$_SESSION['id']."'");
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

$file=$_FILES['photo'];

	$filename=$file['name'];
	$filepath=$file['tmp_name'];
	$fileerror=$file['error'];

	if($fileerror==0){
		$destfile='upload/'.$filename;
		move_uploaded_file($filepath,$destfile);
		$insertquery= "INSERT INTO allblogs(username,email,blog_title,blog_subtitle,blog_content,pic) values('$usname','$mail','$title','$stitle','$content','$destfile')";
		$sql=mysqli_query($con,$insertquery);
	}
	

//$sql=mysqli_query($con,"insert into allblogs(username,email,blog_title,blog_subtitle,blog_content) values('$usname','$mail','$title','$stitle','$content')");
if($sql)
{
echo "<script>alert('Blog post has added Successfully');</script>";
echo "<script>window.location.href ='manage-blog.php'</script>";

}
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Admin | Add Blog post</title>
		
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
						
				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
						<section id="page-title">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle">Admin | Add Blog post</h1>
																	</div>
								<ol class="breadcrumb">
									<li>
										<span>Admin</span>
									</li>
									<li class="active">
										<span>Add BLOG</span>
									</li>
								</ol>
							</div>
						</section>
						<!-- end: PAGE TITLE -->
						<!-- start: BASIC EXAMPLE -->
						<div class="container-fluid container-fullw bg-white">
							<div class="row">
								<div class="col-md-12">
									
									<div class="row margin-top-30">
										<div class="col-lg-8 col-md-12">
											<div class="panel panel-white">
												<div class="panel-heading">
													<h5 class="panel-title">Add blog</h5>
												</div>
												<div class="panel-body">
									
													<form role="form" name="adddoc" method="post" onSubmit="return valid();" enctype="multipart/form-data">
	
													<?php 
$sql=mysqli_query($con,"select * from admin where id='".$_SESSION['id']."'");
while($data=mysqli_fetch_array($sql))
{
?>											
								
<div class="form-group">
															<label for="username">
																 User name
															</label>
					<input type="text" name="username" class="form-control" value="<?php echo htmlentities($data['fullName']);?>" required="true">
														</div>

<div class="form-group">
															<label for="email">
																 Email address
															</label>
					<input type="text" name="email" class="form-control"  value="<?php echo htmlentities($data['username']);?>" required="true">
														</div>
														<?php } ?>

<div class="form-group">
															<label for="blog_title">
																 Blog Title
															</label>
					<input type="text" name="blog_title" class="form-control"  placeholder="Enter a title for your post" required="true">
														</div>
	
<div class="form-group">
									<label for="blog_subtitle">
									Blog SubTitle
															</label>
					<input type="text" name="blog_subtitle" class="form-control"  placeholder="Enter subtitle for your post" required="true">
														</div>

<div class="form-group">
									<label for="blog_content">
									Blog Content
															</label>
<textarea name="blog_content" class="form-control" placeholder="write content for your post"></textarea>
</div>

<div class="form-group">
									<label for="fess">
																 <br> blog's thumbnail
															</label>
					<input type="file" name="photo" class="form-control form-control ChangeEvntImage UploadEventImage tab5-required-check"  value="<?=$data['pic']?>" id="image" >
				
														</div>
														
														
														
														<button type="submit" name="submit" id="submit" class="btn btn-o btn-primary">
															Submit
														</button>
													</form>
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
