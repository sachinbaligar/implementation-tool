<?php
// Include the database connection code (assuming you've stored it in a separate file)
include('db_connect.php');



// Retrieve Data
$sql = "SELECT Vid, firstname FROM vendor_list";
$result = $conn->query($sql);

// Check if any rows were returned
if ($result->num_rows > 0) {
    // Fetch all rows
    $vendors = $result->fetch_all(MYSQLI_ASSOC);

    $pid = isset($_GET['pid']) ? $_GET['pid'] : null;
    echo "pid: $pid";
} else {
    echo "No records found";
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <style>
    </style>

    <title>URL Masking</title>
</head>

<body>

    <!-- Countries Section -->
    <h2>Select Countries</h2>
    <h5> Use ctrl to select multiple countries </h5>
    <div id="countriesList"></div>

    <!-- URL Fields for Selected Countries -->
    <h2>Paste URLs</h2>
    <div id="urlFields"></div>

    <h2>Vendor List</h2>
    <?php foreach ($vendors as $vendor): ?>
    <div>
        <input type="checkbox" class="peopleListCheckbox" id="vendor_<?php echo $vendor['Vid']; ?>" name="selected_vendors[]" value="<?php echo $vendor['Vid']; ?>">
        <?php echo $vendor['Vid'] . ' - ' . $vendor['firstname']; ?>
    </div>
    <?php endforeach; ?>

    <!-- Display Masked URLs -->
    <h2>Masked URLs</h2>
    <ul id="maskedUrls" class="selected-list"></ul>
    <button id="saveButton">Save</button>

  
<!-- Add this script to your HTML file -->
<script>
    const countriesList = document.getElementById('countriesList');
    const urlFields = document.getElementById('urlFields');
    const maskedUrls = document.getElementById('maskedUrls');
    const saveButton = document.getElementById('saveButton');

    const allCountries = [
        { name: 'Uganda', code: 'UG' },
        { name: 'Ukraine', code: 'UA' },
        { name: 'United Arab Emirates', code: 'AE' },
        { name: 'United Kingdom', code: 'GB' },
        { name: 'United States', code: 'US' },
        { name: 'Uruguay', code: 'UY' },
        { name: 'Uzbekistan', code: 'UZ' },
    ];

    // Populate Countries List as Multi-Select Dropdown
    const dropdown = document.createElement('select');
    dropdown.id = 'countriesDropdown';
    dropdown.multiple = true;
    allCountries.forEach(country => {
        const option = document.createElement('option');
        option.value = country.name;
        option.textContent = `${country.name} (${country.code})`;
        dropdown.appendChild(option);
    });
    countriesList.appendChild(dropdown);

    // Update URL Fields when Countries Dropdown changes
    document.getElementById('countriesDropdown').addEventListener('change', () => {
        updateUrlFields();
        updateMaskedUrls();
    });

    // Save Button Click Event
    saveButton.addEventListener('click', () => {
        saveData();
    });

    // Vendor Checkbox Click Event
    const vendorCheckboxes = document.querySelectorAll('.peopleListCheckbox');
    vendorCheckboxes.forEach(checkbox => {
        checkbox.addEventListener('click', () => {
            updateMaskedUrls();
        });
    });

    function updateUrlFields() {
        urlFields.innerHTML = '';
        const selectedCountries = [...document.querySelectorAll('#countriesDropdown option:checked')];

        selectedCountries.forEach(country => {
            const countryLabel = document.createElement('label');
            countryLabel.textContent = `Country: ${country.value} (${allCountries.find(c => c.name === country.value).code})`;
            urlFields.appendChild(countryLabel);

            const liveLinkField = document.createElement('input');
            liveLinkField.type = 'text';
            liveLinkField.name = `liveLink_${country.value.replace(/\s+/g, '_')}`;
            liveLinkField.placeholder = `Paste Live Link for ${country.value}`;
            urlFields.appendChild(liveLinkField);

            const testLinkField = document.createElement('input');
            testLinkField.type = 'text';
            testLinkField.name = `testLink_${country.value.replace(/\s+/g, '_')}`;
            testLinkField.placeholder = `Test Link for ${country.value}`;
            urlFields.appendChild(testLinkField);

            urlFields.appendChild(document.createElement('br'));
        });
    }



   
    function updateMaskedUrls() {
    maskedUrls.innerHTML = '';
    const selectedCountries = [...document.querySelectorAll('#countriesDropdown option:checked')];
    const selectedVendors = [...document.querySelectorAll('.peopleListCheckbox:checked')];

    selectedCountries.forEach(country => {
        const liveLinkField = document.querySelector(`#urlFields input[name="liveLink_${country.value.replace(/\s+/g, '_')}"]`);
        const testLinkField = document.querySelector(`#urlFields input[name="testLink_${country.value.replace(/\s+/g, '_')}"]`);

        if (liveLinkField && testLinkField) {
            const originalUrl = liveLinkField.value;

            selectedVendors.forEach(vendor => {
                const maskedUrl = generateMaskedUrl(
                    originalUrl,
                    testLinkField.value,
                    country.value, // pass the selected country
                    allCountries.find(c => c.name === country.value).code, // pass the country code
                    vendor.value, // pass the vendor ID
                    '<?php echo $pid; ?>' // pass the PID
                );

                const listItem = document.createElement('li');
                listItem.innerHTML = `<a href="#" data-original-url="${originalUrl}">${maskedUrl}</a>`;
                
                // Attach click event to open the original URL and replace text field content
                listItem.addEventListener('click', (event) => {
                    event.preventDefault();
                    window.open(originalUrl, '_blank');
                    liveLinkField.value = maskedUrl; // Replace text field content
                });

                maskedUrls.appendChild(listItem);
            });
        }
    });
}
 


    function generateMaskedUrl(originalUrl, testLink, selectedCountry, countryCode, vid, pid) {
    // Convert selected country and countryCode to lowercase
    const lowerCaseCountry = selectedCountry.toLowerCase();
    const lowerCaseCountryCode = countryCode.toLowerCase();

    // Base URL
    const RewriteBase = 'youtube';
    

    // Construct masked live link using base URL, include vid, pid, and cnt
    // const maskedLiveLink = `${RewriteBase}&vid=${vid}&pid=${pid}&cnt=${lowerCaseCountryCode}`;
    // Construct masked live link using clean URL structure
const maskedLiveLink = `youtube/${vid}/${pid}/${lowerCaseCountryCode}`;


    const maskedTestLink = encodeURIComponent(testLink); // Ensure proper URL encoding for the test link

    return `${maskedLiveLink} ${maskedTestLink}`;
//     console.log("Masked Live Link:", maskedLiveLink);
// console.log("Masked Test Link:", maskedTestLink);

}


    function saveData() {
    const selectedCountries = [...document.querySelectorAll('#countriesDropdown option:checked')].map(option => option.value);
    const selectedVendors = [...document.querySelectorAll('.peopleListCheckbox:checked')].map(checkbox => checkbox.value);

    selectedCountries.forEach(country => {
        const liveLinkField = document.querySelector(`#urlFields input[name="liveLink_${country.replace(/\s+/g, '_')}"]`);
        const testLinkField = document.querySelector(`#urlFields input[name="testLink_${country.replace(/\s+/g, '_')}"]`);

        if (liveLinkField && testLinkField) {
            selectedVendors.forEach(vendor => {
                // Assuming you have jQuery available for  simplicity
                $.post('save_data.php', {
                    selectedCountries: selectedCountries,
                    selectedVendors: selectedVendors,
                    liveLinkField: liveLinkField.value,
                    testLinkField: testLinkField.value,
                    country: country, // pass the selected country
                    countryCode: allCountries.find(c => c.name === country).code, // pass the country code
                    vid: vendor, // pass the vendor ID
                    pid: '<?php echo $pid; ?>' // pass the PID
                }, function (data) {
                    console.log(data); // Log the response from the server
                    alert('Data saved successfully'); // Show an alert or update UI based on the server response
                });
            });
        }
    });
}

</script>




</body>

</html>

