<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
	
</script>
<body>
	<div class="container">
		<div class="row">
			<div
				class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">
							<c:out value="${user.getFirstName()}  ${user.getLastName()}" />
						</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-3 col-lg-3 " align="center">
								<img alt="User Pic"
									src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png"
									class="img-circle img-responsive">
							</div>
							<div class=" col-md-9 col-lg-9 ">
								<table class="table table-user-information">
									<tbody>
										<tr>
											<td>CWID:</td>
											<td><c:out value="${user.getCwId()}" /></td>
										</tr>
										<tr>
											<td>email:</td>
											<td><c:out value="${user.getEmail()}" /></td>
										</tr>
										<tr>
											<td>Date of Birth</td>
											<td><c:out value="${user.getDob()}" /></td>
										</tr>
										<tr>
											<td>Home Address</td>
											<td><c:out value="${address.getAddressline1()}  ${address.getAddressline2()}" /> <br>
												<c:out value="${address.getCity()}  ${address.getState()}" /> <br>
												<c:out value="${address.getZip()}" />
												</td>
										</tr>

										<td>Phone Number</td>
										<td><c:out value="${user.getPhone()}" /></td>
										</tr>

									</tbody>
								</table>

								<a href="address.do?action=edit" class="btn btn-primary">Edit
									Address</a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>