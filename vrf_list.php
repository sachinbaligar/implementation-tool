<?php include'db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-success">
		<div class="card-header">
			<div class="card-tools">
				<a class="btn btn-block btn-sm btn-default btn-flat border-primary" href="./index.php?page=vrf"><i class="fa fa-plus"></i> Add vendor</a>
			</div>
		</div>
		<div class="card-body">
			<table class="table tabe-hover table-bordered" id="list">
				<thead>
					<tr>
						<th class="text-center">#</th>
						<th>vendorName</th>
                        <th>file</th>
						
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
                <?php
					$i = 1;
					


					$qry = $conn->query("SELECT * FROM vrf ORDER BY vendorName ASC, file ASC");

					

					while($row= $qry->fetch_assoc()):
					?>
					<tr>
						<th class="text-center"><?php echo $i++ ?></th>
						<td><b><?php echo ucwords($row['vendorName']) ?></b></td>
                        <td><b><?php echo $row['file'] ?></b></td>
						
                    
						
						<td class="text-center">
							<button type="button" class="btn btn-default btn-sm btn-flat border-info wave-effect text-info dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
		                      Action
		                    </button>
							<div class="dropdown-menu" >
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="download.php?fileId=<?php echo $row['id'] ?>">Download</a>

		                      <div class="dropdown-divider"></div>
		                      <a class="dropdown-item delete_vrf" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Delete</a>
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
	$('.view_vrf').click(function(){
		uni_modal("<i class='fa fa-id-card'></i> User Details","vrf.php?id="+$(this).attr('data-id'))
	})
	$('.delete_vendor').click(function(){
	_conf("Are you sure to delete this user?","delete_vendor",[$(this).attr('data-id')])
	})
	})
	function delete_vendor($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_vrf',
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
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Database connection parameters
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "survey_db";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get form data
    $vendorName = $_POST['vendorName'];

    // File upload
    $targetDirectory = "uploads/"; // Create a directory to store uploaded files
    $targetFile = $targetDirectory . basename($_FILES["file"]["name"]);
    
    if (move_uploaded_file($_FILES["file"]["tmp_name"], $targetFile)) {
        // File uploaded successfully, now insert data into database
        $sql = "INSERT INTO vrf (vendorName, file) VALUES ('$vendorName', '$targetFile')";
        
        if ($conn->query($sql) === TRUE) {
            echo "File uploaded and record inserted successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else {
        echo "Error uploading file.";
    }

    // Close the database connection
    $conn->close();
}
?>