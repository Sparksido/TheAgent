<!doctype html>
<head>
	<link type="text/css" rel="stylesheet" href="agentstyle.css"/> 
</head>
<body>
	<div class = "theHeader">
    	<h1>TheAgent</h1>
    </div>		

    <?php session_start(); echo "You have successfully signed up  ".$_SESSION['called'].", press Continue to go home"; ?>

	<form action = "employerHome.php">
		<input type = "submit" id ="signupSuccess" value = "Continue">	
			</input>
	</form>

</body>
