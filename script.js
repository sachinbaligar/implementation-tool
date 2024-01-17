document.addEventListener("DOMContentLoaded", function () {
    const searchInput = document.getElementById("searchInput");
    const countryList = document.getElementById("countryList");
    const dropbtn = document.querySelector(".dropbtn");
  
    // Manually include USA and UK
    const manualCountries = ["USA", "UK"];
  
    // Fetch the list of countries from the REST Countries API
    fetch("https://restcountries.com/v3.1/all")
        .then(response => response.json())
        .then(data => {
            const countries = data.map(country => country.name.common);
  
            // Add manually included countries to the list
            countries.push(...manualCountries);
  
            // Populate the dropdown with country names
            countries.forEach(country => {
                const option = document.createElement("a");
                option.textContent = country;
                option.href = "#";
                option.addEventListener("click", function () {
                    searchInput.value = country;
                    countryList.classList.remove("show");
                });
                countryList.appendChild(option);
            });
        })
        .catch(error => console.error("Error fetching countries:", error));
  
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
  
        countryList.classList.add("show");
    });
  
    // Show/hide the dropdown when the button is clicked
    dropbtn.addEventListener("click", function () {
        countryList.classList.toggle("show");
    });
  
    // Close the dropdown if the user clicks outside of it
    window.addEventListener("click", function (event) {
        if (!event.target.matches(".dropbtn")) {
            if (countryList.classList.contains("show")) {
                countryList.classList.remove("show");
            }
        }
    });
  });
  



//   for countryList and country code----------------------------------------------------------------


  