<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Community Library</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">  
		<link href="style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
		
		<style type="text/css">
			body{
				background-color: #D7CEC7;
			}
			.alterLogIn{
				background-color: #C09F80;
				background-image: url("images/library_community_6.jpg");
				min-height: 100vh;
				text-align: left;
				padding-top: 200px;
   			}
			.customer-register-form{
				padding-top: 50px;
				min-height: 100vh;
				align-content: center;
			}
			.customer-register-form > input, select,
			.password-field, .password-field_1 {
				width: 70%;
				height: 35px;
				border: none;
				border-radius: 8px;
				padding: 8px;
				margin-bottom: 10px;
				font-family: sans-serif;
				font-weight: 500;
				background-color: #fff;
			}
			.password-field > input{
				border: none;
				width: 94%;
			}
			.password-field_1 > input{
				border: none;
				width: 94%;
			}
			.logIn-button, .register-button {
				width: 150px;
				height: 50px;
				border-radius: 35px;
				padding: 8px;
				font-family: sans-serif;
				font-weight: 500;
			}
			.logIn-button {
				border: 2px solid;
				border-color: #ffffff;
				background-color: #C09F80;
				color: #1A1A1D;
			}
			.register-button {
				border: none;
				background-color: #B1A296;
				color: #1A1A1D;
			}
			.navbar-header > a {
				color: white;
			}
		</style>
	</head>

	<body>
		<nav class="navbar navbar-fixed-top"  style="background-color: transparent">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="index.jsp">Community Library</a>
		    </div>
		  </div>
		</nav>

		<div class="registrationAsCustomer">
			<div class="col-sm-5 jumbotron alterLogIn">
				<div class="container">
					<h1 style="color: #0C0032">Hey There!</h1>
					<p style="color: #0C0032">If you are already a customer<br>Please Login In here..</p>
					<button class="logIn-button" id="logInButton">Log In</button>
				</div>
				<script type="text/javascript">
				    document.getElementById("logInButton").onclick = function () {
				        location.href = "loginAsCustomer.jsp";
				    };
				</script>
			</div>
			<div class="col-sm-7">
				<form class="customer-register-form" name="customer-register-form" action="registrationSucess.jsp" method="post">
					<h1 style="padding-bottom: 20px; padding-left: 70px; color: #76323F">Register Here!</h1>
					<input name="fname" type="text" id="fullName" placeholder="Full Name" autocapitalize="off" required><br>
					<input name="email" type="email" id="emailId" placeholder="Email ID" autocapitalize="off" required>
					<small id="emailvaild" style="color: #76323F" id="validEmail">Your email must be a valid email</small><br>
					<select style="display: inline;">
						<option value="M">Male</option>
						<option value="F">Female</option>
						<option value="O">Others</option>
					</select><br>
					<input name="contact" type="tel" id="contactNumber" placeholder="Contact" autocapitalize="off" required>
					<small id="telCheck" style="color: #76323F">Please enter a valid phone number</small><br>
					<input name="disName" type="text" id="disName" placeholder="District" autocapitalize="on" required><br>
					<input name="cityName" type="text" id="cityName" placeholder="City" autocapitalize="on" required><br>
					<input name="stateName" type="text" id="stateName" placeholder="State" autocapitalize="on" required><br>
					<input name="address" type="text" id="address" placeholder="Address" autocapitalize="off" required><br>
					<div class="password-field">
						<input name="password" type="password" id="password" placeholder="Password" autocapitalize="off" required>
						<a style="color: black;" href="#"><span class="glyphicon glyphicon-eye-open"></span></a>
					</div>
					<small id="passCheck" style="color: #76323F">Please enter a strong password</small>
					<div class="password-field_1">
						<input name="repassword" type="password" id="repassword" placeholder="Confirm Password" autocapitalize="off" required>
						<a style="color: black;" href="#"><span class="glyphicon glyphicon-eye-open"></span></a>
					</div>
					<small id="rePassCheck" style="color: #76323F">Passwords do not match</small><br>
					<button class="register-button" id="registerButton" type="submit">Register</button>
				</form>
				
				<script type="text/javascript">
					$(document).ready(function () {
						const email = document.getElementById("emailId");
						function validateEmail(email) {
							var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
							if(regex.test(email){
								$("#validEmail").hide();
							}
							else {
								$("#validEmail").show();
							}
						}
						
						$("#telCheck").hide();
						let phoneNumberError = true;
						$("#contactNumber").keyup(function() {
							validateContactNumber();
						});
						
						function validateContactNumber() {
							let contactNum = $("#contactNumber").val();
							if(contactNum.length < 10) {
								$("#telCheck").show();
								phoneNumberError = false;
								return false;
							}
							else {
								$("#telCheck").hide();
							}
						}
												
						$("#passCheck").hide();
						let passwordError = true;
						$("#password").keyup(function(){
							validatePassword();
						});
						
						function validatePassword() {
							let passwordValue = $("#password").val();
							if(passwordValue.length=='') {
								$("#passCheck").show();
								passwordError = false;
								return false;
							}
							else if(passwordValue.length < 3) {
								$("#passCheck").show();
								$("#passCheck").html("length of the password should be greater than 3");
								$("#passCheck").css("color", "#76323F");
								passwordError = false;
								return false;
							}
							else {
								$("#passCheck").hide();
							}
						}
						
						$("#rePassCheck").hide();
						let confirmPasswordError = true;
						$("#repassword").keyup(function() {
							confirmPasswordValidation();
						});
						
						function confirmPasswordValidation() {
							let confirmPasswordValue = $("#repassword").val();
							let passwordValue = $("#password").val();
							
							if(confirmPasswordValue != passwordValue) {
								$("#rePassCheck").show();
								$("#rePassCheck").html("Passwords do not match");
								$("#rePassCheck").css("color", "#76323F");
								confirmPasswordError = false;
								return false;
							}
							else {
								$("#rePassCheck").hide();
							}
						}
						
						$("#registerButton").click(function () {
							validatePassword();
							confirmPasswordValidation();
							validateEmail();
							validateContactNumber();
							
							if(emailError && confirmPasswordError && passwordError && phoneNumberError) {
								return true;
							}
							else {
								return false;
							}
						});
					});
				</script>
			</div>
		</div>
	</body>
</html>