<?php

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

// Get file ID from the URL parameter
$fileId = isset($_GET['fileId']) ? $_GET['fileId'] : 0;

// Fetch file data from the database
$sql = "SELECT file FROM vrf WHERE id = $fileId"; // Corrected column name

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $filePath = $row['file'];

    // Set the appropriate headers for file download
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream'); // Change content type to generic binary
    header('Content-Disposition: attachment; filename=' . basename($filePath));
    header('Expires: 0');
    header('Cache-Control: must-revalidate');
    header('Pragma: public');
    header('Content-Length: ' . filesize($filePath));

    // Read the file and output it to the browser
    readfile($filePath);
} else {
    echo "File not found.";
}

// Close the database connection
$conn->close();
?>
