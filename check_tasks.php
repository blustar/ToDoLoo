<?php
// check_tasks.php
include "connect.php";

// Get records for today
$today = date('Y-m-d');
$user_id = $_GET['user_id']; // The ID of the active user
$sql = "SELECT task_name, status FROM task_status WHERE DATE(timestamp) = ? AND user_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("si", $today, $user_id);
$stmt->execute();
$result = $stmt->get_result();

$tasks = [];
while($row = $result->fetch_assoc()) {
  $tasks[$row['task_name']] = $row['status'];
}

$stmt->close();
$conn->close();

// Send JSON response back to the client
echo json_encode($tasks);
?>
