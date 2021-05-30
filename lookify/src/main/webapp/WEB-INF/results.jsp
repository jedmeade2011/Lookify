<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<title>Search Result</title>
</head>
<body>
	<div id="container">
		<div class="dropdown">
		  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
		    Menu
		  </button>
		  <div class="dropdown-menu">
		  	<a class ="dropdown-item" href="/dashboard">Main Page</a>
		    <a class="dropdown-item" href="/songs/new">Add New</a>
		    <a class="dropdown-item" href="/songs/topTen">Top Songs</a>
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
		<div class="table table-dark">
			<table>
				<thead>
					<tr>
						<th>Name</th>
						<th>Rating</th>
						<th>actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${songs}" var="songs">
					<tr>
						<td><a href="/songs/${songs.id }">${songs.title}</a></td>
						<td>${songs.rating}</td>
						<td><a href="/songs/delete/${songs.id}">Delete</a></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>