<?php include('server3.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>UPDATION</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="header">
    <img align="center" class="logo" src="LOGOFINAL.png"></a>
  	<h2>UPDATE DATA</h2>
  </div>
  <br>
  <form method="post" action="update.php">
    <div class="input-group">
      <label>AGE (years)</label>
      <input type="text" name="age" value="<?php echo $age; ?>">
    </div>
	<br>
    <div class="input-group">
      <label>WEIGHT (kg)</label>
      <input type="text" name="weight" value="<?php echo $weight; ?>">
    </div>
	<br>
    <div class="input-group">
      <label>CHOLESTEROL (mg/dl)</label>
      <input type="text" name="colestrol"  value="<?php echo $colestrol; ?>">
    </div>
    <br>
    <div class="input-group">
      <label>SUGAR LEVEL (mg/d)</label>
        <input type="text" name="sugar"  value="<?php echo $sugar; ?>">
   </div>
   <br>
   <div class="input-group">
     <label> HEMOGLOBIN (mg/dl)</label>
     <input type="text" name="hemo" value="<?php echo $hemo; ?>">
   </div>
   <br>
   <div class="input-group">
     <label>HEIGHT (feet)</label>
     <input type="text" name="height" value="<?php echo $height; ?>">
   </div>
   <br>
   <div class="input-group">
     <label>SLEEPING TIME (hours)</label>
     <input type="text" name="st" value="<?php echo $st; ?>">
   </div>
   <br>
   <div class="input-group">
     <label>EXERCISE TIME (hours)</label>
     <input type="text" name="et" value="<?php echo $et; ?>">
   </div>
   <br>
    </div>
    <div class="input-group">
      <button type="submit" class="btn" name="update_user">UPDATE</button>
    </div>
  </form>
   <footer align="center">
  <p>Created by TEAM ERROR 401</p>
  <p>Email: #######@gmail.com</p>
  <p>Phone : 123-456-7890</p>
</footer> 
  </body>
  </html>
