<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "robot_arm";

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

$conn = new mysqli($servername, $username, $password, $dbname) or die("Unable to connect to database: ");

if(isset($_POST["save"])) {
	$motor1 = $_POST["motor1"];
	$motor2 = $_POST["motor2"];
	$motor3 = $_POST["motor3"];
	$motor4 = $_POST["motor4"];
	$motor5 = $_POST["motor5"];
	$motor6 = $_POST["motor6"];

	$sql = "UPDATE arm_joint SET 
	motor1='$motor1',
	motor2='$motor2',
	motor3='$motor3',
	motor4='$motor4',
	motor5='$motor5',
	motor6='$motor6'
	WHERE ID='1'";

	if(mysqli_query($conn, $sql) === TRUE) {
		echo "Updated successfully";
	} else {
		echo "Failed to update. " .mysqli_error($conn);
	}
} elseif(isset($_POST["start"])) {
	echo "Error: Cannot connect to robot arm, please check hardware or try again later";
}

mysqli_close($conn);
header("refresh:5;url=arm_joint_control.html");
exit();
?>