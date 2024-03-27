<?php
// Database connection parameters
$servername = "localhost";
$username = "allowance";
$password = "!Allowance!2020";
$dbname = "allowance";

try {
    $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $userId = isset($_POST['userId']) ? $_POST['userId'] : null;
        $photoId = isset($_POST['photoId']) ? $_POST['photoId'] : null;

        if ($userId && $photoId) {
            $stmt = $pdo->prepare("UPDATE UserProfile SET PhotoId = :photoId WHERE UserId = :userId"); // Adjust the query according to your table structure
            $stmt->execute(array(':photoId' => $photoId, ':userId' => $userId));

            echo json_encode(array('success' => true, 'message' => 'Profile photo updated successfully.'));
        } else {
            echo json_encode(array('success' => false, 'message' => 'Invalid parameters.'));
        }
    }

} catch(PDOException $e) {
    die("Error: " . $e->getMessage());
}
?>
