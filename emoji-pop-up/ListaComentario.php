<?php
require_once ("dbconect.php");
$record_set = array();
$sql = "SELECT * FROM tbl_comentarios ORDER BY co_id asc";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        array_push($record_set, $row);
    }
}
echo json_encode($record_set);
?>