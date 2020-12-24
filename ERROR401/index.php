<?php
  session_start();

  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
  if (isset($_GET['insert'])) {

  	header("location: insertion.php");
  }
  if (isset($_GET['update'])) {

  	header("location: update.php");
  }
  if (isset($_GET['knowscore'])) {

  	header("location: knowscore.php");
  }
?>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div class="header">
<img align="center" class="logo" src="LOGOFINAL.png"></a>
	<h2>MEDSCORE</h2>
	<br>
</div>
<div class="content">
  	<!-- notification message -->
  	<?php if (isset($_SESSION['success'])) : ?>
      <div class="error success" >
      	<h3>
          <?php
          	echo $_SESSION['success'];
          	unset($_SESSION['success']);
          ?>
      	</h3>
      </div>
  	<?php endif ?>
    <?php if (isset($_SESSION['healthy'])) : ?>
      <div class="error success" >
        <h3>
          <?php
            echo $_SESSION['healthy'];
            unset($_SESSION['healthy']);
          ?>
        </h3>
      </div>
    <?php endif ?>
    <?php if (isset($_SESSION['unhealthy1'])) : ?>
      <div class="error success" >
        <h3>
          <?php
            echo $_SESSION['unhealthy1'];
            unset($_SESSION['unhealthy1']);
          ?>
        </h3>
      </div>
    <?php endif ?>
    <?php if (isset($_SESSION['unhealthy2'])) : ?>
      <div class="error success" >
        <h3>
          <?php
            echo $_SESSION['unhealthy2'];
            unset($_SESSION['unhealthy2']);
          ?>
        </h3>
      </div>
    <?php endif ?>

    <!-- logged in user information -->
    <?php  if (isset($_SESSION['username'])) : ?>
    	<h3 align="center"><strong>WELCOME <?php echo $_SESSION['username']; ?></strong></h3>
		<br>
      <p align="center"> <a href="index.php?logout='1'" style="color: red;">logout</a> </p>
	  <br>
      <p align="center"> <a href="index.php?insert='1'" style="color: darkblue;">insert</a> </p>
	  <br>
      <p align="center"> <a href="index.php?update='1'" style="color: darkviolet;">update</a> </p>
	  <br>
      <p align="center"> <a href="index.php?knowscore='1'" style="color: black;">know score if already provided data</a> </p>
    <?php endif ?>
</div>
 <footer align="center">
  <p>Created by TEAM ERROR 401</p>
  <p>Email: #######@gmail.com</p>
  <p>Phone : 123-456-7890</p>
</footer> 
</body>
</html>
