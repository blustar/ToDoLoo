<?php
// get_users.php
include "connect.php";

$sql = "SELECT users.*, ProfilePhotos.PhotoURL 
FROM users 
INNER JOIN UserProfile ON users.id = UserProfile.userId 
INNER JOIN ProfilePhotos ON UserProfile.PhotoId = ProfilePhotos.PhotoId;";
$result = $conn->query($sql);

$users = [];
while($row = $result->fetch_assoc()) {
  $users[] = $row;
}

$conn->close();

// Send JSON response back to the client
echo json_encode($users);
?>
