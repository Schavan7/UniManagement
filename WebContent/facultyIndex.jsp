<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<h1>Faculty Form</h1>
<table class="table table-striped">
<thead>
<tr>
<th>User ID</th>
<th>CWID</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Password</th>
<th>Date of Birth</th>
<th>Phone</th>
<th>User Type</th>
<th>Department</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<tbody>
<tr>
<td>1001</td>
<td>234567</td>
<td>Shrija</td>
<td>chavan</td>
<td>sri@gmail.com</td>
<td>jyoti</td>
<td>12/dec/1992</td>
<td>34658780</td>
<td>student</td>
<td>itm</td>
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
</div>
</body>

</body>
</html>