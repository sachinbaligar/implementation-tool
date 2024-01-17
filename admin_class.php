<?php
session_start();
ini_set('display_errors', 1);
Class Action {
	private $db;

	public function __construct() {
		ob_start();
   	include 'db_connect.php';
    
    $this->db = $conn;
	}
	function __destruct() {
	    $this->db->close();
	    ob_end_flush();
	}

	function login(){
		extract($_POST);
			$qry = $this->db->query("SELECT *,concat(lastname,', ',firstname,' ',middlename) as name FROM users where email = '".$email."' and password = '".md5($password)."' ");
		if($qry->num_rows > 0){
			foreach ($qry->fetch_array() as $key => $value) {
				if($key != 'password' && !is_numeric($key))
					$_SESSION['login_'.$key] = $value;
			}
				return 1;
		}else{
			return 3;
		}
	}
	function logout(){
		session_destroy();
		foreach ($_SESSION as $key => $value) {
			unset($_SESSION[$key]);
		}
		header("location:login.php");
	}

	function save_user(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k => $v){
			if(!in_array($k, array('id','cpass')) && !is_numeric($k)){
				if($k =='password')
					$v = md5($v);
				if(empty($data)){
					$data .= " $k='$v' ";
				}else{
					$data .= ", $k='$v' ";
				}
			}
		}
		$check = $this->db->query("SELECT * FROM users where email ='$email' ".(!empty($id) ? " and id != {$id} " : ''))->num_rows;

		if($check > 0){
			return 2;
			exit;
		}
		if(empty($id)){
			$save = $this->db->query("INSERT INTO users set $data");
		}else{
			$save = $this->db->query("UPDATE users set $data where id = $id");
		}

		if($save){
			return 1;
		}
	}
	function update_user(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k => $v){
			if(!in_array($k, array('id','cpass','table')) && !is_numeric($k)){
				if($k =='password')
					$v = md5($v);
				if(empty($data)){
					$data .= " $k='$v' ";
				}else{
					$data .= ", $k='$v' ";
				}
			}
		}
		$check = $this->db->query("SELECT * FROM users where email ='$email' ".(!empty($id) ? " and id != {$id} " : ''))->num_rows;
		if($check > 0){
			return 2;
			exit;
		}
		if(empty($id)){
			$save = $this->db->query("INSERT INTO users set $data");
		}else{
			$save = $this->db->query("UPDATE users set $data where id = $id");
		}

		if($save){
			foreach ($_POST as $key => $value) {
				if($key != 'password' && !is_numeric($key))
					$_SESSION['login_'.$key] = $value;
			}
			return 1;
		}
	}
	function delete_user(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM users where id = ".$id);
		if($delete)
			return 1;
	}



	function save_vendor(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k => $v){
			if(!in_array($k, array('id')) && !is_numeric($k)){
				if(empty($data)){
					$data .= " $k='$v' ";
				}else{
					$data .= ", $k='$v' ";
				}
			}
		}
		if(empty($id)){
			$save = $this->db->query("INSERT INTO vendor_list set $data");
		}else{
			$save = $this->db->query("UPDATE vendor_list set $data where id = $id");
		}

		if($save)
			return 1;
	}


	// function save_vendor(){
	// 	extract($_POST);
	
	// 	// File upload handling
	// 	$file_uploaded = false;
	// 	$file_path = '';  // Define the path where you want to store the uploaded files
	
	// 	if (isset($_FILES['file'])) {
	// 		$file_name = $_FILES['filename']['name'];
	// 		$file_tmp = $_FILES['filename']['tmp_name'];
	
	// 		// Move the uploaded file to the desired directory
	// 		$file_path = '/uploads/' . $file_name;
	// 		move_uploaded_file($file_tmp, $file_path);
	
	// 		$file_uploaded = true;
	// 	}
	
	// 	// Prepare data for database insertion
	// 	$data = "";
	// 	foreach ($_POST as $k => $v) {
	// 		if (!in_array($k, array('id', 'filename')) && !is_numeric($k)) {
	// 			if (empty($data)) {
	// 				$data .= " $k='" . ($k == 'file_path' ? $file_path : $v) . "' ";
	// 			} else {
	// 				$data .= ", $k='" . ($k == 'file_path' ? $file_path : $v) . "' ";
	// 			}
	// 		}
	// 	}
	
	// 	// Perform database insertion or update
	// 	if (empty($id)) {
	// 		$save = $this->db->query("INSERT INTO vendor_list SET $data");
	// 	} else {
	// 		$save = $this->db->query("UPDATE vendor_list SET $data WHERE id = $id");
	// 	}
	
	// 	if ($save) {
	// 		return 1;
	// 	}
	// }
	
	// (its per perfect)function save_vendor(){
	// 	extract($_POST);
		
	// 	// File upload handling
	// 	$file_uploaded = false;
	// 	$file_path = '';  // Define the path where you want to store the uploaded files
		
	// 	if (isset($_FILES['file'])) {
	// 		$file_name = $_FILES['file']['name'];
	// 		$file_tmp = $_FILES['file']['tmp_name'];
		
	// 		// Move the uploaded file to the desired directory
	// 		$file_path = 'uploads/' . $file_name; // Corrected the path
	// 		move_uploaded_file($file_tmp, $file_path);
		
	// 		$file_uploaded = true;
	// 	}
		
	// 	// Prepare data for database insertion
	// 	$data = "";
	// 	foreach ($_POST as $k => $v) {
	// 		if (!in_array($k, array('id', 'file')) && !is_numeric($k)) {
	// 			if (empty($data)) {
	// 				$data .= " $k='" . ($k == 'file_path' ? $file_path : $v) . "' ";
	// 			} else {
	// 				$data .= ", $k='" . ($k == 'file_path' ? $file_path : $v) . "' ";
	// 			}
	// 		}
	// 	}
		
	// 	// Perform database insertion or update
	// 	if (empty($id)) {
	// 		$save = $this->db->query("INSERT INTO vendor_list SET $data");
	// 	} else {
	// 		$save = $this->db->query("UPDATE vendor_list SET $data WHERE id = $id");
	// 	}
		
	// 	if ($save) {
	// 		return 1;
	// 	}
	// }


	// function save_vendor(){
	// 	extract($_POST);
	
	// 	// File upload handling
	// 	$file_uploaded = false;
	// 	$file_path = '';  // Define the path where you want to store the uploaded files
	
	// 	if (isset($_FILES['file_path']) && $_FILES['file_path']['error'] == UPLOAD_ERR_OK) {
	// 		$file_name = $_FILES['file_path']['name'];
	// 		$file_tmp = $_FILES['file_path']['tmp_name'];
	
	// 		// Move the uploaded file to the desired directory
	// 		$file_path = 'uploads/' . $file_name; // Corrected the path
	// 		move_uploaded_file($file_tmp, $file_path);
	
	// 		$file_uploaded = true;
	// 	}
	
	// 	// Prepare data for database insertion
	// 	$data = "";
	// 	foreach ($_POST as $k => $v) {
	// 		if (!in_array($k, array('id', 'file_path', 'file')) && !is_numeric($k)) {
	// 			if (empty($data)) {
	// 				$data .= " $k='" . ($k == 'file_path' ? $file_path : $v) . "' ";
	// 			} else {
	// 				$data .= ", $k='" . ($k == 'file_path' ? $file_path : $v) . "' ";
	// 			}
	// 		}
	// 	}
	
	// 	// Perform database insertion or update
	// 	if (empty($id)) {
	// 		$save = $this->db->query("INSERT INTO vendor_list SET $data");
	// 	} else {
	// 		$save = $this->db->query("UPDATE vendor_list SET $data WHERE id = $id");
	// 	}
	
	// 	if ($save) {
	// 		return 1;
	// 	}
	// }





	// function save_vrf(){
	// 	extract($_POST);
	// 	$data = "";
	// 	foreach($_POST as $k => $v){
	// 		if(!in_array($k, array('id')) && !is_numeric($k)){
	// 			if(empty($data)){
	// 				$data .= " $k='$v' ";
	// 			} else {
	// 				$data .= ", $k='$v' ";
	// 			}
	// 		}
	// 	}
	
	// 	$targetDirectory = "uploads/";
	// 	$targetFile = $targetDirectory . basename($_FILES["file"]["name"]);
	
	// 	if (move_uploaded_file($_FILES["file"]["tmp_name"], $targetFile)) {
	// 		// File uploaded successfully, now insert data into database
	// 		$data .= ", file='$targetFile'";
	// 	} else {
	// 		return json_encode(array('status' => 0, 'message' => 'Error uploading file.'));
	// 	}
	
	// 	if(empty($id)){
	// 		$save = $this->db->query("INSERT INTO vrf set $data");
	// 	} else {
	// 		$save = $this->db->query("UPDATE vrf set $data where id = $id");
	// 	}
	
	// 	if($save) {
	// 		// Fetch the updated list of vendors from the database																															
	// 		$vrf = $this->db->query("SELECT id, vendorName FROM vrf")->fetch_all(MYSQLI_ASSOC);
	// 		return json_encode(array('status' => 1, 'vrf' => $vrf));
	// 	} else {
	// 		return json_encode(array('status' => 0, 'message' => 'Failed to save vendor.'));
	// 	}
	// }



	
	function save_vrf()
	{
		// Check if the form is submitted
		if ($_SERVER["REQUEST_METHOD"] == "POST") {
			// Get form data
			$vendorName = $_POST['vendorName'];
	
			// File upload
			$targetDirectory = "uploads/"; // Replace with your desired directory
			$targetFile = $targetDirectory . basename($_FILES["file"]["name"]);
	
			// Check if the file has an allowed extension
			$fileExtension = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));
			$allowedExtensions = array("jpg", "jpeg", "png", "pdf"); // Add your allowed extensions
	
			if (!in_array($fileExtension, $allowedExtensions)) {
				echo "Error: Invalid file extension.";
				return;
			}
	
			if (move_uploaded_file($_FILES["file"]["tmp_name"], $targetFile)) {
				echo "File uploaded successfully.";
	
				// You can add your further processing logic here if needed
	
			} else {
				echo "Error uploading file.";
			}
		}
	}
	
	
	












	







	
	




	// function save_vendor(){
	// 	extract($_POST);
	// 	$data = "";
	// 	foreach($_POST as $k => $v){
	// 		if(!in_array($k, array('id')) && !is_numeric($k)){
	// 			if(empty($data)){
	// 				$data .= " $k='$v' ";
	// 			} else {
	// 				$data .= ", $k='$v' ";
	// 			}
	// 		}
	// 	}
	
	// 	if(empty($id)){
	// 		$save = $this->db->query("INSERT INTO vendor_list set $data");
	// 	} else {
	// 		$save = $this->db->query("UPDATE vendor_list set $data where id = $id");
	// 	}
	
	// 	if($save) {
	// 		// Fetch the updated list of vendors from the database																															
	// 		$vendor_list = $this->db->query("SELECT id, first_name FROM vendor_list")->fetch_all(MYSQLI_ASSOC);
	// 		return json_encode(array('status' => 1, 'vendor_list' => $vendor_list));
	// 	} else {
	// 		return json_encode(array('status' => 0, 'message' => 'Failed to save vendor.'));
	// 	}
	// }
	




	function delete_vendor(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM vendor_list where id = ".$id);
		if($delete)
			return 1;
	}

	// function save_project(){
	// 	extract($_POST);
	// 	$data = "";
	// 	foreach($_POST as $k => $v){
	// 		if(!in_array($k, array('id')) && !is_numeric($k)){
	// 			if(empty($data)){
	// 				$data .= " $k='$v' ";
	// 			}else{
	// 				$data .= ", $k='$v' ";
	// 			}
	// 		}
	// 	}
	// 	if(empty($id)){
	// 		$save = $this->db->query("INSERT INTO project_list set $data");
	// 	}else{
	// 		$save = $this->db->query("UPDATE project_list set $data where id = $id");
	// 	}

	// 	if($save)
	// 		return 1;
	// }





	



	
	// function save_project($id) {
	// 	extract($_POST);
	
	// 	// Generate a unique ID
	// 	$id = generateUniqueId();
	
	// 	$data = "";
	// 	foreach ($_POST as $k => $v) {
	// 		if (!in_array($k, array('id')) && !is_numeric($k)) {
	// 			if (empty($data)) {
	// 				$data .= " $k='$v' ";
	// 			} else {
	// 				$data .= ", $k='$v' ";
	// 			}
	// 		}
	// 	}
	
	// 	$save = $this->db->query("INSERT INTO project_list set id='$id', $data");
	
	// 	if ($save) {
	// 		return 1;
	// 	}
	// }
	

	







	function save_project() {
		extract($_POST);
	
		// Get the current date in the format YYYYMMDD
		$currentDate = date('Ymd');
	
		// Query to get the highest ID for the current date
		$result = $this->db->query("SELECT MAX(SUBSTRING(id, 9)) as max_id FROM project_list WHERE SUBSTRING(id, 1, 8) = '{$currentDate}'")->fetch_assoc();
	
		// Extract the highest ID for the current date
		$maxId = $result['max_id'];
	
		// If no records exist for the current date, start from 1
		if ($maxId === null) {
			$maxId = 0;
		}
	
		// Increment the ID for the current date
		$nextId = str_pad(($maxId + 1), 4, '0', STR_PAD_LEFT);
	
		// Generate the new project ID
		$newProjectId = $currentDate . $nextId;
	
		$data = "";
		foreach ($_POST as $k => $v) {
			if (!in_array($k, array('id')) && !is_numeric($k)) {
				if (empty($data)) {
					$data .= " $k='$v' ";
				} else {
					$data .= ", $k='$v' ";
				}
			}
		}
	
		$save = $this->db->query("INSERT INTO project_list SET id='$newProjectId', $data");
	
		if ($save) {
			return 1;
		}
	}
	
	









	// function save_project(){
	// 	extract($_POST);
	// 	$data = "";
		
	// 	// Construct key-value pairs for the query
	// 	foreach($_POST as $k => $v){
	// 		if(!in_array($k, array('id')) && !is_numeric($k)){
	// 			if(empty($data)){
	// 				$data .= " $k='$v' ";
	// 			} else {
	// 				$data .= ", $k='$v' ";
	// 			}
	// 		}
	// 	}
	
	// 	// Check if 'id' is empty
	// 	if(empty($id)){
	// 		// Generate the id dynamically
	// 		$id = $this->generate_project_id($db);
			
	// 		// Add 'id' to the key-value pairs
	// 		$data .= ", id='$id'";
			
	// 		// Perform INSERT query
	// 		$save = $this->db->query("INSERT INTO project_list SET $data");
	// 	} else {
	// 		// Perform UPDATE query
	// 		$save = $this->db->query("UPDATE project_list SET $data WHERE id = $id");
	// 	}
	
	// 	if($save) {
	// 		return 1;
	// 	}
	// }
	
	// function generate_project_id($db) {
	// 	// Perform INSERT query to generate auto-increment value
	// 	$db->query("INSERT INTO project_list (Country, CostPerInterview, StartDate, Vendorlist, Livelink, Testlink) VALUES ('', '', '', '', '', '')");
	
	// 	if ($db->error) {
	// 		echo "Error generating project ID: " . $db->error;
	// 		return 0; // Return 0 to indicate failure
	// 	}
	
	// 	// Get the last inserted ID (auto-increment value)
	// 	$autoIncrement = $db->insert_id;
	
	// 	// Combine date and time with auto-increment value
	// 	$projectID = date('YmdHis') . str_pad($autoIncrement, 4, '0', STR_PAD_LEFT);
	
	// 	return $projectID;
	// }
	




	function delete_project(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM project_list where id = ".$id);
		if($delete){
			return 1;
		}
	}

	
	function save_page_img(){
		extract($_POST);
		if($_FILES['img']['tmp_name'] != ''){
				$fname = strtotime(date('y-m-d H:i')).'_'.$_FILES['img']['name'];
				$move = move_uploaded_file($_FILES['img']['tmp_name'],'assets/uploads/'. $fname);
				if($move){
					$protocol = strtolower(substr($_SERVER["SERVER_PROTOCOL"],0,5))=='https'?'https':'http';
					$hostName = $_SERVER['HTTP_HOST'];
						$path =explode('/',$_SERVER['PHP_SELF']);
						$currentPath = '/'.$path[1]; 
   						 // $pathInfo = pathinfo($currentPath); 

					return json_encode(array('link'=>$protocol.'://'.$hostName.$currentPath.'/admin/assets/uploads/'.$fname));

				}
		}
	}

	function save_survey(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k => $v){
			if(!in_array($k, array('id')) && !is_numeric($k)){
				if(empty($data)){
					$data .= " $k='$v' ";
				}else{
					$data .= ", $k='$v' ";
				}
			}
		}
		if(empty($id)){
			$save = $this->db->query("INSERT INTO survey_set set $data");
		}else{
			$save = $this->db->query("UPDATE survey_set set $data where id = $id");
		}

		if($save)
			return 1;
	}
	function delete_survey(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM survey_set where id = ".$id);
		if($delete){
			return 1;
		}
	}
	
	function save_question(){
		extract($_POST);
			$data = " survey_id=$sid ";
			$data .= ", question='$question' ";
			$data .= ", type='$type' ";
			if($type != 'textfield_s'){
				$arr = array();
				foreach ($label as $k => $v) {
					$i = 0 ;
					while($i == 0){
						$k = substr(str_shuffle(str_repeat($x='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', ceil(5/strlen($x)) )),1,5);
						if(!isset($arr[$k]))
							$i = 1;
					}
					$arr[$k] = $v;
				}
			$data .= ", frm_option='".json_encode($arr)."' ";
			}else{
			$data .= ", frm_option='' ";
			}
		if(empty($id)){
			$save = $this->db->query("INSERT INTO questions set $data");
		}else{
			$save = $this->db->query("UPDATE questions set $data where id = $id");
		}

		if($save)
			return 1;
	}
	function delete_question(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM questions where id = ".$id);
		if($delete){
			return 1;
		}
	}
	function action_update_qsort(){
		extract($_POST);
		$i = 0;
		foreach($qid as $k => $v){
			$i++;
			$update[] = $this->db->query("UPDATE questions set order_by = $i where id = $v");
		}
		if(isset($update))
			return 1;
	}
	function save_answer(){
		extract($_POST);
			foreach($qid as $k => $v){
				$data = " survey_id=$survey_id ";
				$data .= ", question_id='$qid[$k]' ";
				$data .= ", user_id='{$_SESSION['login_id']}' ";
				if($type[$k] == 'check_opt'){
					$data .= ", answer='[".implode("],[",$answer[$k])."]' ";
				}else{
					$data .= ", answer='$answer[$k]' ";
				}
				$save[] = $this->db->query("INSERT INTO answers set $data");
			}
					

		if(isset($save))
			return 1;
	}
	
	function delete_comment(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM comments where id = ".$id);
		if($delete){
			return 1;
		}
	}
}