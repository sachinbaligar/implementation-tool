<?php
// Connect to your database (update these with your actual database credentials)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "survey_db";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get data from the AJAX request
$person = $_POST['person'];
$country = $_POST['country'];
$liveUrl = $_POST['liveUrl'];
$testUrl = $_POST['testUrl'];

// Insert data into the database
$sql = "INSERT INTO masked_urls (person, country, live_url, test_url) VALUES ('$person', '$country', '$liveUrl', '$testUrl')";

if ($conn->query($sql) === TRUE) {
    echo "Data inserted successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Close the database connection
$conn->close();
?>
