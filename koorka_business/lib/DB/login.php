<?php
session_start();
require 'connection.php';


$username = $_POST['username'];
$password = $_POST['password'];

mysqli_select_db($db);

$query="SELECT * FROM users WHERE email='$username' AND pass='$password'";

$result = mysqli_query($conn, $query);

$res = array();

while($row = mysqli_fetch_assoc($result)){
 
$res = json_encode($row);

echo $res;
}

mysqli_close($conn);
?>
