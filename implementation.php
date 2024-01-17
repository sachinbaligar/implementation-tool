<!DOCTYPE html>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 20px;
            background-color: #f8f9fa;
            color: #333;
        }

        h2 {
            color: grey;
        }

        #countriesList,
        #urlFields,
        #peopleList,
        #maskedUrls {
            background-color: #ffffff;
            padding: 50px;
            margin-bottom: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        select,
        input[type="text"],
        input[type="checkbox"] {
            margin-bottom: 10px;
            padding: 12px;
            width: 10%;
            box-sizing: border-box;
            border: 1px solid #ced4da;
            border-radius: 4px;
            background-color: #f8f9fa;
            transition: border-color 0.2s ease-in-out;
        }

        input[type='text'] {
            width: 39%;
            margin: 20px;

        }

        #countriesDropdown {
            font-size: 17px;
            margin-bottom: 10px;
            padding: 12px;
            width: 300px;
            height: 260px;
            box-sizing: border-box;
            border: 2px solid #c3c5c7;
            border-radius: 4px;
            background-color: #ffffff;
            transition: border-color 0.2s ease-in-out;
            cursor: pointer;

        }

       




        input[type="checkbox"] {
            margin-right: -150px;
        }

        input[type="text"]:focus,
        select:focus,
        input[type="checkbox"]:focus {
            border-color: #007bff;
            outline: none;
        }

        .masked-url {
            margin-bottom: 10px;
        }

        @media (min-width: 576px) {
  #peopleList {
    max-width: 540px;
  }
}

@media (min-width: 768px) {
  .container, .container-sm, .container-md {
    max-width: 720px;
  }
}

@media (min-width: 992px) {
    #peopleList {
    max-width: 960px;
  }
}

@media (min-width: 1200px) {
  .container, .container-sm, .container-md, .container-lg, .container-xl {
    max-width: 1140px;
  }
}


        
    </style>

    <title>URL Masking</title>
</head>

<body>

    <!-- Countries Section -->
    <h2>Select Countries</h2>

    <h5> *Use ctrl to select multiple countries* </h5>
    <div id="countriesList"></div>

    <!-- URL Fields for Selected Countries -->
    <h2>Paste URLs</h2>
    <div id="urlFields"></div>

    <!-- People Section -->
    <h2>Vendor List</h2>
    <div id="peopleList"></div>

    <!-- Display Masked URLs -->
    <h2>Masked URLs</h2>
    <ul id="maskedUrls" class="selected-list"></ul>
    <button id="saveButton">Save</button>

    <script>
        // Add your JavaScript code here
        const countriesList = document.getElementById('countriesList');
        const peopleList = document.getElementById('peopleList');
        const urlFields = document.getElementById('urlFields');
        const maskedUrls = document.getElementById('maskedUrls');

        const allCountries = [
            { name: 'Afghanistan', code: 'AF' },
            { name: 'Albania', code: 'AL' },
            { name: 'Algeria', code: 'DZ' },
            { name: 'Andorra', code: 'AD' },
            { name: 'Angola', code: 'AO' },
            { name: 'Antigua and Barbuda', code: 'AG' },
            { name: 'Argentina', code: 'AR' },
            { name: 'Armenia', code: 'AM' },
            { name: 'Australia', code: 'AU' },
            { name: 'Austria', code: 'AT' },
            { name: 'Azerbaijan', code: 'AZ' },

            { name: 'Bahamas', code: 'BS' },
            { name: 'Bahrain', code: 'BH' },
            { name: 'Bangladesh', code: 'BD' },
            { name: 'Barbados', code: 'BB' },
            { name: 'Belarus', code: 'BY' },
            { name: 'Belgium', code: 'BE' },
            { name: 'Belize', code: 'BZ' },
            { name: 'Benin', code: 'BJ' },
            { name: 'Bhutan', code: 'BT' },
            { name: 'Bolivia', code: 'BO' },
            { name: 'Bosnia and Herzegovina', code: 'BA' },
            { name: 'Botswana', code: 'BW' },
            { name: 'Brazil', code: 'BR' },
            { name: 'Brunei', code: 'BN' },
            { name: 'Bulgaria', code: 'BG' },
            { name: 'Burkina Faso', code: 'BF' },
            { name: 'Burundi', code: 'BI' },

            { name: 'Cabo Verde', code: 'CV' },
            { name: 'Cambodia', code: 'KH' },
            { name: 'Cameroon', code: 'CM' },
            { name: 'Canada', code: 'CA' },
            { name: 'Central African Republic', code: 'CF' },
            { name: 'Chad', code: 'TD' },
            { name: 'Chile', code: 'CL' },
            { name: 'China', code: 'CN' },
            { name: 'Colombia', code: 'CO' },
            { name: 'Comoros', code: 'KM' },
            { name: 'Congo (Congo-Brazzaville)', code: 'CG' },
            { name: 'Costa Rica', code: 'CR' },
            { name: 'Croatia', code: 'HR' },
            { name: 'Cuba', code: 'CU' },
            { name: 'Cyprus', code: 'CY' },
            { name: 'Czechia (Czech Republic)', code: 'CZ' },

            { name: 'Denmark', code: 'DK' },
            { name: 'Djibouti', code: 'DJ' },
            { name: 'Dominica', code: 'DM' },
            { name: 'Dominican Republic', code: 'DO' },

            { name: 'East Timor (Timor-Leste)', code: 'TL' },
            { name: 'Ecuador', code: 'EC' },
            { name: 'Egypt', code: 'EG' },
            { name: 'El Salvador', code: 'SV' },
            { name: 'Equatorial Guinea', code: 'GQ' },
            { name: 'Eritrea', code: 'ER' },
            { name: 'Estonia', code: 'EE' },
            { name: 'Eswatini', code: 'SZ' },
            { name: 'Ethiopia', code: 'ET' },

            { name: 'Fiji', code: 'FJ' },
            { name: 'Finland', code: 'FI' },
            { name: 'France', code: 'FR' },

            { name: 'Gabon', code: 'GA' },
            { name: 'Gambia', code: 'GM' },
            { name: 'Georgia', code: 'GE' },
            { name: 'Germany', code: 'DE' },
            { name: 'Ghana', code: 'GH' },
            { name: 'Greece', code: 'GR' },
            { name: 'Grenada', code: 'GD' },
            { name: 'Guatemala', code: 'GT' },
            { name: 'Guinea', code: 'GN' },
            { name: 'Guinea-Bissau', code: 'GW' },
            { name: 'Guyana', code: 'GY' },

            { name: 'Haiti', code: 'HT' },
            { name: 'Honduras', code: 'HN' },
            { name: 'Hungary', code: 'HU' },

            { name: 'Iceland', code: 'IS' },
            { name: 'India', code: 'IN' },
            { name: 'Indonesia', code: 'ID' },
            { name: 'Iran', code: 'IR' },
            { name: 'Iraq', code: 'IQ' },
            { name: 'Ireland', code: 'IE' },
            { name: 'Israel', code: 'IL' },
            { name: 'Italy', code: 'IT' },

            { name: 'Jamaica', code: 'JM' },
            { name: 'Japan', code: 'JP' },
            { name: 'Jordan', code: 'JO' },

            { name: 'Kazakhstan', code: 'KZ' },
            { name: 'Kenya', code: 'KE' },
            { name: 'Kiribati', code: 'KI' },
            { name: 'Korea, North', code: 'KP' },
            { name: 'Korea, South', code: 'KR' },
            { name: 'Kosovo', code: 'XK' },
            { name: 'Kuwait', code: 'KW' },
            { name: 'Kyrgyzstan', code: 'KG' },

            { name: 'Laos', code: 'LA' },
            { name: 'Latvia', code: 'LV' },
            { name: 'Lebanon', code: 'LB' },
            { name: 'Lesotho', code: 'LS' },
            { name: 'Liberia', code: 'LR' },
            { name: 'Libya', code: 'LY' },
            { name: 'Liechtenstein', code: 'LI' },
            { name: 'Lithuania', code: 'LT' },
            { name: 'Luxembourg', code: 'LU' },

            { name: 'Madagascar', code: 'MG' },
            { name: 'Malawi', code: 'MW' },
            { name: 'Malaysia', code: 'MY' },
            { name: 'Maldives', code: 'MV' },
            { name: 'Mali', code: 'ML' },
            { name: 'Malta', code: 'MT' },
            { name: 'Marshall Islands', code: 'MH' },
            { name: 'Mauritania', code: 'MR' },
            { name: 'Mauritius', code: 'MU' },
            { name: 'Mexico', code: 'MX' },
            { name: 'Micronesia', code: 'FM' },
            { name: 'Moldova', code: 'MD' },
            { name: 'Monaco', code: 'MC' },
            { name: 'Mongolia', code: 'MN' },
            { name: 'Montenegro', code: 'ME' },
            { name: 'Morocco', code: 'MA' },
            { name: 'Mozambique', code: 'MZ' },
            { name: 'Myanmar', code: 'MM' },

            { name: 'Namibia', code: 'NA' },
            { name: 'Nauru', code: 'NR' },
            { name: 'Nepal', code: 'NP' },
            { name: 'Netherlands', code: 'NL' },
            { name: 'New Zealand', code: 'NZ' },
            { name: 'Nicaragua', code: 'NI' },
            { name: 'Niger', code: 'NE' },
            { name: 'Nigeria', code: 'NG' },
            { name: 'North Macedonia', code: 'MK' },
            { name: 'Norway', code: 'NO' },

            { name: 'Oman', code: 'OM' },

            { name: 'Pakistan', code: 'PK' },
            { name: 'Palau', code: 'PW' },
            { name: 'Palestine', code: 'PS' },
            { name: 'Panama', code: 'PA' },
            { name: 'Papua New Guinea', code: 'PG' },
            { name: 'Paraguay', code: 'PY' },
            { name: 'Peru', code: 'PE' },
            { name: 'Philippines', code: 'PH' },
            { name: 'Poland', code: 'PL' },
            { name: 'Portugal', code: 'PT' },

            { name: 'Qatar', code: 'QA' },

            { name: 'Romania', code: 'RO' },
            { name: 'Russia', code: 'RU' },
            { name: 'Rwanda', code: 'RW' },

            { name: 'Saint Kitts and Nevis', code: 'KN' },
            { name: 'Saint Lucia', code: 'LC' },
            { name: 'Saint Vincent and the Grenadines', code: 'VC' },
            { name: 'Samoa', code: 'WS' },
            { name: 'San Marino', code: 'SM' },
            { name: 'Sao Tome and Principe', code: 'ST' },
            { name: 'Saudi Arabia', code: 'SA' },
            { name: 'Senegal', code: 'SN' },
            { name: 'Serbia', code: 'RS' },
            { name: 'Seychelles', code: 'SC' },
            { name: 'Sierra Leone', code: 'SL' },
            { name: 'Singapore', code: 'SG' },
            { name: 'Slovakia', code: 'SK' },
            { name: 'Slovenia', code: 'SI' },
            { name: 'Solomon Islands', code: 'SB' },
            { name: 'Somalia', code: 'SO' },
            { name: 'South Africa', code: 'ZA' },
            { name: 'South Sudan', code: 'SS' },
            { name: 'Spain', code: 'ES' },
            { name: 'Sri Lanka', code: 'LK' },
            { name: 'Sudan', code: 'SD' },
            { name: 'Suriname', code: 'SR' },
            { name: 'Sweden', code: 'SE' },
            { name: 'Switzerland', code: 'CH' },
            { name: 'Syria', code: 'SY' },

            { name: 'Taiwan', code: 'TW' },
            { name: 'Tajikistan', code: 'TJ' },
            { name: 'Tanzania', code: 'TZ' },
            { name: 'Thailand', code: 'TH' },
            { name: 'Togo', code: 'TG' },
            { name: 'Tonga', code: 'TO' },
            { name: 'Trinidad and Tobago', code: 'TT' },
            { name: 'Tunisia', code: 'TN' },
            { name: 'Turkey', code: 'TR' },
            { name: 'Turkmenistan', code: 'TM' },
            { name: 'Tuvalu', code: 'TV' },

            { name: 'Uganda', code: 'UG' },
            { name: 'Ukraine', code: 'UA' },
            { name: 'United Arab Emirates', code: 'AE' },
            { name: 'United Kingdom', code: 'GB' },
            { name: 'United States', code: 'US' },
            { name: 'Uruguay', code: 'UY' },
            { name: 'Uzbekistan', code: 'UZ' },

            { name: 'Vanuatu', code: 'VU' },
            { name: 'Vatican City', code: 'VA' },
            { name: 'Venezuela', code: 'VE' },
            { name: 'Vietnam', code: 'VN' },

            { name: 'Yemen', code: 'YE' },

            { name: 'Zambia', code: 'ZM' },
            { name: 'Zimbabwe', code: 'ZW' },
        ];

        const people = ['John', 'Jane', 'Bob', 'Pavan', 'Sachin']; 

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

        // Populate URL Fields for Selected Countries
        updateUrlFields();

        // Populate People List

        // Modify the People List section to include Vendor ID and V Type fields
       // Existing code...

// Populate People List
people.forEach(person => {
    const checkbox = document.createElement('input');
    checkbox.type = 'checkbox';
    checkbox.value = person;
    peopleList.appendChild(checkbox);
    peopleList.appendChild(document.createTextNode(person));



    peopleList.appendChild(document.createElement('br'));
});

function updateUrlFields() {
            urlFields.innerHTML = '';
            const selectedCountries = [...document.querySelectorAll('#countriesDropdown option:checked')];

            selectedCountries.forEach(country => {
                const countryLabel = document.createElement('label');
                countryLabel.textContent = `Country: ${country.value}`;
                urlFields.appendChild(countryLabel);

                const liveLinkField = document.createElement('input');
                liveLinkField.type = 'text';
                liveLinkField.name = `liveLink_${country.value.replace(/\s+/g, '_')}`;
                liveLinkField.placeholder = `Live Link for ${country.value}`;
                liveLinkField.setAttribute('data-code', allCountries.find(c => c.name === country.value)?.code);

                const testLinkField = document.createElement('input');
                testLinkField.type = 'text';
                testLinkField.name = `testLink_${country.value.replace(/\s+/g, '_')}`;
                testLinkField.placeholder = `Test Link for ${country.value}`;
                testLinkField.setAttribute('data-code', allCountries.find(c => c.name === country.value)?.code);

                urlFields.appendChild(liveLinkField);
                urlFields.appendChild(testLinkField);
                urlFields.appendChild(document.createElement('br'));
            });
        }

// Existing code...

// Modify the updateMaskedUrls function to include Vendor ID and V Type
// Modify the updateMaskedUrls function to include Vendor ID and V Type
function updateMaskedUrls() {
    maskedUrls.innerHTML = '';
    const selectedCountries = [...document.querySelectorAll('#countriesDropdown option:checked')];
    const selectedPeople = [...document.querySelectorAll('#peopleList input:checked')];

    selectedPeople.forEach(person => {
        selectedCountries.forEach(country => {
            const maskedUrl = document.createElement('li');
            const countryCode = allCountries.find(c => c.name === country.value)?.code;
            const liveLinkField = document.querySelector(`#urlFields input[name="liveLink_${country.value.replace(/\s+/g, '_')}"]`);
            const testLinkField = document.querySelector(`#urlFields input[name="testLink_${country.value.replace(/\s+/g, '_')}"]`);

           
            // Update the selector to find the adjacent input fields for Vendor ID and V Type
            const vendorIdField = document.querySelector(`#peopleList input[value="${person.value}"]`);
            const vTypeField = document.querySelector(`#peopleList input[value="${person.value}"]`);

            const combinedUrl = `LiveURLfor ${liveLinkField.value}in${country.value}(${countryCode})-VendorID:${vendorIdField.value},VType:${vTypeField.value}:${person.value}`;

            const combinedTestUrl = `Test URL for ${testLinkField.value} in ${country.value} (${countryCode}) - Vendor ID: ${vendorIdField.value}, V Type: ${vTypeField.value}: ${person.value}`;

            // maskedUrl.textContent = `${combinedUrl} \n${combinedTestUrl}`;
            maskedUrl.innerHTML = `${combinedUrl} <br> ${combinedTestUrl}`;

            maskedUrls.appendChild(maskedUrl);

            // Extract the first URL, Vendor ID, and V Type
            const extractedData = {
                url: liveLinkField.value,
                vendorId: vendorIdField.value,
                vType: vTypeField.value
            };

            // Use extractedData as needed (e.g., send to the server, display in console, etc.)
            console.log('Extracted Data:', extractedData);

            
        });
    });
}


// Existing code...

    

        document.getElementById('countriesDropdown').addEventListener('change', () => {
            updateUrlFields();
            updateMaskedUrls();
        });

        document.querySelectorAll('#peopleList input').forEach(checkbox => {
            checkbox.addEventListener('change', () => {
                updateMaskedUrls();
            });
        });





 // ... (existing code)

 <!-- Add a "Save" button -->



    // Existing code...

    // Add an event listener to the "Save" button
    document.getElementById('saveButton').addEventListener('click', () => {
        saveDataToDatabase();
    });

    function saveDataToDatabase() {
        const xhr = new XMLHttpRequest();
        xhr.open('POST', 'save_data.php', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

        const selectedCountries = [...document.querySelectorAll('#countriesDropdown option:checked')];
        const selectedPeople = [...document.querySelectorAll('#peopleList input:checked')];

        selectedPeople.forEach(person => {
            selectedCountries.forEach(country => {
                const countryCode = allCountries.find(c => c.name === country.value)?.code;
                const liveLinkField = document.querySelector(`#urlFields input[name="liveLink_${country.value.replace(/\s+/g, '_')}"]`);
                const testLinkField = document.querySelector(`#urlFields input[name="testLink_${country.value.replace(/\s+/g, '_')}"]`);

                const data = new URLSearchParams({
                    person: person.value,
                    country: country.value,
                    liveUrl: liveLinkField.value,
                    testUrl: testLinkField.value,
                   

                });

                xhr.send(data);
            });
        });

        // Optional: You can handle the response from the server here
        xhr.onload = function () {
            if (xhr.status >= 200 && xhr.status < 300) {
                console.log(xhr.responseText); // Log the response from the server
            } else {
                console.error('Request failed with status:', xhr.status);
            }
        };
    }
</script>

<script>
$.ajax({
            url: 'new_vendor.php',
            type: 'POST',
            data: yourData,
            success: function (resp) {
                console.log(resp);  // Log the response to the console for debugging
                resp = JSON.parse(resp);

                if (resp.status == 1) {
                    alert_toast('Data successfully saved.', "success");

                    // Update the vendor list in 'countryList' on implementation.php
                    var vendorList = resp.vendor_list;
                    var dropdownContent = $('#countryList');
                    dropdownContent.empty(); // Clear existing options

                    vendorList.forEach(function (vendor) {
                        var option = $('<div class="country-option"></div>').text(vendor.first_name);
                        dropdownContent.append(option);
                    });
                } else {
                    alert_toast('Failed to save data.', "error");
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error('AJAX Error:', textStatus, errorThrown);
            }
        });
        
</script>

</body>
</html>