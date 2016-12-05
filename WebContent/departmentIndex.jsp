<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body>
<div class="container-fluid">
	 <div class="panel panel-default">
	 <div class="panel-heading"><%@include file="header.jsp" %></div>	 
 	<h1>Department Table</h1>
	<a 
		href="department.do?action=edit">Add Department</a>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>Department ID</th>
				<th>Department Name</th>
				<th>Edit</th>                     
                <th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${departments}" var="department">
				<tr>
					<td><c:out value="${department.getDeptId()}" /></td>
					<td><c:out value="${department.getDeptName()}" /></td>
					<td><a href="department.do?action=edit&departmentId=<c:out value='${department.getDeptId()}'/>">Edit</a></td>
						<td>
						<a href="department.do?action=delete&departmentId=<c:out value='${department.getDeptId()}'/>">Delete</a>
						</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="panel-footer"><%@include file="footer.jsp" %></div>
	</div>
</body>
</html>