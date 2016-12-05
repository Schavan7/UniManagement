<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Class Form</title>
</head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
</script>
<body>
<body>
<div class="container-fluid">
<div class="panel panel-default">
	 <div class="panel-heading"><%@include file="header.jsp" %></div>
<h1>Class Form</h1>
<table class="table table-striped">
<thead>
<tr>
<th>Class ID</th>
<th>Capacity</th>
<th>Faculty Name</th>
<th>Course Name</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<tbody>
<tr>
<td>1001</td>
<td>30</td>
<td>Faculty Name</td>
<td>Course Name</td>

<td><p data-placement="top" data-toggle="tooltip" title="Edit">
   	<button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" >
   	<span class="glyphicon glyphicon-pencil"></span>
   	</button></p>
   	</td>
   	<td><p data-placement="top" data-toggle="tooltip" title="Delete">
   	<button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" >
   	<span class="glyphicon glyphicon-trash"></span>
   	</button></p>
   	</td>
</tr>
</tbody>
</table>
<div class="panel-footer"><%@include file="footer.jsp" %></div>
</div>


</body>
</html>