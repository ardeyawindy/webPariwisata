<?php

include('db.php');

$db = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
if ($db->connect_error) {
    http_response_code(500);
}

$begin = isset($_GET['begin']) ? $_GET['begin'] : 0;
$query = "SELECT * FROM kategori ORDER BY nama";
$sql = $db->query($query);
$data = [];
while ($row = $sql->fetch_assoc()) {
    array_push($data, $row);
}

header("Content-Type: application/json");
echo json_encode($data);
