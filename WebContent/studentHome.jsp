<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Home</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script type="text/javascript">
	$('.datepicker').datepicker();
</script>
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
			<div class="panel-heading"><%@include file="header.jsp"%></div>
			<div class="row">
				<div class="col-lg-3">
					<ul class="nav nav-stacked">
						<li class="nav-header"><a href="#" data-toggle="collapse"
							data-target="#userMenu">Settings <i
								class="glyphicon glyphicon-chevron-down"></i></a>
							<ul class="nav nav-stacked collapse in" id="userMenu">
								<li class="active"><a href="#"><i
										class="glyphicon glyphicon-home"></i> Home</a></li>
								<li><a href="#"><i class="glyphicon glyphicon-envelope"></i>
										Notification</a></li>
								<li><a href="#"><i class="glyphicon glyphicon-cog"></i>
										Options</a></li>

								<li><a href="#"><i class="glyphicon glyphicon-off"></i>
										Logout</a></li>
							</ul>
				</div>
				<div class="col-lg-6">
					<div class="panel-heading">
						<h4>Courses:</h4>
					</div>
					<div class="panel-body">
						<div class="list-group">
							<a href="enrollment.do?action=index" class="list-group-item">Course-1</a>
							<a href="#" class="list-group-item">Course-2</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="panel-footer"><%@include file="footer.jsp"%></div>
	</div>


	<div class="panel-footer"><%@include file="footer.jsp"%></div>
	</div>
</body>
</html>