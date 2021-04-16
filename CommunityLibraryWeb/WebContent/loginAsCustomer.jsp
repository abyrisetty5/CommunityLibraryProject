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
			.navbar-header > a {
				color: white;
			}
			.customer-login-form{
				padding-top: 250px;
				padding-left: 100px;
				min-height: 100vh;
				align-content: center;
			}
			.customer-login-form > input,
			.password-field {
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
			.password-field > #password {
				border: none;
				width: 93%;
			}
			.alterSignIn {
				background-color: #C09F80;
				background-image: url("images/library_community_6.jpg");
				min-height: 100vh;
				text-align: right;
				padding-top: 200px;
			}
			.signIn-button, .login-button {
				width: 150px;
				height: 50px;
				border-radius: 35px;
				padding: 8px;
				font-family: sans-serif;
				font-weight: 500;
			}
			.signIn-button {
				border: 2px solid;
				border-color: #ffffff;
				background-color: #C09F80;
				color: #1A1A1D;
			}
			.login-button {
				border: none;
				background-color: #B1A296;
				color: #1A1A1D;
			}
			.navbar-header > a {
				color: #76323F;
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
		
		<div class="LoginAsCustomer">
			<div class="col-sm-6">
				<form action="loginSuccess.jsp" class="customer-login-form" name="customer-login-form" onsubmit="return validate(this);" method="post">
					<h1 style="padding-bottom: 20px; padding-left: 120px; color: #76323F">Login Here!</h1>
					<input name="email" type="email" id="emailId" placeholder="Email ID" autocapitalize="off" required>
					<small id="emailvaild" style="color: #76323F" id="validEmail">Your email must be a valid email</small><br>
					<div class="password-field">
						<input name="password" type="password" id="password" placeholder="Password" autocapitalize="off" required>
						<a style="color: black;" href="#"><span class="glyphicon glyphicon-eye-open"></span></a>
					</div>
					<small id="passCheck" style="color: #76323F">Please enter a strong password</small><br>
					<button class="login-button" id="loginButton" type="submit">LogIn</button>
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

						$("#loginButton").click(function () {
							validatePassword();
							validateEmail();
							
							if(emailError && passwordError) {
								return true;
							}
							else {
								return false;
							}
						});
					});
				</script>
			</div>
			<div class="col-sm-6 jumbotron alterSignIn">
				<div class="container">
					<h1 style="color: #0C0032">Welcome!</h1>
					<p style="color: #0C0032">New User ?<br>Please Sign Up over here..</p>
					<button class="signIn-button" id="signInButton">Sign Up</button>
				</div>
			</div>
			<script type="text/javascript">
			    document.getElementById("signInButton").onclick = function () {
			        location.href = "signInAsCustomer.jsp";
			    };
			</script>
		</div>
	</body>
</html>