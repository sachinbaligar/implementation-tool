<?php include 'db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-success">
		<div class="card-header">
			<div class="card-tools">
				<a class="btn btn-block btn-sm btn-default btn-flat border-primary" href="./index.php?page=new_project"><i class="fa fa-plus"></i> Add New project</a>
			</div>
		</div>
		<div class="card-body">
			<table class="table tabe-hover table-bordered" id="list">
				<thead>
					<tr>
						<th class="text-center">#</th>
						<th>Project name</th>
						<th>PID</th>
						 <th>Country</th>
                        <!-- <th>LastName</th> -->
						<th>Cost Per Interview</th>
						<th>Start Date</th>
                         <!-- <th>Vendor list</th> -->
                        <!-- <th>Live link</th> -->
						
                        
						<!-- <th>Test link</th> -->
						<!-- <th>Email</th>  -->
                        <!-- <th>Password</th> -->
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					// $Vendorlist = array('',"Select vendor","Skib ","Virabh","Test");
					// $qry = $conn->query("SELECT *,concat(lastname,', ',firstname) as name FROM pm_list order by concat(lastname,', ',firstname) asc");
					// $qry = $conn->query("SELECT *,concat(lastname,', ',firstname,' ',middlename) as name FROM pm_list order by concat(lastname,', ',firstname,' ',middlename) asc");
                    // $qry = $conn->query("SELECT * FROM project_list order by (CostPerInterview) asc,(StartDate) asc ");


					$qry = $conn->query("SELECT * FROM project_list ORDER BY Country ASC, CostPerInterview ASC");

					// $qry = $conn->query("SELECT CostPerInterview FROM project_list ORDER BY CostPerInterview ASC");

					while($row= $qry->fetch_assoc()):
					?>
					<tr>
						<th class="text-center"><?php echo $i++ ?></th>
						<td><b><?php echo $row['Projectname'] ?></b></td>
						<td><b><?php echo ucwords($row['id']) ?></b></td>
						<td><b><?php echo ucwords($row['Country']) ?></b></td>
						 <!-- <td><b><?php echo $row['Country'] ?></b></td>  -->
						<td><b><?php echo $row['CostPerInterview'] ?></b></td>
						
						<td><b><?php echo $row['StartDate'] ?></b></td>
						<!-- <td><b><?php echo $Vendorlist[$row['Vendorlist']] ?></b></td> -->
						<!-- <td><b><?php echo $row['Livelink'] ?></b></td>
						<td><b><?php echo $row['Testlink'] ?></b></td> -->
						<!-- <td class="text-center">
							<button type="button" class="btn btn-default btn-sm btn-flat border-info wave-effect text-info dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
		                      Action
		                    </button>
		                    <div class="dropdown-menu" >
		                      <a class="dropdown-item view_project" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">View</a>
		                      <div class="dropdown-divider"></div>
		                      <a class="dropdown-item" href="./index.php?page=edit_project&id=<?php echo $row['id'] ?>">Edit</a>
		                      <div class="dropdown-divider"></div>
		                      <a class="dropdown-item delete_project" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Delete</a>
		                    </div>
						</td> -->
<!-- ... (existing code) -->



<td class="text-center">
    <button type="button" class="btn btn-default btn-sm btn-flat border-info wave-effect text-info dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
        Action
    </button>
    <div class="dropdown-menu">
        <a class="dropdown-item view_project" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">View</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="./index.php?page=edit_project&id=<?php echo $row['id'] ?>">Edit</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item delete_project" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Delete</a>
        <!-- Pass the PID to the new implementation here -->
        <div class="dropdown-divider"></div>
        <!-- <a class="dropdown-item" href="./index.php?page=new_implementation" data-pid="<?php echo $row['id']; ?>">New Implementation</a> -->
		<a class="dropdown-item" href="./index.php?page=new_implementation&pid=<?php echo $row['id']; ?>">New Implementation</a>

    </div>
</td>






<!-- ... (existing code) -->








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
	$('.view_project').click(function(){
		uni_modal("<i class='fa fa-id-card'></i> User Details","view_project.php?id="+$(this).attr('data-id'))
	})
	$('.delete_project').click(function(){
	_conf("Are you sure to delete this user?","delete_project",[$(this).attr('data-id')])
	})
	})
	function delete_project($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_project',
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