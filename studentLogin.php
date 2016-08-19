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

	<form method = "post" id = "studJoin" action = "studentSignup.php">
        <input type = "submit" value = "sign up"></input>
    </form>

</body>

<?php

$host = "localhost";
$user = "root";
$database = "theagent";
$password = "";
$connect = mysqli_connect($host,$user,$password,$database);

$name = "";
$password = "";
$key = array();
$type = "";
	

session_start();

if(isset($_POST["username"]) && isset($_POST["password"])){
	$name = $_POST["username"];
	$password = $_POST["password"];

	$_SESSION["called"] = $name;
	
	$query = "SELECT * FROM appauth WHERE username = '$name'";
	if($data = mysqli_query($connect, $query))
	$key = mysqli_fetch_assoc($data);
	$offname = $key['name'];
	
	$query2 = "SELECT * FROM applicants WHERE name = '$offname'";
	if($data2 = mysqli_query($connect, $query2))
	$key2 = mysqli_fetch_assoc($data2);
	
	if($type = $key2['category']){
		$_SESSION['kind'] = $type;
	}

	if($password = $key['password']){
		$_SESSION['offCalled'] = $offname;
		header('Location: studenthome.php');
	}else{
		echo "wrong username or password";
	}
}
	
?>