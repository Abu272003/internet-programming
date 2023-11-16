<!DOCTYPE hmtl>
<html>
<head>
<style>
body{
background:image:url("C:\Users\abu_r\OneDrive\Pictures\secondhand.pjg.jpg");
</style>
<title>second hand good shopping</title>
</head>
<body>
<center><h1 style="color:red">SECOND HAND GOODS</h1></center>
<style>
p{color:blue;
font-size:200%;
}
</style>
<h1 style="color:red"></h1>
</head>
<body style="background-color:lightblue;">
<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
$servername="localhost";
$username="root";
$password="";
$database="secondhandgood";

$user=$_POST['user'];
$pass=$_POST['pass'];
$confirm=$_POST['confirm'];

$con= mysqli_connect($servername,$username,$password,$database);

$sql="INSERT INTO `login`(`username`,`password`,`confirm password`) VALUES('$user','$pass','$confirm')";
$result= mysqli_query($con,$sql);
if($result)
{
echo "there";
}
else
{
echo "not there";
}
}
?>
<form action="/IP/login.php" method="POST">
<p align="center">
user name:<input type="text" id="user"name="user"><br><br>
password:<input type="password"id="pass"name="pass"><br><br>
confirm password:<input type="password"id="confirm"name="confirm"><br><br>
<input type="submit" value="submit"/>
<input type="reset"value="clear all"/>
</p>
</form>
</body>
</html>
