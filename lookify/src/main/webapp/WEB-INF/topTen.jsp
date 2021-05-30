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
<title>Top Ten</title>
</head>
<body>
	<div id="container">
		<div id="dropdown">
			<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
	    		Menu
	  		</button>
		  	<div class="dropdown-menu">
		  		<a class ="dropdown-item" href="/dashboard">Main Page</a>
		   	 	<a class="dropdown-item" href="/songs/new">Add New</a>
		    	<a class="dropdown-item" href="/">Exit</a>
		 	</div>
		</div>
		<div class="jumbotron text-center">
	  		<h1>Lookify! Search and find your Favorite songs and artists</h1>
	  		<p>Current songs added</p>
	  		<form action="/songs/search">
				<input type="text" name="artist">
				<button type="submit">Search Artist</button>
			</form> 
		</div>
		<h3>Top 10 Songs!</h3>  
		<div class="table table-dark">
			<table>
				<thead>
					<tr>
						<th>Current Ranking</th>
						<th>Title</th>
						<th>Artist</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${songs}" var="song">
					<tr>
						<td>${song.rating}</td>
						<td><a href="/songs/${song.id}">${song.title}</a></td>
						<td>${song.artist}</td>
					</tr>
					</c:forEach>
				</tbody>		
			</table>
		</div>
	</div>
</body>
</html>