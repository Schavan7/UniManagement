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
<div class="container">
      <div class="row">
      <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
          
      </div>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   
   
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">Student Edit Form</h3>
            </div>
            <div class="panel-body">
              <div class="row">
             
                <div class=" col-md-9 col-lg-9 "> 
                <form class="form-inline" action="student.do" method="post">
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>CWID:</td>
                        <td><input type="text" name="cwId" class="form-control" id="cwid" value="<c:out value="${student.getCwId()}" />"></td>
                      	</tr>
                      	<td>First Name:</td>
                        <td><input type="text" name="firstName" class="form-control" id="fname" value="<c:out value="${student.getFirstName()}" />" ></td>
                         </tr>
                         <td>Last Name:</td>
                         <td><input type="text" name="lastName" class="form-control" id="lname" value="<c:out value="${student.getFirstName()}" />"></td>
                         </tr>
                         <td>Email:</td>
                         <td><input type="email" name="email"	class="form-control" id="email" value="<c:out value="${student.getEmail()}" />"></td>
                         </tr>
                         <td>Password:</td>
                         <td><input type="text" name="pasword" class="form-control" id="password" value="<c:out value="${student.getPassword()}" />"></td>
                         </tr>
                         <td>DOB</td>
                         <td><input type="text" name="dob" class="form-control" id="dob" value="<c:out value="${student.getDob()}" />"></td>
                         </tr>
                         <td>Phone No:</td>
                         <td> <input type="text" name="phone" class="form-control" id="phone" value="<c:out value="${student.getPhone()}" />"></td>
                         </tr>
                         <td>User Type</td>
                         <td><div class="dropdown">
						<button class="btn btn-default dropdown-toggle" type="button"
							name="userType" id="dropdownMenu1" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="true">
							UserType <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#">Student</a></li>
							<li><a href="#">Faculty</a></li>
						</ul>
					</div></td>
                         </tr>
                         <tr>
                         <td>Department Name</td>
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
					</div>
                    </tbody>
                  </table>
                  </form>
                  
                  <a href="#" class="btn btn-primary">Update</a>
                  <a href="#" class="btn btn-primary">View</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>