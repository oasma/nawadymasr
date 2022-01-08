

<?php
require_once "pdo.php";

$coustmer_id="1";
$club_id=$_POST['club_id'];
$duration=$_POST['duration'];







$stmt = $pdo->query("INSERT INTO `club_signs`(`coustmer_id`, `club_id`, `duration`) VALUES ('$coustmer_id','$club_id','$duration')");
header("location:http://localhost/نوادي مصر/home.html?coustmer_id=".$coustmer_id);


?>