<?php
session_start();
$username="";
$db=mysqli_connect('localhost', 'root', '', 'registration');
if (isset($_POST['knowscore'])) {
$username = $_SESSION['username'];
$user_check_query = "SELECT * FROM healthdata WHERE username='$username' LIMIT 1";
$result = mysqli_query($db, $user_check_query);
$user = mysqli_fetch_assoc($result);

if ($user) { // if user exists
  if ($user['username'] === $username) {
    $healthscore=$user['hs'];
    $_SESSION['username'] = $username;
  	$_SESSION['success'] = "Your health score is $healthscore ";
    $_SESSION['healthy']= "health score 50-70: HEALTHY";
    $_SESSION['unhealthy1']= "health score >70: UNHEALTHY";
    $_SESSION['unhealthy2']= "health score <50: UNHEALTHY";
  	header('location: index.php');
  }

}
}
?>
