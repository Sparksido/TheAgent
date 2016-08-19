<!doctype html>
<head>
    <link type="text/css" rel="stylesheet" href="agentstyle.css"/> 
</head>
<body>	

	<div class = "theHeader">
    	<h1>TheAgent</h1>
    </div>		

	<form method = "post" id = "studInfo" enctype="multipart/form-data">
		<br>Name: <input type = "text" name = "name"></input><br>
		<br>Qualification: <input type = "text" name = "qualification"></input><br>
        <br>Category:<input type = "text" name = "category"></input><br> 
        <br>Username:<input type = "text" name = "username"></input><br>
        <br>Password:<input type = "text" name = "password"></input><br>
 		<br>Email:<input type = "text" name = "email"></input><br>
		<br>Skills: <input type = "text" name = "skill1"></input><br>
		<p>     </p><pre></pre><input type = "text" name = "skill2"></input><br>
		<p>     </p><input type = "text" name = "skill3"></input><br>
		<p>     </p><input type = "text" name = "skill4"></input><br>
		<br>Resume: <input type = "file" name = "loadit"><br> 
		<br>Omang: <input type = "file" name = "loadit2"><br>
		<br><input type = "submit" name = "submit"></input>

	</form>
</body>

<?php

$user = "root";
$host = "localhost";
$pass = "";
$database = "theagent";

$connect = mysqli_connect($host,$user,$pass,$database);

session_start();


	$name = "";
	$qualification = "";
    $category = "";
    $username = ""; 
    $password = "";
    $email = "";
	$skill1 = "";
	$skill2 = "";
	$skill3 = "";
	$skill4 = "";

	if(isset($_POST["name"]) && ($_POST["name"] != "") && isset($_POST["username"]) && ($_POST["username"] != "") && isset($_POST["password"]) && ($_POST["password"] != "")){

	 	$name = $_POST["name"];
		$username = $_POST["username"]; 
    	$password = $_POST["password"];
		if(isset($_POST["qualification"])) $qualification = $_POST["qualification"]; 
    	if(isset($_POST["category"])) $category = $_POST["category"];
    	if(isset($_POST["email"])) $email = $_POST["email"];
		if(isset($_POST["skill1"])) $skill1 = $_POST["skill1"]; 
		if(isset($_POST["skill2"])) $skill2 = $_POST["skill2"];
		if(isset($_POST["skill3"])) $skill3 = $_POST["skill3"];
		if(isset($_POST["skill4"])) $skill4 = $_POST["skill4"];

		$skills = array($skill1,$skill2,$skill3,$skill4);
		$serializedSkills = serialize($skills);
		echo $serializedSkills;


    	if(isset($_FILES['loadit'])){
    		$newFileName = $username."-"."resume.docx";
	    	$temp_name = $_FILES["loadit"]["tmp_name"];
	    	//move_uploaded_file($temp_name,'files/'.$_FILES["loadit"]["name"]);
	    	move_uploaded_file($temp_name,'appfiles/'.$newFileName);
	    	$root = "files/";
        	$directory = $root.$_FILES["loadit"]["name"];
        	echo nl2br("\n");
        	echo $directory;
    	}

    	$stuload = "INSERT INTO applicants(name,category,qualifiation,fileName,email,skills) VALUES ('$name','$category','$qualification','$directory','$email','$serializedSkills')";
    	mysqli_query($connect, $stuload);

    	$stuauth = "INSERT INTO appauth(name,username,password) VALUES ('$name','$username','$password')";
    	mysqli_query($connect, $stuauth);

    	$_SESSION['kind'] = $category;
 		$_SESSION['called'] = $name;

    	header('Location: welcomePage.php');

    }else{ 
    	echo "Please enter all required fields"; 
    } 
     
    
?>