<?php
ob_start();
$action = $_GET['action'];
include 'admin_class.php';
$crud = new Action();

if($action == 'login'){
	$login = $crud->login();
	if($login)
		echo $login;
}
if($action == 'logout'){
	$logout = $crud->logout();
	if($logout)
		echo $logout;
}
if($action == 'save_user'){
	$save = $crud->save_user();
	if($save)
		echo $save;
}

if($action == 'save_vendor'){
	$save = $crud->save_vendor();
	if($save)
		echo $save; 
}
if($action == "save_project"){
	$save = $crud->save_project();
	if($save)
		echo $save;
}
if($action == "save_vrf"){
	$save = $crud->save_vrf();
	if($save)
		echo $save;
}



	 







// function generateUniqueID() {
//     // Get the current timestamp
//     $timestamp = time();

//     // Format the timestamp as YYYYMMDD
//     $datePart = date("Ymd", $timestamp);

//     // Check if the counter is set in the session
//     if (!isset($_SESSION['counter'])) {
//         // If not, initialize it to 1
//         $_SESSION['counter'] = 0;
		
//     } else {
//         // Increment the counter by 1 for each new ID
// 		$_SESSION['counter']++;
		
//     }

//     // Combine timestamp and counter to create a unique ID
//     $uniqueID = $datePart . str_pad($_SESSION['counter'],  '0', STR_PAD_LEFT);

//     return $uniqueID;
// }


// function generateUniqueIDs($count = 5) {
//     $date = date("Ymd");
//     $codes = [];

//     for ($i = 0; $i < $count; $i++) {
//         // Retrieve the last used number from your database (replace this with your actual logic)
//         // You need to implement this function

//         // Increment the last number
//         $number = 1; // You can replace this with the logic to get the incremented value from the database

//         // Save the updated number back to your database (replace this with your actual logic)
//         // You need to implement this function

//         // Create the unique code
//         $id = $date . str_pad($number, 4, "0", STR_PAD_LEFT);

//         $codes[] = $id;

//         // Increment the last number for the next iteration
//         $number++;
//     }

//     return $codes;
// }





// Your existing code...

// Handle the "save_project" action
// if ($_GET['action'] == "save_project") {
//     $id = generateUniqueIDs(); // Generate a unique ID using the function

//     // Call the save_project method with the unique ID
//     $save = $crud->save_project($id);

//     if ($save) {
//         echo $save;
//     }
// }
   



// function generateUniqueId() {
//     static $counter = 1;  // Static variable to keep track of the counter within the same script execution
//     $datePart = date("Ymd");

//     // Format the counter with leading zeros and concatenate it with the date part
//     $formattedCounter = sprintf("%04d", $counter);

//     // Increment the counter for the next call
//     $counter++;

//     // Concatenate the date part and the formatted counter to create the unique ID
//     $uniqueId = $datePart . $formattedCounter;

//     return $uniqueId;
// }

// // Handle the "save_project" action
// if ($_GET['action'] == "save_project") {
//     $id = generateUniqueId(); // Generate a unique ID using the function

//     // Call the save_project method with the unique ID
//     $save = $crud->save_project($id);

//     if ($save) {
//         echo $save;
//     }
// }
   



	
	

if($action == 'save_page_img'){
	$save = $crud->save_page_img();
	if($save)
		echo $save;
}
if($action == 'delete_user'){
	$save = $crud->delete_user();
	if($save)
		echo $save;
}
if($action == 'delete_vendor'){
	$save = $crud->delete_vendor();
	if($save)
		echo $save;
}
if($action == "save_survey"){
	$save = $crud->save_survey();
	if($save)
		echo $save;
}
if($action == "delete_survey"){
	$delete = $crud->delete_survey();
	if($delete)
		echo $delete;
}
if($action == "save_question"){
	$save = $crud->save_question();
	if($save)
		echo $save;
}
if($action == "delete_question"){
	$delsete = $crud->delete_question();
	if($delsete)
		echo $delsete;
}
if($action == 'delete_project'){
	$save = $crud->delete_project();
	if($save)
		echo $save;
}
if($action == "action_update_qsort"){
	$save = $crud->action_update_qsort();
	if($save)
		echo $save;
}
if($action == "save_answer"){
	$save = $crud->save_answer();
	if($save)
		echo $save;
}
if($action == "update_user"){
	$save = $crud->update_user();
	if($save)
		echo $save;
}

ob_end_flush();
?>
