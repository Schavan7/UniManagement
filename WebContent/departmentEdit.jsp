<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Department</title>
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
	 <style type="text/css">  
    .center-block {  
    width:500px;  
    padding:30px;     
    }</style> 

<body>
<div class="container-fluid">
	 <div class="panel-heading"><%@include file="header.jsp" %></div>
	<div class="panel-body">
	<div class="center-block">
		<div style="height:400px">	
		 <form class="form-inline" action="department.do" method="post">
				<input type="hidden" name="departmentId" value="<c:out value="${department.getDeptId()}" />" />
  				<div class="form-group">
  					<label for="Department Name">Department Name:</label>
    				<input type="text" required="true" class="form-control" id="pwd"  name="deptName" value="<c:out value="${department.getDeptName()}" />">
  				</div>
  				<button type="submit" class="btn btn-success btn-md">Success</button>
			</form>
			</div>
			</div>
			</div>
			<div class="panel-footer"><%@include file="footer.jsp" %></div>
	
	</div>
	</div>
</body>
</html>