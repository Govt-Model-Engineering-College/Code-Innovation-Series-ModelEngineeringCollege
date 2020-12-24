<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>Registration system </title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="header">
  <img align="center" class="logo" src="LOGOFINAL.png"></a>
  	<h2>Login</h2>
  </div>
<br>
  <form method="post" action="login.php">
  	<?php include('errors.php'); ?>
  	<div class="input-group">
  		<label>Username</label>
  		<input type="text" name="username" >
  	</div>
  	<div class="input-group">
  		<label>Password</label>
  		<input type="password" name="password">
  	</div>
	<br>
  	<div class="input-group">
  		<button type="submit" class="btn" name="login_user">Login</button>
  	</div>
	<br>
  	<p align="center">
  		Not yet a member? <a href="register.php">Sign up</a>
  	</p>
  </form>
   <footer align="center">
  <p>Created by TEAM ERROR 401</p>
  <p>Email: #######@gmail.com</p>
  <p>Phone : 123-456-7890</p>
</footer>
</body>
</html>
