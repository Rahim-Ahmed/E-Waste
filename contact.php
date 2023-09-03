<?php

define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS' ,'');
define('DB_NAME', 'hms');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}



if(isset($_POST['submit']))
{
$name=$_POST['fullname'];
$email=$_POST['emailid'];
$mobileno=$_POST['mobileno'];
$dscrption=$_POST['description'];
$query=mysqli_query($con,"insert into tblcontactus(fullname,email,contactno,message) value('$name','$email','$mobileno','$dscrption')");
echo "<script>alert('Your information succesfully submitted');</script>";
echo "<script>window.location.href ='contact.php'</script>";

}


?>



<?php include("header.php") ?>



<div class="d-flex pb-5 justify-content-center  bg-light flex-column text-center">
<h2 class="fw-bold  pt-5 pb-3" >Contact Us</h2>

            <form name="contactus" method="post">
                            <div class="form-group">
                                <label for="formGroupExampleInput" style="font-weight: bold;" >NAME:</label>
                                <input class="w-50" style="height:40px" type="text" name="fullname" class="form-control" id="formGroupExampleInput" placeholder="Enter your name">
                            </div>
                            <div class="form-group">
                                <label for="formGroupExampleInput" style="font-weight: bold;" >Email:</label>
                                <input class="w-50" style="height:40px" type="text" name="emailid" class="form-control" id="formGroupExampleInput" placeholder="example@example.com">
                            </div>
                            <div class="form-group">
                                <label for="formGroupExampleInput" style="font-weight: bold;" >Mob no:</label>
                                <input class="w-50" style="height:40px" type="text" name="mobileno" class="form-control" id="formGroupExampleInput" placeholder="+880 ">
                            </div>
                            <div class="form-group">
                                <label for="formGroupExampleInput" style="font-weight: bold; position: relative; top:-40px" >Description:</label>
                                <textarea class="w-50" style="height:80px"  name="description"  type="text" class="form-control" id="formGroupExampleInput" placeholder="- write here"></textarea>
                            </div>

						   <div class="p-2">
						   		<span><input class="btn btn-info" type="submit" name="submit" value="Submit"></span>
						  </div>
				</form>
</div>


<?php include("footer.php") ?>