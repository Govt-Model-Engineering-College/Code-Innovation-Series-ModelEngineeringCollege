<?php
session_start();
$username="";
$age      ="";
$weight   ="";
$sugar    ="";
$colestrol="";
$hemo       ="";
$height   ="";
$st       ="";
$et       ="";
$db = mysqli_connect('localhost', 'root', '', 'registration');
if (isset($_POST['update_user'])) {
  // receive all input values from the form
  $username = $_SESSION['username'];
  $age = mysqli_real_escape_string($db, $_POST['age']);
  $weight = mysqli_real_escape_string($db, $_POST['weight']);
  $colestrol = mysqli_real_escape_string($db, $_POST['colestrol']);
  $sugar = mysqli_real_escape_string($db, $_POST['sugar']);
  $hemo =  mysqli_real_escape_string($db, $_POST['hemo']);
  $height =  mysqli_real_escape_string($db, $_POST['height']);
  $st = mysqli_real_escape_string($db, $_POST['st']);
  $et =  mysqli_real_escape_string($db, $_POST['et']);
  $healthscore=100 + (-0.1*$colestrol-0.1*$sugar+0.4*$st+0.4*$et);



  	$query = "UPDATE healthdata SET age='$age',weight='$weight',colestrol='$colestrol',sugar='$sugar',hemo='$hemo',height='$height',st='$st',et='$et',hs='$healthscore' WHERE username='$username'";
  	mysqli_query($db, $query);

  	$_SESSION['username'] = $username;
  	$_SESSION['success'] = "Your health score is $healthscore ";
    $_SESSION['healthy']= "health score 50-70: HEALTHY";
    $_SESSION['unhealthy1']= "health score >70: UNHEALTHY";
    $_SESSION['unhealthy2']= "health score <50: UNHEALTHY";
  	header('location: index.php');

}
?>
