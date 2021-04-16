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

		<style type="text/css">
			body{
				background-color: #D7CEC7;
			}
		</style>
	</head>

	<body>
		<div class="container">
			<div class="jumbotron" align="center">
				<div class="alert alert-success">
					<strong>Success!</strong> You've successfully registered now.
				</div>
				<p>Please wait for 5 seconds to redirect to the home page</p>
				<a href="#index.jsp">Click here if not</a>
			</div>
	
			<script type="text/javascript">
		        $(document).ready(function () {
		            setTimeout(function () {
		                window.location = "index.jsp";
		            }, 5000);
		        });
			</script>
		</div>
   	</body>
</html>