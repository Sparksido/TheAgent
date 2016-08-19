<!DOCTYPE html>
<head>
	<link type="text/css" rel="stylesheet" href="agentstyle.css"/> 
</head>
<body>

	<div class = "theHeader">
    	<h1>TheAgent</h1>
    </div>

	<h1 id = "username">
		<?php
			session_start();
			echo $_SESSION["called"]; echo $_SESSION['kind'];
		?>
	</h1><br><br>
	<form action = "jobList.php"> 
		<button action = "jobList.php" id = "theList" >Jobs</button>
	</form>
		<button action = "profile.php" id = "theProfile">Profile</button><br><br>
		<button action = "blogs.html" id = "theNews">Blogs</button>
		<button action = "notifications.php" id = "theNots">Notifications</button>

</body>

<?php

	
?>