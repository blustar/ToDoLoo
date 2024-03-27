<?php
// get_task_counts.php
include "connect.php";

$response = [
    'weekly_count' => 0,
    'all_time_count' => 0
];

// Get weekly count
$week_start = date('Y-m-d', strtotime('last Monday'));
$sql_weekly = "SELECT COUNT(*) as weekly_count FROM task_status WHERE user_id = ? AND status = 'done' AND DATE(timestamp) >= ?";
$stmt = $conn->prepare($sql_weekly);
$stmt->bind_param("is", $user_id, $week_start);
$stmt->execute();
$result = $stmt->get_result();
if ($row = $result->fetch_assoc()) {
    $response['weekly_count'] = $row['weekly_count'];
}

// Get all-time count
$sql_all_time = "SELECT COUNT(*) as all_time_count FROM task_status WHERE user_id = ? AND status = 'done'";
$stmt = $conn->prepare($sql_all_time);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$result = $stmt->get_result();
if ($row = $result->fetch_assoc()) {
    $response['all_time_count'] = $row['all_time_count'];
}

$stmt->close();
$conn->close();

echo json_encode($response);
?>
