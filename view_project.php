<?php include 'db_connect.php' ?>
<?php
if(isset($_GET['id'])){
	$Vendorlist_arr = array('',"Select vendor","Skib ","Virabh","Test");
    // $Gender_arr = array('',"Please Select Gender","Male","Female",);
    // $Status_arr = array('',"Please Select Status","Active","In-Active",);
	$qry = $conn->query("SELECT * FROM project_list where id = ".$_GET['id'])->fetch_array();
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
			<th>Country:</th>
			<td><b><?php echo $Country ?></b></td>
		</tr>
		<tr>
			<th>Cost per Interview:</th>
			<td><b><?php echo $CostPerInterview ?></b></td>
		</tr>
		<tr>
			<th>Start date:</th>
			<td><b><?php echo $StartDate ?></b></td>
		</tr>
        <!-- <tr>
			<th>Gender:</th>
			<td><b><?php echo $Gender_arr[$Gender] ?></b></td>
		</tr>
        <tr>
			<th>Status:</th>
			<td><b><?php echo $Status_arr[$Status] ?></b></td>
		</tr>
        <tr>
			<th>Created:</th>
			<td><b><?php echo $Created ?></b></td>
		</tr> -->
		
		<tr>
			<th>User Role:</th>
			<td><b><?php echo $Vendorlist_arr[$Vendorlist] ?></b></td>
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