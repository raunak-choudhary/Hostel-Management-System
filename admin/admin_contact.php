
<?php

 require '../includes/config.inc.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Hostel Management System</title>
	
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Intrend Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Meta tag Keywords -->
		<link href="../web_home/css_home/slider.css" type="text/css" rel="stylesheet" media="all">
	<!-- css files -->
	<link rel="stylesheet" href="../web_home/css_home/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="../web_home/css_home/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	<link rel="stylesheet" href="../web_home/css_home/fontawesome-all.css"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<link rel="stylesheet" href="../web_home/css_home/flexslider.css" type="text/css" media="screen" property="" />
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Poiret+One&amp;subset=cyrillic,latin-ext" rel="stylesheet">
	<!-- //web-fonts -->
	
</head>

<body>

<!-- banner -->
<div class="inner-page-banner" id="home"> 	   
	<!--Header-->
	<header>
		<div class="container agile-banner_nav">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				
				<h1><a class="navbar-brand" href="admin_home.php">SMVITM<span class="display"></span></a></h1>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
				 	<ul class="navbar-nav ml-auto">
						<li class="nav-item">
							<a class="nav-link" href="admin_home.php">Home</a>
						</li>
						
			<li class="nav-item">
							<a class="nav-link" href="create_hm.php">Appoint Hostel Manager</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="students.php">Students</a>
						</li>
						<li class="nav-item active">
							<a class="nav-link" href="admin_contact.php">Contact  <span class="sr-only">(current)</span></a>
						</li>
						<li class="dropdown nav-item">
						<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"><?php echo $_SESSION['username']; ?>
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu agile_short_dropdown">
							<li>
								<a href="admin_profile.php">My Profile</a>
							</li>
							<li>
								<a href="../includes/logout.inc.php">Logout</a>
							</li>
						</ul>
					</li>
					</ul>
				</div>
			  
			</nav>
		</div>
	</header>
	<!--Header-->
</div>
<!-- //banner --> 

<!-- contact -->
<section class="contact py-5">
	<div class="container">
		<h2 class="heading text-capitalize mb-sm-5 mb-4"> Contact Us </h2>
			<div class="mail_grid_w3l">
				<form action="admin_contact.php" method="post">
					<div class="row">
						<div class="col-md-6 contact_left_grid" data-aos="fade-right">
							<div class="contact-fields-w3ls">
								<input type="text" name="username" placeholder="Username" value="<?php echo $_SESSION['username']; ?>" required="">
							</div>
							<div class="contact-fields-w3ls">
								<input type="text" name="name" placeholder="Name" value="<?php echo $_SESSION['fname']." ".$_SESSION['lname']; ?>" required="">
							</div>
							<div class="contact-fields-w3ls">
								<input type="email" name="email" placeholder="Hostel Manager Email" required="">
							</div>
							<div class="contact-fields-w3ls">
								<input type="text" name="hostel_name" placeholder="Hostel Name" required="">
							</div>
							<div class="contact-fields-w3ls">
								<input type="text" name="subject" placeholder="Subject" required="">
							</div>
						</div>
						<div class="col-md-6 contact_left_grid" data-aos="fade-left">
							<div class="contact-fields-w3ls">
								<textarea name="message" placeholder="Message..." required=""></textarea>
							</div>
							<input type="submit" name="submit" value="Submit">
						</div>
					</div>

				</form>
			</div>
		
	</div>
</section>
<!-- //contact -->


<!-- footer -->
<footer class="py-5">
	<div class="container py-md-5">
		<div class="footer-logo mb-5 text-center">
			<a class="navbar-brand" href="http://www.sode-edu.in/" target="_blank">SMVITM <span class="display"> BANATAKAL</span></a>
		</div>
		<div class="footer-grid">
			
			<div class="list-footer">
				<ul class="footer-nav text-center">
					<li>
						<a href="admin_home.php">Home</a>
					</li>
					<li>
						<a href="create_hm.php">Appoint/Remove HM</a>
					</li>
					<li>
						<a href="students.php">Students</a>
					</li>
					
					<li>
						<a href="admin_contact.php">Contact</a>
					</li>
					<li>
						<a href="admin_profile.php">My Profile</a>
					</li>
				</ul>
			</div>
			
		</div>
	</div>
</footer>
<!-- footer -->

<!-- js-scripts -->		

	<!-- js -->
	<script type="text/javascript" src="../web_home/js/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="../web_home/js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
	<!-- //js -->

	<!-- start-smoth-scrolling -->
	<script src="web_home/js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="web_home/js/move-top.js"></script>
	<script type="text/javascript" src="web_home/js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- start-smoth-scrolling -->
	
<!-- //js-scripts -->

</body>
</html>

<?php
if(isset($_POST['submit'])){
	/*echo "<script type='text/javascript'>alert('hello')</script>";*/
	$username = $_POST['username'];
	$query8 = "SELECT * FROM hostel_manager WHERE Username = '$username'";
	$result8 = mysqli_query($conn,$query8);
    $row8 = mysqli_fetch_assoc($result8);
    $adminid = $row8['Hostel_man_id'];
	
	$subject = $_POST['subject'];
	$message = $_POST['message'];
	$hostel_name = $_POST['hostel_name'];

    $query7 = "SELECT * FROM hostel WHERE Hostel_name = '$hostel_name'";
    $result7 = mysqli_query($conn,$query7);
    $row7 = mysqli_fetch_assoc($result7);
    $hostel_id = $row7['Hostel_id'];

    $query6 = "SELECT * FROM hostel_manager WHERE Hostel_id = '$hostel_id'";
    $result6 = mysqli_query($conn,$query6);
    $row6 = mysqli_fetch_assoc($result6);
    $hos_man_user = $row6['Hostel_man_id'];

	$sname = $_POST['name'];

    $today_date =  date("Y-m-d");
    $time = date("h:i A");

	$query = "INSERT INTO message (sender_id,receiver_id,hostel_id,subject_h,message,msg_date,msg_time,sender_name) VALUES ('$adminid','$hos_man_user','$hostel_id','$subject','$message','$today_date','$time','$sname')";
    $result = mysqli_query($conn,$query);
    if($result){
         echo "<script type='text/javascript'>alert('Message sent Successfully!')</script>";
    }
    else{
         echo "<script type='text/javascript'>alert('Error in sending message!!! Please try again.')</script>";
   }
  }


?>