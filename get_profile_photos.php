<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Database connection parameters
$servername = "localhost";
$username = "allowance";
$password = "!Allowance!2020";
$dbname = "allowance";

try {
    $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $pdo->query("SELECT PhotoId, PhotoURL FROM ProfilePhotos ORDER BY PhotoId DESC");
    $photos = $stmt->fetchAll(PDO::FETCH_ASSOC);

    header('Content-Type: application/json');
    echo json_encode($photos);

} catch(PDOException $e) {
    header('Content-Type: application/json');
    echo json_encode(array('error' => $e->getMessage()));
}
?>
