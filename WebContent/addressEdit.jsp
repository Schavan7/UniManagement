<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Edit form</title>
</head>
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

<body>
	<div class="container-fluid">
	 <div class="panel panel-default">
	 <div class="panel-heading">
	 <%@include file="header.jsp" %></div>
	 <div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
				<h4 class="panel-title">Student Edit Form</h3>
					</div>
					<div class="panel-body">
						<div class="row"><div class=" col-md-9 col-lg-9 ">
								<form class="form-inline" action="address.do" method="post">
								<input type="hidden" name="addressId" value="<c:out value="${address.getAddressId()}" />" />
									<table class="table table-user-information" >
										<tbody>
											<tr>
												<td>Address Line1:</td>
												<td><input type="text" name="addressline1" class="form-control"
													id="addressline1" value="<c:out value="${address.getAddressline1()}" />"></td>
											</tr>
											<tr>
											<td>Address Line2:</td>
											<td><input type="text" name="addressline2"
												class="form-control" id="addressline2"
												value="<c:out value="${address.getAddressline2()}" />"></td>
											</tr>
											<tr>
											<td>City:</td>
											<td><input type="text" name="city"
												class="form-control" id="city"
												value="<c:out value="${address.getCity()}" />"></td>
											</tr>
											<tr>
											<td>State:</td>
											<td><input type="text" name="state"
												class="form-control" id="state"
												value="<c:out value="${address.getState()}" />"></td>
											</tr>
											<tr>
											<td>Zip:</td>
											<td><input type="text" name="zip"
												class="form-control" id="zip"
												value="<c:out value="${address.getZip()}" />"></td>
											</tr>
											<tr>
											<td>Phone No:</td>
											<td><input type="text" name="phone" class="form-control"
												id="phone" value="<c:out value="${address.getPhone()}" />"></td>
											</tr>
											
										</tbody>
									</table>
									<input type="submit" class="btn btn-primary" value="Update" />
								</form>
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>
		<div class="panel-footer"><%@include file="footer.jsp" %></div>
	</div>
	</div>
</body>
</html>