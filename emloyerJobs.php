<!doctype html>
<head>
<link type="text/css" rel="stylesheet" href="agentstyle.css"/> 
</head>
<body>

	<div class = "theHeader">
    	<h1>TheAgent</h1>
    </div>
</body>

<?php 

session_start();

$host = "localhost";
$user = "root";
$database = "theagent";
$password = "";
$connect = mysqli_connect($host,$user,$password,$database);

$companyName = $_SESSION['company'];
$inquire;

$jobs = "SELECT * FROM jobs WHERE company = '$companyName'";
if($enquire = mysqli_query($connect, $jobs)){
	echo 'query successful';
	echo "<br>";
}

$list;

while($list = mysqli_fetch_assoc($enquire)){
	echo $list['jobTitle'];
	echo "<br>";
}


?>