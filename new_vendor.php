




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Country Dropdown</title>
</head>

<?php
?>
<div class="col-lg-12">
	<div class="card">
		<div class="card-body">
			<form action="" id="manage_vendor"  enctype="multipart/form-data">
				<input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
				<div class="row">
					<div class="col-md-6 border-right">
						<b class="text-muted">Vendor Information</b>
						
						<div class="form-group">
							<label for="" class="control-label">First Name</label>
							<input type="text" name="firstname" class="form-control form-control-sm" required value="<?php echo isset($firstname) ? $firstname : '' ?>">
						</div>
						<div class="form-group">
							<label for="" class="control-label">Middle Name</label>
							<input type="text" name="middlename" class="form-control form-control-sm"  value="<?php echo isset($middlename) ? $middlename : '' ?>">
						</div>
						
						<div class="form-group">
							<label for="" class="control-label">Last Name</label>
							<input type="text" name="lastname" class="form-control form-control-sm" required value="<?php echo isset($lastname) ? $lastname : '' ?>">
						</div>









						<div class="form-group">
							<label for="" class="control-label">Email</label>
							<input type="text" name="email" class="form-control form-control-sm"  value="<?php echo isset($email) ? $email : '' ?>">
						</div>
						<div class="form-group">
							<label for="" class="control-label">Contact Number</label>
							<input type="text" name="Contact" class="form-control form-control-sm" required value="<?php echo isset($Contact) ? $Contact : '' ?>">
						</div>
						<div class="form-group">
							<label for="" class="control-label">Market</label>
							<div class="dropdown-container">
        <input type="text" id="searchInput" name="Market" placeholder="Search countries..." value="<?php echo isset($Market) ? $Market : '' ?>">
        <div class="dropdown">
            <button class="dropbtn">Select a country</button>
            <div class="dropdown-content" id="countryList"></div>
        </div>
						</div>
						
    </div>
	<script src="script.js"></script>
						<div class="form-group">
							<label class="control-label">Type</label>
							<select name="type" id="type" class="custom-select custom-select-sm">
								<option value="3" <?php echo isset($type) && $type == 3 ? 'selected' : '' ?>>B2B</option>
								<option value="2" <?php echo isset($type) && $type == 2 ? 'selected' : '' ?>>B2C</option>
								<option value="1" <?php echo isset($type) && $type == 1 ? 'selected' : '' ?>>Health Care</option>
							</select>
						</div>

						<div class="form-group">
							<label for="" class="control-label">Payment Terms</label>
							<input type="text" name="Pt" class="form-control form-control-sm"  value="<?php echo isset($Pt) ? $Pt : '' ?>">
						</div>

						<div class="form-group">
							<label for="" class="control-label">Remarks</label>
							<textarea name="Remarks" id="" cols="30" rows="4" class="form-control" required><?php echo isset($Remarks) ? $Remarks : '' ?></textarea>
						</div>

						<div class="form-group">
							<label for="" class="control-label">Vendor Registration File</label>
							<div class="form-group">
							<label for="" class="control-label"></label>
							<input type="file" class="form-control"  name="file_path"accept=".pdf, .doc, .docx, .txt" required style="height:auto" placeholder="Photograph" required value="<?php echo isset($file_path) ? $file_path : '' ?>">
							
						</div>
						<div class="form-group">
							<label for="" class="control-label">Details Filled By</label>
							<input type="text" name="Details" class="form-control form-control-sm"  value="<?php echo isset($Details) ? $Details : '' ?>">
						</div>
                         
						<h5><b> Vendor Redirect Links </b></h5>

						
						<div class="form-group">
							<label for="" class="control-label">Vendor ID</label>
							<input type="text" name="Vid" class="form-control form-control-sm" required value="<?php echo isset($Vid) ? $Vid : '' ?>">
						</div>
						<div class="form-group">
							<label for="" class="control-label">Complete</label>
							<input type="Complete" name="Complete" class="form-control form-control-sm"  value="<?php echo isset($Complete) ? $Complete : '' ?>">
						</div>
						<div class="form-group">
							<label for="" class="control-label">Terminate</label>
							<input type="text" name="Terminate" class="form-control form-control-sm" required value="<?php echo isset($Terminate) ? $Terminate : '' ?>">
						</div>
						<div class="form-group">
							<label for="" class="control-label">Quota Full</label>
                            <input type="text" name="Fq" class="form-control form-control-sm"  value="<?php echo isset($Fq) ? $Fq : '' ?>">
							
						</div>
						

						<div class="form-group">
							<label for="" class="control-label">Security Term</label>
							<input type="text" name="St" class="form-control form-control-sm"  value="<?php echo isset($St) ? $St : '' ?>">
						</div>

						<div class="form-group">
							<label for="" class="control-label">Quality Error</label>
							<input type="text" name="Qr" class="form-control form-control-sm"  value="<?php echo isset($Qr) ? $Qr : '' ?>">
						</div>

						
						
</div>
                    </div>
						
				

					
					<div class="col-md-6">
						<b class="text-muted">Point Of Contact</b>
						
                    <div class="form-group">
							<label for="" class="control-label"> Name</label>
							<input type="text" name="Name1" class="form-control form-control-sm" required value="<?php echo isset($Name1) ? $Name1 : '' ?>">
						</div>
						<div class="form-group">
							<label class="control-label">Email</label>
							<input type="text" class="form-control form-control-sm" name="email1" required value="<?php echo isset($email1) ? $email1 : '' ?>">
							<small id="#msg"></small>
						</div>
						<div class="form-group">
							<label for="" class="control-label"> Contact</label>
							<input type="text" name="Contact1" class="form-control form-control-sm" required value="<?php echo isset($Contact1) ? $Contact1 : '' ?>">
						</div>
						
					</div>
				</div>
							
				<hr>
				<div class="col-lg-12 text-right justify-content-center d-flex">
					<button class="btn btn-primary mr-2">Save</button>
		            <button class="btn btn-secondary" type="button" onclick="location.href = 'index.php?page=new_vendor'">Cancel</button>
				</div>
			</form>
		</div>
	</div>
</div>

<script>
    $('#manage_vendor').submit(function(e){
        e.preventDefault();
        $('input').removeClass("border-danger");
        start_load();
        $('#msg').html('');

        var formData = new FormData($(this)[0]);

        $.ajax({
            url: 'ajax.php?action=save_vendor',
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            method: 'POST',
            type: 'POST',
            success: function(resp){
                if(resp == 1){
                    alert_toast('Data successfully saved.', "success");
                    setTimeout(function(){
                        location.replace('index.php?page=vendor_list');
                    }, 1500);
                }
            },
            error: function(xhr, status, error) {
                console.error('File upload error:', error);
            }
        });
    });
</script>




