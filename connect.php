<?php
date_default_timezone_set('America/New_York');
// Database connection variables
$servername = "localhost";
$username = "allowance";
$password = "!Allowance!2020";
$dbname = "allowance";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

?>