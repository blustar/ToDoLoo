<?php
include "connect.php";

$sql = "SELECT * FROM sections";
$result = $conn->query($sql);

$sections = [];
while($row = $result->fetch_assoc()) {
    $sections[] = $row;
}

$conn->close();

echo json_encode($sections);
?>
