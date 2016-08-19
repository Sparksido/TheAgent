<!DOCTYPE html>
<head>
	<link type="text/css" rel="stylesheet" href="agentstyle.css"/> 
</head>
<body>

	<div class = "theHeader">
    	<h1>TheAgent</h1>
    </div>

	<form method = "post" id = "studGate">
		Username: <input type = "text" name = "username"></input><br><br>
		Password: <input type = "text" name = "password"></input><br><br>
				  <input type = "submit"></input>
	</form>

	<form id = "studJoin" action = "employerSignup.php">
        <input type = "submit" value = "sign up"></input>
    </form>

</body>

<?php

$host = "localhost";
$user = "root";
$database = "theagent";
$password = "";
$connect = mysqli_connect($host,$user,$password,$database);

session_start();

$company = "";

if(isset($_POST["username"]) && ($_POST["username"] != "") && isset($_POST["password"]) && ($_POST["password"] != "")){

	$name = $_POST["username"];
	$password = $_POST["password"];
	$company = $name;


	$findstring = "SELECT * FROM empauth WHERE username = '$name'";
	if($info = mysqli_query($connect, $findstring))
		$data = mysqli_fetch_assoc($info);

	if($password == $data["password"]){
		header('Location: employerHome.php');
	}else{
		echo "Enter the right credentials";

	}
}else{
	echo "Please enter all fields";
}

$_SESSION['company'] = $company;

?>