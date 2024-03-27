<?php
// get_badges.php

// Database connection setup (adjust as per your database configuration)
date_default_timezone_set('America/New_York');

// Database credentials
$host = 'localhost';
$db   = 'allowance';
$user = 'allowance';
$pass = '!Allowance!2020';
$charset = 'utf8mb4';

// Set up the DSN (Data Source Name)
$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

// Establish a connection to the database
try {
    $pdo = new PDO($dsn, $user, $pass, $options);
} catch (\PDOException $e) {
    throw new \PDOException($e->getMessage(), (int)$e->getCode());
}

// Get the user ID from the request
$userId = $_GET['user_id'];

// Prepare the SQL query
$sql = "
    SELECT 
        b.badge_id, 
        b.filename, 
        b.video, 
        b.status, 
        CASE WHEN ub.badge_id IS NOT NULL THEN TRUE ELSE FALSE END AS earned
    FROM 
        badges b
    LEFT JOIN 
        user_badges ub ON b.badge_id = ub.badge_id AND ub.user_id = :userId
    WHERE 
        b.status = 1
";

// Prepare and execute the statement
$stmt = $pdo->prepare($sql);
$stmt->execute(['userId' => $userId]);

// Fetch the results
$badges = $stmt->fetchAll();


// Encode the results as JSON and output them
header('Content-Type: application/json');
echo json_encode($badges);

?>
