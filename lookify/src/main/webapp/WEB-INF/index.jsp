<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style2.css" />
<title>Welcome Page</title>
</head>
<body>
	<div id="container">
		<div class="jumbotron text-center">
			<h1>Welcome to Lookify!</h1>
		</div>
		<main>
			<blockquote class="blockquote text-center">
    			<p>“Music does a lot of things for a lot of people. It’s transporting, for sure. It can take you right back, years back, to the very moment certain things happened in your life. It’s uplifting, it’s encouraging, it’s strengthening.”</p>
    			<footer class="blockquote-footer">- Aretha Franklin</footer>
 			 </blockquote>
 			 <br>
			<a href="/dashboard"><button type="button" class="btn btn-danger btn-block">Start Looking!</button></a>
		</main>
	</div>
</body>
</html>