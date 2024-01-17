<?php
include 'db_connect.php';
$qry = $conn->query("SELECT * FROM vendor_list where id = ".$_GET['id'])->fetch_array();
foreach($qry as $k => $v){
	if($k == 'title')
		$k = 'stitle';
	$$k = $v;
}
include 'new_vendor.php';
?>