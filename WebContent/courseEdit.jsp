<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Courses</title>
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
	 <div class="container">
<h3>Course View</h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>CourseID:</td>
                        <td><input type="text"name="courseId" class="form-control" id="courseid"></td>
                      </tr>
                      <tr>
                        <td>Course Name:</td>
                        <td><input type="text"name="courseName" class="form-control" id="courseName"></td>
                      </tr>
                      <tr>
                        <td>Department name:</td>
                        <td><div class="dropdown">
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
					</div></td>
                      </tr>                
                     </tbody>
                  </table>
                  
                  <a href="#" class="btn btn-primary">Update Courses</a>
                  <a href="#" class="btn btn-primary">View Courses</a>
                </div>
              </div>
            </div>
            </div>
            <div class="panel-footer"><%@include file="footer.jsp" %></div>
            </div>
                 
     

</body>
</html>