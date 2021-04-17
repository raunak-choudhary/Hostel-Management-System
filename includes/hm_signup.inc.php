<?php

if (isset($_POST['hm_signup_submit'])) {

  require 'config.inc.php';

  //$id = $_POST['hm_id']; 
  $username= $_POST['hm_uname'];
  $fname = $_POST['hm_fname'];
  $lname = $_POST['hm_lname'];
  $mobile = $_POST['hm_mobile'];
  $hostel_id = $_POST['hostel_id'];
  $email = $_POST['Email'];
  $password = $_POST['pass'];
  $cnfpassword = $_POST['confpass'];
  $isadmin = 0;


  if(!preg_match("/^[a-zA-Z0-9]*$/",$username)){
    header("Location: ../admin/create_hm.php?error=invalidusername");
    exit();
  }
  else if($password !== $cnfpassword){
    header("Location: ../admin/create_hm.php?error=passwordcheck");
    exit();
  }
  else {

    $sql = "SELECT Username FROM Hostel_Manager WHERE Username=?";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt, $sql)){
      header("Location: ../admin/create_hm.php?error=sqlerror");
      exit();
    }
    else {
      mysqli_stmt_bind_param($stmt, "s", $username);
      mysqli_stmt_execute($stmt);
      mysqli_stmt_store_result($stmt);
      $resultCheck = mysqli_stmt_num_rows($stmt);
      if ($resultCheck > 0) {
        header("Location: ../admin/create_hm.php?error=userexists");
        exit();
      }
      else {
        $sql = "INSERT INTO hostel_manager (Hostel_man_id, Username, Fname, Lname, Mob_no, Hostel_id, Email, Isadmin, Pwd) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt = mysqli_stmt_init($conn);
        if(!mysqli_stmt_prepare($stmt, $sql)){
          header("Location: ../admin/create_hm.php?error=sqlerror");
          exit();
        }
        else {

          $hashedPwd = password_hash($password, PASSWORD_DEFAULT);

          mysqli_stmt_bind_param($stmt, "sssssssss", $id, $username, $fname, $lname, $mobile, $hostel_id, $email, $isadmin, $hashedPwd);
          mysqli_stmt_execute($stmt);
          header("Location: ../admin/create_hm.php?signup=success");
          exit();
        }
      }
	}

      
    }

  
  mysqli_stmt_close($stmt);
  mysqli_close($conn);

}
else {
  header("Location: ../admin/create_hm.php");
  exit();
}
