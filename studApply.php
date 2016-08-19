<!DOCTYPE html>
<head>
	<link type="text/css" rel="stylesheet" href="agentstyle.css"/>
</head>
<body>
	<div class = "theHeader">
    	<h1>TheAgent</h1>
    </div>

	<form method = "post" >
		<button type = "submit" id = "appliinfo1" name = "docu1">submit resume</button>
	</form>
	
	<form method = "post" >
		<button type = "submit" id = "appliinfo2" name = "docu2">submit cover letter </button>
	</form>

	<form method = "get">
		<button type = "submit" id = "appliinfo3" name = "docu3">submit Omang</button>
	</form>

	<form method = "get">
		<button type = "submit" id = "appliinfo4" name = "docu4">submit Ceritificate</button>
	</form>

	<form method = "post" action = "completionPage.php">
		<button type = "submit" id = "done" name = "donezo">complete application</button>
	</form>

</body>


<?php

$host = "localhost";
$user = "root";
$database = "theagent";
$password = "";
$connect = mysqli_connect($host,$user,$password,$database);

session_start();
echo $_SESSION['offCalled'];

//carrying variables from the previous page
$boss = "";
$vacancy = "";
$username = $_SESSION['called'];

if(isset($_POST['jc'])){
	$boss = $_POST['jc'];
	$vacancy = $_POST['rank'];
}

//initialising the document names
$resumeName = "";
$certificateName = "";
$omangName = "";
$coverLetterDirection = "";


if(isset($_POST['docu1'])){
 	$resumeName = $username."-"."resume";
}

if(isset($_GET['docu3'])){
 	$certificateName = $username."-"."omang";
}
if(isset($_GET['docu4'])){
 	$omangName = $username."-"."certificate";
}
/*if(isset($_POST['docu1'])){
 	
}*/

echo $resumeName;
echo "______";
echo $certificateName;
echo "______";
echo $omangName;

if(isset($_POST["donezo"])){
	$application = "INSERT INTO jobseekers(jobName, appName, resumeName, certificateName, omangName, coverLetterDirection) VALUES ('$vacancy','$username','$resumeName', '','','')"; 
	mysqli_query($connect,$application);
}

?>
