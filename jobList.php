<!DOCTYPE html>
<head>
	<link type="text/css" rel="stylesheet" href="agentstyle.css"/> 
</head>
<body>

	<div class = "theHeader">
    	<h1>TheAgent</h1>
    </div>

</body>

<?php

$user = "root";
$host = "localhost";
$password = "";
$database = "theagent";
$connect = mysqli_connect($host,$user, $password, $database);

session_start();
$field = $_SESSION['kind'];

echo  $field;

$inquiry = "SELECT * FROM jobs WHERE category = '$field'";
if($query = mysqli_query($connect, $inquiry)){

	while($data = mysqli_fetch_assoc($query)){
		$employer = $data["company"];
		$jobTitle = $data["jobTitle"];
		$closureDate = $data["deadline"];

		$filena = 'files/'.$employer.'_'.$jobTitle.'.txt';
		$internal = fopen($filena,'r'); 
		$jobDescription = fread($internal, filesize($filena));
		$jobdesc = str_replace("-","</p><p style = 'margin-top: -15px;'>",$jobDescription);
        	
		echo "<div class = 'release'>
	      		<h1 style = 'margin-top: 30px;'>$jobTitle</h1>
				<h3 style = 'margin-top: -25px;'>$employer</h3>
				<p style = 'margin-top: -15px;'>Deadline: $closureDate</p><br>
				<h3 style = 'margin-top: -25px;'>Requirements</h3>";
		echo "<p style = 'margin-top: -15px;'>".$jobdesc."</p>";
		echo "<form id = 'studapply' method = 'post' action = 'studApply.php'>
				<input type = 'hidden' name = 'rank' value = '$jobTitle'>
        		<input type = 'hidden' name = 'jc' value = '$employer'>
        		<input type = 'submit' value = 'apply' ></input>
    		  </form>";
		
	}
}else{ echo "failed"; }


?>
