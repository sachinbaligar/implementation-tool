<?php include 'db_connect.php' ?>
<?php
if(isset($_GET['id'])){
	$type_arr = array('',"Admin","Staff","Subscriber");
	
    $gender_arr = array('',"Please Select Gender","Male","Female",);
    $Status_arr = array('',"Please Select Status","Active","In-Active",);
	$qry = $conn->query("SELECT *,concat(lastname,', ',firstname,' ',middlename) as name FROM users where id = ".$_GET['id'])->fetch_array();
foreach($qry as $k => $v){
	$$k = $v;
}
}
?>
<div class="container-fluid">
	<table class="table">
		<tr>
			<th>Name:</th>
			<td><b><?php echo ucwords($name) ?></b></td>
		</tr>
		<tr>
			<th>Email:</th>
			<td><b><?php echo $email ?></b></td>
		</tr>
		<tr>
			<th>Contact:</th>
			<td><b><?php echo $contact ?></b></td>
		</tr>
		<th>Gender:</th>
			<td><b><?php echo $gender_arr[$gender] ?></b></td>
		</tr>
        <tr>
			<th>Status:</th>
			<td><b><?php echo $Status_arr[$Status] ?></b></td>
		</tr>
        <tr>
			<th>Created:</th>
			<td><b><?php echo $Created ?></b></td>
		</tr>
		
		<tr>
			<th>User Role:</th>
			<td><b><?php echo $type_arr[$type] ?></b></td>
		</tr>
	</table>
</div>
<div class="modal-footer display p-0 m-0">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
</div>
<style>
	#uni_modal .modal-footer{
		display: none
	}
	#uni_modal .modal-footer.display{
		display: flex
	}
</style>