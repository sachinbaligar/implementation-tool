<?php include 'db_connect.php' ?>
<?php
if(isset($_GET['id'])){
	$type_arr = array('',"B2B","B2C","Health care");
	$qry = $conn->query("SELECT *,concat(lastname,', ',firstname) as name FROM vendor_list where id = ".$_GET['id'])->fetch_array();
	// $qry = $conn->query("SELECT *,concat(lastname,', ',firstname,' ',middlename) as name FROM vendor_list where id = ".$_GET['id'])->fetch_array();
	foreach($qry as $k => $v){
		if($k == 'title')
			$k = 'stitle';
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
			<th>email:</th>
			<td><b><?php echo $email ?></b></td>
		</tr>
		<tr>
			<th>Contact:</th>
			<td><b><?php echo $Contact ?></b></td>
		</tr>
        <tr>
			<th>Market</th>
			<td><b><?php echo $Market ?></b></td>
		</tr>
        <tr>
			<th>Type:</th>
			<td><b><?php echo $type_arr[$type] ?></b></td>
		</tr>
		<tr>
			<th>Pt</th>
			<td><b><?php echo $Pt?></b></td>
		</tr>
        <tr>
			<th>Remarks</th>
			<td><b><?php echo $Remarks ?></b></td>
		</tr>
        <tr>
			<th>Vrf</th>
			<td><b><?php echo $filename ?></b></td>
		</tr>
        <tr>
			<th>Details</th>
			<td><b><?php echo $Details ?></b></td>
		</tr>
        <tr>
			<th>Vid</th>
			<td><b><?php echo $Vid ?></b></td>
		</tr>
        <tr>
			<th>Complete</th>
			<td><b><?php echo $Complete ?></b></td>
		</tr>
        <tr>
			<th>Terminate</th>
			<td><b><?php echo $Terminate ?></b></td>
		</tr>
        <tr>
			<th>Fq</th>
			<td><b><?php echo $Fq?></b></td>
		</tr>
        <tr>
			<th>St</th>
			<td><b><?php echo $St ?></b></td>
		</tr>
        <tr>
			<th>Qr</th>
			<td><b><?php echo $Qr ?></b></td>
		</tr>
        <tr>
			<th>Name1</th>
			<td><b><?php echo $Name1 ?></b></td>
		</tr>
        <tr>
			<th>Email1</th>
			<td><b><?php echo $email1 ?></b></td>
		</tr>
        <tr>
			<th>Contact1</th>
			<td><b><?php echo $Contact1 ?></b></td>
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