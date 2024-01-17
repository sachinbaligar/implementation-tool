<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Country Selector</title>

    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
	<link rel="stylesheet" href="plugins/datatables/jquery.dataTables_themeroller.css">
	<link rel="stylesheet" href="dist/css/AdminLTE.css">
	<link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
	<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

<!-- Include jQuery UI library -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body>
    <style>
        /* / Add your preferred styling here / */
body {
    font-family: Arial, sans-serif;
}

.dropdown-container {
    text-align: center;
    margin-top: 50px;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropbtn {
    padding: 10px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
    max-height: 200px;
    overflow-y: auto;
    width: 100%;
}

.dropdown-content a {
    padding: 12px 16px;
    display: block;
    text-align: left;
    text-decoration: none;
    color: #333;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.selected-countries {
    margin-top: 10px;
}

.selected-country {
    margin-right: 5px;
    padding: 5px;
    background-color: #ddd;
    border-radius: 5px;
    display: inline-block;
    cursor: pointer;
}

    </style>

   

   
</body>
</html>










   

		<div class="card-body">

         <form action="" id="manage_project">
				<input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">

               

                <div class="row">

                
					<div class="col-md-6 border-right">


                    <div class="form-group">
							<label for="" class="control-label">Project name</label>
							<input type="text" name="Projectname" class="form-control form-control-sm" required value="<?php echo isset($Projectname) ? $Projectname : '' ?>">
						</div>
						
                        <label for="" class="control-label">Country</label>
                        <div class="dropdown-container">
        <input type="text" id="searchInput" name="Country" placeholder="Search countries..." value="<?php echo isset($Country) ? $Country : '' ?>">
        
        <div class="dropdown">
            <button class="dropbtn" onclick="toggleDropdown()">Select countries</button>
            <div class="dropdown-content" id="countryList" style="display: none;"></div>
        </div>
        <div class="selected-countries" id="selectedCountries"></div>
    </div> 

    <script>
        document.addEventListener("DOMContentLoaded", function () {
    const searchInput = document.getElementById("searchInput");
    const countryList = document.getElementById("countryList");
    const dropbtn = document.querySelector(".dropbtn");
    const selectedCountriesContainer = document.getElementById("selectedCountries");

    // Manually include USA and UK with country codes
    const manualCountries = [
        { name: "USA", code: "US" },
        { name: "UK", code: "GB" }
    ];

    // Fetch the list of countries from the REST Countries API
    fetch("https://restcountries.com/v3.1/all")
        .then(response => response.json())
        .then(data => {
            const countries = data.map(country => ({ name: country.name.common, code: country.cca2 }));

            // Add manually included countries to the list
            countries.push(...manualCountries);

            // Populate the dropdown with country names and codes
            countries.forEach(country => {
                const option = document.createElement("a");
                option.textContent = `${country.name} (${country.code})`;
                option.href = "#";
                option.addEventListener("click", function () {
                    addSelectedCountry(country);
                });
                countryList.appendChild(option);
            });
        })
        .catch(error => console.error("Error fetching countries:", error));

    function addSelectedCountry(country) {
        const selectedCountryDiv = document.createElement("div");
        selectedCountryDiv.classList.add("selected-country");
        selectedCountryDiv.textContent = `${country.name} (${country.code})`;
        selectedCountryDiv.addEventListener("click", function () {
            removeSelectedCountry(selectedCountryDiv, country);
        });

        selectedCountriesContainer.appendChild(selectedCountryDiv);

		let currentSearchValue = searchInput.value.trim();

				// Concatenate the selected country to the existing value, if any
				currentSearchValue += (currentSearchValue.length > 0 ? ', ' : '') + `${country.name} (${country.code})`;

// Update the search input value with the concatenated string
searchInput.value = currentSearchValue;		
        countryList.style.display = "none";
        // searchInput.value = "";
    }

    function removeSelectedCountry(selectedCountryDiv, country) {
        selectedCountriesContainer.removeChild(selectedCountryDiv);
        countryList.style.display = "block";
    }

    window.toggleDropdown = function () {
        countryList.style.display = countryList.style.display === "none" ? "block" : "none";
    };

    // Show/hide the dropdown based on user input
    searchInput.addEventListener("input", function () {
        const filter = searchInput.value.toUpperCase();
        const options = countryList.getElementsByTagName("a");

        for (let i = 0; i < options.length; i++) {
            const txtValue = options[i].textContent || options[i].innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                options[i].style.display = "";
            } else {
                options[i].style.display = "none";
            }
        }

        countryList.style.display = "block";
    });

    // Close the dropdown if the user clicks outside of it
    window.addEventListener("click", function (event) {
        if (!event.target.matches(".dropbtn") && !event.target.matches("#searchInput")) {
            countryList.style.display = "none";
        }
    });
});

    </script>        






                        <div class="form-group">
							<label for="" class="control-label">Cost Per Interview</label>
							<input type="text" name="CostPerInterview" class="form-control form-control-sm" required value="<?php echo isset($CostPerInterview) ? $CostPerInterview : '' ?>">
						</div>

						
							<div class="form-group">
						<label for="">Start Date (MM/DD/YYYY)</label>
											<input type="text" class="form-control multidatepicker" name="StartDate"  required value="<?php echo isset($StartDate) ? $StartDate : '' ?>">
											<!-- <small class="text-muted">You can select multiple dates separated by comma.</small> -->
						</div>

                        <script src="plugins/datepicker/bootstrap-datepicker.js"></script>
						<script>
    $(function() {
        // Assuming 'multidatepicker' class is used for your date input
        $('.multidatepicker').datepicker({
            dateFormat: 'mm/dd/yy',
            // Add any additional options you need
            // For example:
            // numberOfMonths: 2,
            // showButtonPanel: true,
        });
    });
</script>

						

					
						
						
					</div>
				</div> 
				<hr>
				<div class="col-lg-12 text-right justify-content-center d-flex">
					<button class="btn btn-primary mr-2">Genrate</button>
					<button class="btn btn-secondary" type="button" onclick="location.href = 'index.php?page=new_project'">Cancel</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script>
	$('#manage_project').submit(function(e){
		e.preventDefault()
		$('input').removeClass("border-danger")
		start_load()
		$('#msg').html('')
		$.ajax({
			url:'ajax.php?action=save_project',
			data: new FormData($(this)[0]),
		    cache: false,
		    contentType: false,
		    processData: false,
		    method: 'POST',
		    type: 'POST',
			success:function(resp){
    console.log(resp); // Log the response to the console
    if(resp == 1){
        alert_toast('Data successfully saved.',"success");
        setTimeout(function(){
            location.replace('index.php?page=project_list')
        },1500)
    }
}

		})
	})
</script>

<!-- <script>
$('#manage_project').submit(function(e){
    e.preventDefault();
    $('input').removeClass("border-danger");
    start_load();
    $('#msg').html('');
    $.ajax({
        url: 'ajax.php?action=save_project',
        data: new FormData($(this)[0]),
        cache: false,
        contentType: false,
        processData: false,
        method: 'POST',
        type: 'POST',
        // success: function(resp){
        //     if (resp == 1) {
        //         alert_toast('Data successfully saved.', "success");
        //         setTimeout(function(){
        //             location.replace('index.php?page=project_list');
        //         }, 1500);
        //     } else {
        //         alert_toast('Failed to save data. Please try again. ' + resp, "error");
        //     }
        // }
        success: function(resp) {
    console.log('Server Response:', resp);

    if (resp == 1) {
        alert_toast('Data successfully saved.', 'success');
        setTimeout(function() {
            location.replace('index.php?page=project_list');
        }, 1500);
    } else {
        alert_toast('Failed to save data. Please try again. ' + resp, 'error');
    }
}

    });
});
</script> -->