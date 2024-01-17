<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>File Upload</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="col-lg-12">
	<div class="card">
<div class="card-body">  
    <form action="./index.php?page=vrf_list"  method="post" enctype="multipart/form-data">
    <div class="row">
					<div class="col-md-6 border-right">
                        
						<div class="form-group">
        <label class="control-label" for="vendorName">Vendor Name:</label>
        <input type="text" name="vendorName"  class="form-control form-control-sm" required>
        </div>
        
        <div class="form-group">
        <label class="control-label" for="file">Upload File:</label>
        <input type="file" name="file" class="form-control form-control-sm"   accept=".pdf, .doc, .docx" required>
        </div>
						

        <div class="col-lg-12 text-right justify-content-center d-flex">
					<button class="btn btn-primary mr-2"  type="submit" >Upload</button>
					
				</div>
                </form>
        </div>
	</div>
</div>

    
</body>
</html>


<!-- <script>
    $('#manage_vrf').submit(function(e){
        e.preventDefault();
        $('input').removeClass("border-danger");
        start_load();
        $('#msg').html('');

        var formData = new FormData($(this)[0]);

        $.ajax({
            url: 'ajax.php?action=save_vrf',
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
                        location.replace('index.php?page=vrf_list');
                    }, 1500);
                }
            },
            error: function(xhr, status, error) {
                console.error('File upload error:', error);
            }
        });
    });
</script> -->






















