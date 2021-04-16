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
			#section5 {padding-top:20px;height:250px;color: #fff; background-color: #565656;}
			.about-text{
				color: #262228;
				display: block;
				box-sizing: inherit;
				padding: 25px;
				font-size: 16px;
			}
			.navbar-header > a,
			.navbar-nav > li > a {
				color: #76323F;
			}
		</style>

		<script type="text/javascript">
			$(function () {
			  $(document).scroll(function () {
			    var $nav = $(".navbar-fixed-top");
			    $nav.toggleClass('scrolled', $(this).scrollTop() > $nav.height());
			  });
			});
		</script>
	</head>

	<body>
		<nav class="navbar navbar-fixed-top">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="index.jsp">Community Library</a>
		    </div>
		        <ul class="nav navbar-nav navbar-right">
		          <li class="active"><a href="index.jsp">Home</a></li>  
		          <li><a href="aboutUs.jsp">About Us</a></li>
		          <li><a href="displayBooks.jsp">Books</a></li>
		          <li class="dropdown">
			          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Sign In<span class="caret"></span></a>
			          <ul class="dropdown-menu">
			          	<li><a href="signInAsAdmin.jsp">As Admin</a></li>
			          	<li><a href="signInAsCustomer.jsp">As Customer</a></li>
			          </ul>
		          </li>
		        </ul>
		  </div>
		</nav>
		
		<div class="container-fluid">
			<h1 style="padding-top: 50px; text-align: center; color: #76323F">About Us</h1>
			<div class="row">
				<div class="col-sm-5">
					<div class="center">
						<img src="images/library_community_7.jpg" class="img-responsive" alt="library_community_7" style="padding-top: 50px; padding-left: 30px" width="450" height="700">
					</div>
				</div>
				<div class="col-sm-6 about-text">
					<p>The seeds for The Community Library Project (TCLP) were sown in the early 2010’s with a read-aloud program conducted by volunteers, for children attending the Ramditti J R Narang Deepalaya Learning Centre in New Delhi.</p>
					<p>At the center of the program was the idea that "Reading Is Thinking" - that everyone, regardless of their social or economic background, had the right to books and other tools of learning. In order to actualize this, one had to acknowledge the serious lack of free, community libraries in India that welcomed all, especially in those communities that had historically been left out (or actively kept out) of any discourse around books & reading.</p>
					<p>In 2014-15, the first library was set up, in partnership with the NGO Deepalaya and Narang Trust. Anyone could walk in and become a member, free of cost. Members could issue books once a week and participate in the Reading Program consisting of regular read alouds that focused on encouraging first-generation readers as they embarked on their reading journeys.</p>
					<p>Today, TCLP has set up 4 libraries in Delhi & Gurugram, catering to a membership of over 4000 children & adults, 7 days a week. We have also assisted several organizations in Delhi and beyond in creating free community libraries that welcome all.</p>
					<p>The Reading Program has developed multi-faceted curriculum for first-generation readers from ages 4 years to 16 years, and includes daily read aloud by member leaders, volunteers and staff, the Reading Fluency program, Honour Roll, Poetry Workshops, Book Club etc. TCLP libraries are high-standard, low-cost libraries with an excellently curated (and regularly updated) collection of over 30,000 books in Hindi, English, Urdu and Bengali.</p>
					<p>TCLP is consistently moving towards making its libraries community-owned as it mentors the Student Council – selected members, and member-interns, who are trained in library science, read aloud strategies and community mobilization. These young leaders are emerging as librarians, community organizers as well as read aloud trainers that are building a culture of "Reading Is Thinking".</p>
					<p>TCLP libraries have evolved into cultural and literary hubs, where members of the community can engage with one another's ideas in a safe and meaningful way. These spaces welcome writers, publishers, poets, dancers, musicians and other artists to perform and share their works. While our members benefit from and enjoy these experiences, artists, writers and publishers, too, widen their understanding of their audience.</p>
					<p>Duniya Sabki is an online extension of TCLP’s physical libraries. The free digital platform is a collection of video and audio read aloud, as well as links to books, magazines and other texts. It is sent by Whatsapp to over 2,000 members three times each week, and is also available on YouTube, SoundCloud and our website.</p>
					<p>TCLP is part of The Community Library Network, an attempt to bring different free libraries and reading programs across India onto one platform. Together, member libraries advocate for community libraries that welcome all. TCLN builds momentum for the library movement that has well and truly begun in India.</p>
				</div>
			</div>
			<div id="section5" class="container-fluid">
				<div class="col-sm-6">
					<h2>Contact Us</h2>
					<p><strong style="color: black;">Phone:</strong> +91 1800-153-7575</p>
					<p><strong style="color: black;">Phone:</strong> +91 1800-253-7575</p>
				</div>
				<div class="col-sm-6">
					<h2>Reach Us</h2>
					<p><strong style="color: black;">Email:</strong> libraryCommunity@gmail.com</p>
					<p>Follow us on:</p>
					<ul style="justify-content: space-between;">
						<li style="color: black;"><a href="#https://www.facebook.com/" style="color: black">Facebook</a></li>
						<li style="color: black;"><a href="#https://www.twitter.com/" style="color: black">Twitter</a></li>
						<li style="color: black;"><a href="#https://www.linkedin.com/" style="color: black">LinkedIn</a></li>
					</ul>
				</div>
			</div>  
		</div>
	</body>
</html>