<?php
include 'db_connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Extract form data
    extract($_POST);

    // Extract file data
    $fileName = $_FILES["file"]["name"];
    $filePath = "uploads/" . $fileName;

    // Move the uploaded file to the specified folder
    if (move_uploaded_file($_FILES["file"]["tmp_name"], $filePath)) {
        // Prepare SQL query for vendor data
        $vendorQuery = "INSERT INTO vendor_list (firstname, middlename, lastname, email, Contact, Market, type, Pt, Remarks, Details, Vid, Complete, Terminate, Fq, St, Qr,Name1,email1,Contact1) 
                        VALUES ('$firstname', '$middlename', '$lastname', '$email', '$Contact', '$Market', '$type', '$Pt', '$Remarks', '$Details', '$Vid', '$Complete', '$Terminate', '$Fq', '$St', '$Qr','$Name1','$email1','$Contact1')";

        if ($conn->query($vendorQuery) === TRUE) {
            // Get the last inserted ID
            $vendor_id = $conn->insert_id;

            // Prepare SQL query for file data
            $fileQuery = "UPDATE vendor_list SET filename='$fileName', filepath='$filePath' WHERE id = $vendor_id";

            if ($conn->query($fileQuery) === TRUE) {
                echo "Data and file uploaded successfully.";
            } else {
                echo "Error updating file data: " . $conn->error;
            }
        } else {
            echo "Error uploading vendor data: " . $conn->error;
        }
    } else {
        echo "Error uploading file.";
    }
}

$conn->close();
?>
