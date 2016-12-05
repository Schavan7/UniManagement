<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<div class="container-fluid">
	 <div class="panel panel-default">
	 <div class="panel-heading"><%@include file="header.jsp" %></div>
	 <ul class="Admin-page">

		<li><a href = "student.do?action=index">Student Portal</a></li>
		<li><a href = "#">Faculty</a></li>
		<li><a href = "department.do?action=index">Department</a></li>
		<li><a href = "#">Courses</a></li>
		<li><a href = "#">Enrollment</a></li>
	</ul>
	 
	 <div class="panel-footer"><%@include file="footer.jsp" %></div>
	</div>


</body>
</html>