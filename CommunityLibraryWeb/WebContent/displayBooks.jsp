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
			.navbar-header > a,
			.navbar-nav > li > a {
				color: #76323F;
			}
			.card {
				padding-left: 70px;
				padding-right: 70px;
				padding-bottom: 20px;
			}
			.card-body {
				background-color: #E8E8E8;
				padding: 5px;
				border: none;
				border-radius: 6px;
				margin: 20px;
				box-shadow: 6px 10px #A0A0A0;
/* 				box-shadow: 0 6px 10px rgba(0,0,0,.08), 0 0 6px rgba(0,0,0,.05); */
				transition: .3s transform cubic-bezier(.155,1.105,.295,1.12),.3s box-shadow,.3s -webkit-transform cubic-bezier(.155,1.105,.295,1.12);
				cursor: pointer;
			}
			.card-body:hover{
				transform: scale(1.05);
				box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4px 8px rgba(0,0,0,.06);
			}
			.card-body > .container {
				width: 100%;
				padding-left: 5px;
			}
			a, a:hover {
			  text-decoration: none;
			}
			a:hover {
			  opacity: 0.8;
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

		<div class="container-fluid" style="padding-top: 80px">
			<div class="row">
				<div class="card" align="center">
					<div class="card-body">
						<div class="container">
							<img align="left" style="padding-right: 8px" class="img-responsive" alt="Anna Karenina" src="images/book_poster_1.jpg" width="250px" height="250px">
							<h3 class="card-title" align="left" style="color: #76323F">Anna Karenina</h3>
							<p class="card-text" align="left">Anna Karenina is a novel by the Russian author Leo Tolstoy, first published in book form in 1878.<br>Many writers consider it the greatest work of literature ever written, and Tolstoy himself called it his first true novel.</p><br><br>
							<p class="card-text" align="right">"All happy families are alike; each unhappy family is unhappy in its own way."
							<small class="card-text">- Leo Tolstoy , Anna Karenina</small></p>
						</div>
					</div>
					<div class="card-body">
						<div class="container">
							<img align="left" style="padding-right: 8px" class="img-responsive" alt="Anna Karenina" src="images/book_poster_3.jpg" width="250px" height="250px">
							<h3 class="card-title" align="left" style="color: #76323F">To Kill a Mockingbird</h3>
							<p class="card-text" align="left">To Kill a Mockingbird is a novel by the American author Harper Lee.<br>It was published in 1960 and was instantly successful. In the United States, it is widely read in high schools and middle schools.<br>To Kill a Mockingbird has become a classic of modern American literature, winning the Pulitzer Prize.</p><br><br>
							<p class="card-text" align="right">“Until I feared I would lose it, I never loved to read. One does not love breathing.”
							<small class="card-text">- Harper Lee , To Kill a Mockingbird</small></p>
						</div>
					</div>
					<div class="card-body">
						<div class="container">
							<img align="left" style="padding-right: 8px" class="img-responsive" alt="Anna Karenina" src="images/book_poster_2.jpg" width="250px" height="250px">
							<h3 class="card-title" align="left" style="color: #76323F">The Great Gatsby</h3>
							<p class="card-text" align="left">The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald.<br>Set in the Jazz Age on Long Island, the novel depicts narrator Nick Carraway's interactions with mysterious millionaire Jay Gatsby and Gatsby's obsession to reunite with his former lover, Daisy Buchanan.</p><br><br>
							<p class="card-text" align="right">“I hope she'll be a fool -- that's the best thing a girl can be in this world, a beautiful little fool.”
							<small class="card-text">- F. Scott Fitzgerald , The Great Gatsby</small></p>
						</div>
					</div>
					<div class="card-body">
						<div class="container">
							<img align="left" style="padding-right: 8px" class="img-responsive" alt="Anna Karenina" src="images/book_poster_4.jpg" width="250px" height="250px">
							<h3 class="card-title" align="left" style="color: #76323F">One Hundred Years of Solitude</h3>
							<p class="card-text" align="left">One Hundred Years of Solitude is a landmark 1967 novel by Colombian author Gabriel García Márquez that tells the multi-generational story of the Buendía family, whose patriarch, José Arcadio Buendía, founded the town of Macondo. The novel is often cited as one of the supreme achievements in literature.</p><br><br>
							<p class="card-text" align="right">“The only affection that prevailed against time and the war was that which he had felt for his brother José Arcadio when they both were children, and it was not based on love but on complicity.”
							<small class="card-text">- Gabriel García Márquez , One Hundred Years of Solitude</small></p>
						</div>
					</div>
					<div class="card-body">
						<div class="container">
							<img align="left" style="padding-right: 8px" class="img-responsive" alt="Anna Karenina" src="images/book_poster_5.jpg" width="250px" height="250px">
							<h3 class="card-title" align="left" style="color: #76323F">A Passage to India</h3>
							<p class="card-text" align="left">A Passage to India is a 1924 novel by English author E. M. Forster set against the backdrop of the British Raj and the Indian independence movement in the 1920s.</p><br><br>
							<p class="card-text" align="right">"They all become exactly the same ... I give any Englishman two years."
							<small class="card-text">- E. M. Forster, A Passage to India</small></p>
						</div>
					</div>
				</div>
			</div>
		</div>
   	</body>
</html>