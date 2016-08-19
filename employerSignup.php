<!DOCTYPE html>
<head>
	<link type="text/css" rel="stylesheet" href="agentstyle.css"/> 
</head>
<body>
	<div class = "theHeader">
    	<h1>TheAgent</h1>
    </div>

	<form method = "post" id = "empInfo">
		<br>Name:<input type = "text" name = "name"></input><br>
		<br>Category:<input type = "text" name = "category"></input><br> 
		<br>Product: <input type = "text" name = "product"></input><br>
		<br>Username:<input type = "text" name = "username"></input><br>
    	<br>Password:<input type = "text" name = "password"></input><br>
    	<br>Link:<input type = "text" name = "link"></input><br> 
		<br><input type = "submit" name = "submit"></input> 
	</form>

</body>

<?php 
 
$host = "localhost";
$user = "root";
$database = "theagent";
$password = "";
  
$connect = mysqli_connect($host, $user, $password, $database);

session_start();

$name = "";
$category = "";
$username = "";  
$password = ""; 
$link = "";
 
if(isset($_POST["name"]) && ($_POST["name"] != "") && isset($_POST["username"]) && isset($_POST["password"]) && ($_POST["password"] != "")){
 
 	$name = $_POST["name"];
 	$username = $_POST["username"]; 
	$password = $_POST["password"];  
	if(isset($_POST["product"])) $product = $_POST["product"]; 
	if(isset($_POST["category"])) $category = $_POST["category"]; 
	if(isset($_POST["link"])) $link = $_POST["link"]; 
 
	$empload = "INSERT INTO employers(name, category, product, link) VALUES ('$name','$category','$product','$link')";
 	mysqli_query($connect, $empload); 
  
 	$compload = "INSERT INTO empauth(name, username, password) VALUES ('$name','$username','$password')";
  	mysqli_query($connect, $compload); 

  	$_SESSION['called'] = $name;
  
  	header('Location: employerwelcome.php');
  
}else{  
  	echo "Please enter all required fields";
} 

?>