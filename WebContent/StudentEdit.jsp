<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Edit Form</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
</script>
</head>
<body>
<div class="container-fluid">
<h2>Student Edit Form</h2>
<form class ="form-inline">
<div class="form-group">
<label for="user_id">User ID </label></t><input type="text" class="form-control" id="userid"><br><br>
<label for="F_name">First Name </label></t><input type="text" class="form-control" id="fname"><br><br>
<label for="L_name">Last Name </label></t><input type="text" class="form-control" id="lname"><br><br>
<label for="email">Email </label></t><input type="email" class="form-control" id="email"><br><br>
<label for="password">User ID </label></t><input type="text" class="form-control" id="password"><br><br>
<label for="dob">DOB </label></t><input type="text" class="form-control" id="dob"><br><br>
<label for="phone">Phone no. </label></t><input type="text" class="form-control" id="phone"><br><br>
<label for="user_type">User Type</label></t><input type="text" class="form-control" id="usertype"><br><br>
<label for="dept">Department ID </label></t><input type="text" class="form-control" id="dept"><br><br>
</div>
 <button type="button" class="btn btn-success">Save Changes</button>
</form>
</div>

</body>
</html>