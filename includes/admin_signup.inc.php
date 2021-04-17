<?php

if (isset($_POST['signup-submit'])) {

  require 'config.inc.php';

  $id = $_POST['hostel_man_id'];
  $username = $_POST['username'];
  $fname = $_POST['Fname'];
  $lname = $_POST['Lname'];
  $mobile = $_POST['mobile_no'];
  $email = $_POST['email'];
  $isadmin = $_POST['isadmin'];
  $password = $_POST['pwd'];
  $cnfpassword = $_POST['confirmpwd'];


  if(!preg_match("/^[a-zA-Z0-9]*$/",$username)){
    header("Location: ../signup-hm.php?error=invalidusername");
    exit();
  }
  else if($password !== $cnfpassword){
    header("Location: ../signup-hm.php?error=passwordcheck");
    exit();
  }
  else {

    $sql = "SELECT username FROM hostel_manager WHERE username=?";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt, $sql)){
      header("Location: ../signup-hm.php?error=sqlerror");
      exit();
    }
    else {
      mysqli_stmt_bind_param($stmt, "s", $username);
      mysqli_stmt_execute($stmt);
      mysqli_stmt_store_result($stmt);
      $resultCheck = mysqli_stmt_num_rows($stmt);
      if ($resultCheck > 0) {
        header("Location: ../signup-hm.php?error=userexists");
        exit();
      }
      else {
		$hostel_id = 0;
        $sql = "INSERT INTO hostel_manager (Hostel_man_id, Username, Fname, Lname, Mob_no, Hostel_id, Email, Isadmin, Pwd) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt = mysqli_stmt_init($conn);
        if(!mysqli_stmt_prepare($stmt, $sql)){
          header("Location: ../signup-hm.php?error=sqlerror");
          exit();
        }
        else {

          $hashedPwd = password_hash($password, PASSWORD_DEFAULT);

          mysqli_stmt_bind_param($stmt, "sssssssss", $id, $username, $fname, $lname, $mobile, $hostel_id, $email, $isadmin, $hashedPwd);
          mysqli_stmt_execute($stmt);
          header("Location: ../login-hostel_manager.php?signup=success");
          exit();
        }
      }
    }

  }
  mysqli_stmt_close($stmt);
  mysqli_close($conn);

}
else {
  header("Location: ../login-hostel_manager.php");
  exit();
}
