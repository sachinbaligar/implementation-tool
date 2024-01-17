<?php
// Include the database connection code and other necessary configurations
include('db_connect.php');

// Get the mapping information from the request body
$data = json_decode(file_get_contents('php://input'), true);

if ($data && isset($data['maskedUrl']) && isset($data['originalUrl'])) {
    // Insert or update the mapping in the database
    $maskedUrl = $data['maskedUrl'];
    $originalUrl = $data['originalUrl'];

    // Use a table called 'url_mapping' with columns 'masked_url' and 'original_url'
    $query = "INSERT INTO url_mapping (masked_url, original_url) VALUES (?, ?) ON DUPLICATE KEY UPDATE original_url = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("sss", $maskedUrl, $originalUrl, $originalUrl);
    $stmt->execute();
    $stmt->close();
}

$conn->close();
?>
