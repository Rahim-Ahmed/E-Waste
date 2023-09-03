<?php
include('include/config.php');


if(!empty($_POST["doctor"]) ) 
{
 $sql=mysqli_query($con,"select vtime from doctors where id='".$_POST['doctor']."'");
 while($row=mysqli_fetch_array($sql))
 	{?>
 <option value="<?php echo htmlentities($row['vtime']); ?>"><?php echo htmlentities($row['vtime']); ?></option>
  <?php
}
}



?>

