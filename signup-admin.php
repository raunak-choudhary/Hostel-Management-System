<!DOCTYPE html>
<html lang="en">

<head>
    <title>SIGNUP PAGE FOR ADMIN/HOSTEL-MANAGER</title>
    <!-- meta tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords" content="Art Sign Up Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates,
		Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
    />
    <!-- /meta tags -->
    <!-- custom style sheet -->
    <link href="web/css/style.css" rel="stylesheet" type="text/css" />
    <!-- /custom style sheet -->
    <!-- fontawesome css -->
    <link href="web/css/fontawesome-all.css" rel="stylesheet" />
    <!-- /fontawesome css -->
    <!-- google fonts-->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- /google fonts-->

</head>


<body>
    <h1>Hostel Management System</h1>
    <div class=" w3l-login-form">
        <h2>Sign Up Here</h2>
        <form action="includes/admin_signup.inc.php" method="POST">

            <div class=" w3l-form-group">
                <label>Hostel Manager/Admin Id</label>
                <div class="group">
                    <i class="fas fa-id-badge"></i>
                    <input type="text" class="form-control" name="hostel_man_id" placeholder="ID" required="required" />
                </div>
            </div>
			<div class=" w3l-form-group">
                <label>Username</label>
                <div class="group">
                    <i class="fas fa-id-badge"></i>
                    <input type="text" class="form-control" name="username" placeholder="Username" required="required" />
                </div>
            </div>
            <div class=" w3l-form-group">
                <label>First Name</label>
                <div class="group">
                    <i class="fas fa-user"></i>
                    <input type="text" class="form-control" name="Fname" placeholder="First Name" required="required" />
                </div>
            </div>
            <div class=" w3l-form-group">
                <label>Last Name</label>
                <div class="group">
                    <i class="fas fa-user"></i>
                    <input type="text" class="form-control" name="Lname" placeholder="Last Name" required="required" />
                </div>
            </div>
            <div class=" w3l-form-group">
                <label>Mobile No</label>
                <div class="group">
                    <i class="fas fa-phone"></i>
                    <input type="text" class="form-control" name="mobile_no" placeholder="Mobile No" required="required" />
                </div>
            </div>
            <!--<div class=" w3l-form-group">
                <label>Hostel_ID</label>
                <div class="group">
                    <i class="fas fa-graduation-cap"></i>
                    <input type="text" class="form-control" name="hostel_id" placeholder="Hostel_ID" />
                </div>
            </div>-->
            <div class=" w3l-form-group">
                <label>Email:</label>
                <div class="group">
                    <i class="fas fa-envelope"></i>
                    <input type="text" class="form-control" name="email" placeholder="Email" required="required" />
                </div>
            </div>
			<div class=" w3l-form-group">
                <label>Are you Admin?</label>
                <div class="group">
                    <i class="fas fa-graduation-cap"></i>
                    <input type="text" class="form-control" name="isadmin" placeholder="Hostel Manager: 0 / Admin: 1" required="required" />
                </div>
            </div>
            <div class=" w3l-form-group">
                <label>Password:</label>
                <div class="group">
                    <i class="fas fa-unlock"></i>
                    <input type="password" class="form-control" name="pwd" placeholder="Password" required="required" />
                </div>
            </div>

            <div class=" w3l-form-group">
                <label>Confirm Password:</label>
                <div class="group">
                    <i class="fas fa-unlock"></i>
                    <input type="password" class="form-control" name="confirmpwd" placeholder="Confirm Password" required="required" />
                </div>
            </div>
            <!--<div class="forgot">
                <a href="#">Forgot Password?</a>
                <p><input type="checkbox">Remember Me</p>
            </div>-->
            <button type="submit" name="signup-submit">Sign Up</button>
        </form>
        <p class=" w3l-register-p">Already a member?<a href="login-hostel_manager.php" class="register"> Login</a></p>
    </div>
    <footer>
        <p class="copyright-agileinfo"> &copy; 2020 Web Technology Mini Project. All Rights Reserved | Design by <a href="https://www.linkedin.com/in/raunak-choudhary/">Raunak Choudhary</a> and <a href="https://www.linkedin.com/in/vighnesh-shetty/">Vighnesh Shetty</a></p>
    </footer>

</body>

</html>