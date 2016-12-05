<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Edit Form</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
	
</script>
</head>
<body>
	<div class="container-fluid">
		<h2>Student Edit Form</h2>
		<form class="form-inline" action="student.do" method="post">
			<div class="form-group">
				<div class="col-xs-3">
 
						<label for="cwid">CWID </label> 
						<input type="text" name="cwId" class="form-control" id="cwid" value="<c:out value="${student.getCwId()}" />"> 
						<label for="F_name">First Name </label> 
						<input type="text" name="firstName" class="form-control" id="fname" value="<c:out value="${student.getFirstName()}" />" > <br> 
						<label for="L_name">Last Name </label> 
						<input type="text" name="lastName" class="form-control" id="lname" value="<c:out value="${student.getFirstName()}" />">
				</div>
				<div class="col-xs-3">
					<label for="email">Email </label> <input type="email" name="email"
						class="form-control" id="email" value="<c:out value="${student.getEmail()}" />"> 
						<label for="password">Password
					</label> <input type="text" name="pasword" class="form-control"
						id="password" value="<c:out value="${student.getPassword()}" />"> 
						<label for="dob">DOB </label> <input
						type="text" name="dob" class="form-control" id="dob" value="<c:out value="${student.getDob()}" />">
				</div>
				<div class="col-xs-3">
					<label for="phone">Phone no. </label> <input type="text"
						name="phone" class="form-control" id="phone" value="<c:out value="${student.getPhone()}" />">
						 <label
						for="user_type">User Type</label>

					<div class="dropdown">
						<button class="btn btn-default dropdown-toggle" type="button"
							name="userType" id="dropdownMenu1" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="true">
							UserType <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#">Student</a></li>
							<li><a href="#">Faculty</a></li>
						</ul>
					</div>


					<label for="dept">Department Name </label>
					<div class="dropdown">
						<button class="btn btn-default dropdown-toggle" type="button"
							name="deptId" id="dropdownMenu1" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="true">
							Department Name <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#">ITM</a></li>
							<li><a href="#">CS</a></li>
							<li><a href="#">EC</a></li>
							<li><a href="#">EEE</a></li>
						</ul>
					</div>
				</div>

			</div>
			<button type="Submit" class="btn btn-success">Save Changes</button>
		</form>
	</div>

</body>
</html>