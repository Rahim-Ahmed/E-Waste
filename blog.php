
<?php
define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS' ,'');
define('DB_NAME', 'lms');
$conn = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
$serverName = "localhost";
$userName = "root";
$password = "";
$dataBase = "hms";
$tableName = "allblogs";

  $fetch = false;
  $sql = "SELECT * FROM  $tableName ORDER BY `allblogs`.`time` DESC;";
  $result = mysqli_query($conn,$sql);
  
  $aff = mysqli_affected_rows($conn);
  if ($aff<1) {
      $fetch = false;
  }
  else{
      $fetch = true;
  }
  
?>

  
<?php include("header.php") ?>

    <div id= "blogs">


      <?php
          if($fetch){

              while($data = mysqli_fetch_object($result)){

              
                
                $blogSno = $data->{'blog_sno'};
                $username = $data->{'username'};
                $email = $data->{'email'};
                $blogTitle = $data->{'blog_title'};
                $blogSubtitle = $data->{'blog_subtitle'};
                $pic = $data->{'pic'};

                $blogContent = $data->{'blog_content'};
                $blogLen = strlen($blogContent);
                $mainContent = substr($blogContent,0,200);
                $readMore = substr($blogContent,200,$blogLen);
                $blogTime = $data->{'time'};
                $newDate = date("j-F Y", strtotime($blogTime));
                $newTime = date("l, g:i a", strtotime($blogTime));

                echo
                "<div class='card'>
                    <div class='image-data'>
                    <div class='background-image' style='background: url(" ?>
                    
                    <?php echo './hms/admin/'.$pic;?>
                    <?php     
                echo ") center no-repeat;'></div>
                    <div class='publication-details'>
                        <a href='#' class='author'><i class='fas fas-user'></i>$username</a>
                        <span class='date'><i class='fas fa-calender-alt'></i>$email</span>
                        <span class='date'><i class='fas fa-calender-alt'></i>$newDate</span>
                        <span class='date'><i class='fas fa-calender-alt'></i>$newTime</span>
                    </div>
                    </div>
                    <div class='post-data'>
                    <h1 class='title'>$blogTitle</h1>
                    <h2 class='subtitle'>$blogSubtitle</h2>
                    <p class='description'>
                        $mainContent<span class='dots'>.........</span><span class='more-text'>$readMore</span>                        
                    </p>
                    
                    <div class='cta'>  
                        <button class='read-more-btn' onclick='readMore(this)' >Read more</button>  
                    </div>
                    </div>
                </div>";

            }
          }
        ?>
      
      
    </div>

   


<?php include("footer.php") ?>

