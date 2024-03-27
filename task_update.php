<?php
// task_update.php
include "connect.php";

/// Get task status, name, and user_id from the request
$task_name = $_POST['task_name'];
$status = $_POST['status']; // 'done' or 'not_done'
$user_id = $_POST['user_id']; // The ID of the active user
$timestamp = date('Y-m-d H:i:s');

// Insert new status into the database with the user_id
$sql = "INSERT INTO task_status (task_name, status, user_id, timestamp) VALUES (?, ?, ?, ?)";

$stmt = $conn->prepare($sql);
$stmt->bind_param("ssis", $task_name, $status, $user_id, $timestamp);
$stmt->execute();

//echo "New record created successfully";

$stmt->close();
$conn->close();
?>
