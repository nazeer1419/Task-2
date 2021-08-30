<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "robot_arm";

if(isset($_POST["stop"])) {
	$stop = 1;
	$forward = 0;
	$backward = 0;
	$right = 0;
	$left = 0;
} elseif(isset($_POST["forward"])) {
	$stop = 0;
	$forward = 1;
	$backward = 0;
	$right = 0;
	$left = 0;
} elseif(isset($_POST["backward"])) {
	$stop = 0;
	$forward = 0;
	$backward = 1;
	$right = 0;
	$left = 0;
} elseif(isset($_POST["right"])) {
	$stop = 0;
	$forward = 0;
	$backward = 0;
	$right = 1;
	$left = 0;
} elseif(isset($_POST["left"])) {
	$stop = 0;
	$forward = 0;
	$backward = 0;
	$right = 0;
	$left = 1;
} 

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

$conn = new mysqli($servername, $username, $password, $dbname) or die("Unable to connect to database: ");

$sql = "UPDATE arm_base SET 
stop_='$stop',
forward_='$forward',
backward_='$backward',
right_='$right',
left_='$left'
WHERE ID='1'";

if(mysqli_query($conn, $sql) === TRUE) {
	echo "Updated successfully" .mysqli_error($conn);
} else {
	echo "Failed to update";
}

mysqli_close($conn);
?>