<?php
include('db_connect.php');

// Extract parameters from the masked URL
$vid = isset($_GET['vid']) ? $_GET['vid'] : null;
$pid = isset($_GET['pid']) ? $_GET['pid'] : null;
$cnt = isset($_GET['cnt']) ? $_GET['cnt'] : null;

// Perform any necessary validation or checks here

// Construct the live URL based on the parameters
$liveUrl = constructLiveUrl($vid, $pid, $cnt);

// Redirect to the live URL
// header("Location: $liveUrl", true, 302);
// exit();
header("HTTP/1.1 301 Moved Permanently");
header("Location: $liveUrl");
exit();


function constructLiveUrl($vid, $pid, $cnt) {
    // Implement the logic to construct the live URL based on parameters
      return "youtube&vid=$vid&pid=$pid&cnt=$cnt";
}
?>
