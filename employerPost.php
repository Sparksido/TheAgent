<!DOCTYPE html> 
<head> 
	<link type="text/css" rel="stylesheet" href="agentstyle.css"/> 
</head>
<body>
		
	<div class = "theHeader">
    	<h1>TheAgent</h1>
    </div>

    <form id = "rank" method = "post">
    	Position<br><input type = "text" name = "position"></input><br><br>
		Requirements<br><textarea type = "text" name = "requirements"></textarea><br><br>
		Job Description<br><textarea type = "text" name = "jobdes"></textarea><br><br>
		Category<br><input type = "text" name = "category"></input><br><br>
		Deadline<br><input type = "text" name = "deadline"><br><br>
		<input type = "submit" name = "submit" value = "Post"></input>
    </form>
</body>

<?php 

$host = "localhost";
$user = "root";
$database = "theagent";
$password = "";
$connect = mysqli_connect($host,$user,$password,$database);

session_start(); 
$company = $_SESSION['company']; 
$position = "";
$requirements = "";
$jobd = "";
$filetitle = "";
$category = "";
$count = "";
$postdate = date('y/m/d');

if(isset($_POST['position']) && ($_POST['position'] != "")){
	$position = $_POST['position'];
	$requirements = $_POST['requirements'];
	$jobd = $_POST['jobdes'];
	$category = $_POST['category'];
	$deadline = $_POST['deadline'];
	$filetitle = 'files/'.$company."_".$position;
	$denote = fopen($filetitle.'.txt','a');
 	$store = fwrite($denote,$position."_".$requirements."_".$jobd);
	$loader = "INSERT INTO jobs (company,jobTitle,fileName,category,count,postDate,deadline) VALUES ('$company','$position','$filetitle','$category','$count','$postdate','$deadline')"; 
	mysqli_query($connect,$loader);

	header('Location: successPage.php');

}else{
	echo "please enter the job title";
}








?> 