<?php
require_once "pdo.php";
			
			$Email=$_POST["Email"];
			$Password2=$_POST["My_Password"];

			
 	$stmt = $pdo->query("SELECT * FROM Creataccount WHERE Email='$Email' AND My_Password='$Password2'");
		if($row = $stmt->fetch(PDO::FETCH_ASSOC))
		header("location:http://localhost/نوادي مصر/home.html?coustmer_id=".$row['id']);
		else
		die("your password don't match with your Email"); 

		



?>