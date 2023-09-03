<?php error_reporting(0);?>
<header class="navbar navbar-default navbar-static-top">
					<style>
						#doc_img{
							max-width: 100%;
    						height: auto;
						}
					</style>
					<!-- start: NAVBAR HEADER -->
					<div class="navbar-header">
						<a href="#" class="sidebar-mobile-toggler pull-left hidden-md hidden-lg" class="btn btn-navbar sidebar-toggle" data-toggle-class="app-slide-off" data-toggle-target="#app" data-toggle-click-outside="#sidebar">
							<i class="ti-align-justify"></i>
						</a>
						<a class="navbar-brand" href="../../index.html">
							<div style="padding-top:5% "><a href="../../index.html"><h3><img src="../assets/images/East West.png" style="height: 35px;"> <span style="font-weight: bold;"> <span style="color:#00D9A5 ;" >EW</span>HC</span></h3></a></div>
						</a>
						<a href="#" class="sidebar-toggler pull-right visible-md visible-lg" data-toggle-class="app-sidebar-closed" data-toggle-target="#app">
							<i class="ti-align-justify"></i>
						</a>
						<a class="pull-right menu-toggler visible-xs-block" id="menu-toggler" data-toggle="collapse" href=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<i class="ti-view-grid"></i>
						</a>
					</div>
					<!-- end: NAVBAR HEADER -->
					<!-- start: NAVBAR COLLAPSE -->
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-right">
							<!-- start: MESSAGES DROPDOWN -->
							<li  style="padding-top:2% ">
								<a href="../../index.html"><h3><img src="../assets/images/East West.png" style="height: 35px;"> <span style="font-weight: bold;"> <span style="color:#00D9A5 ;" >EW</span>-Health Care</span></h3></a>
							</li>
						
						
							<li class="dropdown current-user">
								

								<a href class="dropdown-toggle" data-toggle="dropdown">
									<?php 
									$query=mysqli_query($con,"select pic from admin where id='".$_SESSION['id']."'");
									$row=mysqli_fetch_array($query);
									if($row['pic']==''){?>
										<img src="assets/images/image2.jpg" alt="null">  
									<?php } 
									   else{ ?>
										<img src=" <?php echo $row['pic']; ?> " style=" border-radius: 50%; max-width:40px; height:38px;" > 
								<?php } ?>
								 
									
									<span class="username">



									<?php $query=mysqli_query($con,"select fullName from admin where id='".$_SESSION['id']."'");
while($row=mysqli_fetch_array($query))
{
	echo $row['fullName'];
}
									?> <i class="ti-angle-down"></i></i></span>
								</a>
								<ul class="dropdown-menu dropdown-dark">
									
								
									<li>
										<a href="change-password.php">
											Change Password
										</a>
									</li>
									<li>
										<a href="logout.php">
											Log Out
										</a>
									</li>
								</ul>
							</li>
							<!-- end: USER OPTIONS DROPDOWN -->
						</ul>
						<!-- start: MENU TOGGLER FOR MOBILE DEVICES -->
						<div class="close-handle visible-xs-block menu-toggler" data-toggle="collapse" href=".navbar-collapse">
							<div class="arrow-left"></div>
							<div class="arrow-right"></div>
						</div>
						<!-- end: MENU TOGGLER FOR MOBILE DEVICES -->
					</div>
				
					
					<!-- end: NAVBAR COLLAPSE -->
				</header>
