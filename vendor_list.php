<?php include 'db_connect.php' ?>


<div class="col-lg-12">
	<div class="card card-outline card-success">
		<div class="card-header">
			<div class="card-tools">
				<a class="btn btn-block btn-sm btn-default btn-flat border-primary" href="./index.php?page=new_vendor"><i class="fa fa-plus"></i> Add vendor</a>
			</div>
		</div>
		<div class="card-body">
			<table class="table tabe-hover table-bordered" id="list">
				<thead>
					<tr>
						<th class="text-center">#</th>
						<th>Name</th>
                        <th>email</th>
						<th>Contact </th>
						<!-- <th>Market</th> -->
						<th>type</th>
                        <!-- <th>Payment Terms</th> -->
                        <!-- <th>Remarks</th> -->
                        <!-- <th>Vrf</th> -->
                        <th>Details</th>
                        <!-- <th>Vid</th> -->
                        <!-- <th>Complete</th> -->
                        <!-- <th>Terminate</th> -->
                        <!-- <th>Full Quota</th> -->
                        <!-- <th>Security Term</th> -->
                        <!-- <th>Qualityr\ erroe</th> -->
                        <th>Name1</th>
                        <th>email1</th>
						<th>Contact1 </th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					$type = array('',"B2B","B2C","Health care");
					// $qry = $conn->query("SELECT *,concat( ',firstname,' ) as name FROM vendor_list order by concat( ',firstname,' ) asc");
					$qry = $conn->query("SELECT *,concat(lastname,', ',firstname,' ',middlename) as name FROM vendor_list  order by concat(lastname,', ',firstname,' ',middlename) asc");
					while($row= $qry->fetch_assoc()):
					?>
					<tr>
						<th class="text-center"><?php echo $i++ ?></th>
						<td><b><?php echo ucwords($row['name']) ?></b></td>
                        <td><b><?php echo $row['email'] ?></b></td>
						<td><b><?php echo $row['Contact'] ?></b></td>
                        <!-- <td><b><?php echo $row['Market'] ?></b></td> -->
						<td><b><?php echo $type[$row['type']] ?></b></td>
                        <!-- <td><b><?php echo $row['Pt'] ?></b></td> -->
                        <!-- <td><b><?php echo $row['Remarks'] ?></b></td> -->
                        <!-- <td><b><?php echo $row['upload_file'] ?></b></td> -->
                        <td><b><?php echo $row['Details'] ?></b></td>
                        <!-- <td><b><?php echo $row['Vid'] ?></b></td> -->
                        <!-- <td><b><?php echo $row['Complete'] ?></b></td> -->
                        <!-- <td><b><?php echo $row['Terminate'] ?></b></td> -->
                        <!-- <td><b><?php echo $row['Fq'] ?></b></td> -->
                        <!-- <td><b><?php echo $row['St'] ?></b></td> -->
                        <!-- <td><b><?php echo $row['Qr'] ?></b></td> -->
                        <td><b><?php echo $row['Name1'] ?></b></td>
                        <td><b><?php echo $row['email1'] ?></b></td>
                        <td><b><?php echo $row['Contact1'] ?></b></td>
                       
                    
						
						<td class="text-center">
							<button type="button" class="btn btn-default btn-sm btn-flat border-info wave-effect text-info dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
		                      Action
		                    </button>
		                    <div class="dropdown-menu" >
		                      <a class="dropdown-item view_vendor" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">View</a>
		                      <div class="dropdown-divider"></div>
		                      <a class="dropdown-item" href="./index.php?page=edit_vendor&id=<?php echo $row['id'] ?>">Edit</a>
		                      <div class="dropdown-divider"></div>
		                      <a class="dropdown-item delete_vendor" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Delete</a>
		                    </div>

							
		                    </div>
						</td>
					</tr>	
				<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('#list').dataTable()
	$('.view_vendor').click(function(){
		uni_modal("<i class='fa fa-id-card'></i> User Details","view_vendor.php?id="+$(this).attr('data-id'))
	})
	$('.delete_vendor').click(function(){
	_conf("Are you sure to delete this user?","delete_vendor",[$(this).attr('data-id')])
	})
	})
	function delete_vendor($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_vendor',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp==1){
					alert_toast("Data successfully deleted",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}
		})
	}
</script>


<?php
