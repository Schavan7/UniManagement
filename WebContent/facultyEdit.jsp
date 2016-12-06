<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<title>Faculty Edit Form</title>
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
	 	<div class="panel-heading"><%@include file="header.jsp" %></div>	 
 			<div class="panel panel-info">
           		 <div class="container">
           		 <h2>Faculty Edit Form</h2>
            		<div class="panel-body">
              			<div class="row">
                			<div class=" col-md-9 col-lg-9 "> 
                  				<table class="table table-user-information">
                   					 <tbody>
                      					<tr>
                        					<td>Faculty ID:</td>
                       						 <td><input type="text" name="userId" required="true" class="form-control" id="userid"></td>
                      					</tr>
                      					<tr>
                        					<td>CWID:</td>
                        					<td><input type="text" name="cwId" required="true" class="form-control" id="cwid"> </td>
                      					</tr>
                      					<tr>
                        					<td>FirstName:</td>
                        					<td><input type="text" name="firstName" required="true" class="form-control" id="fname"></td>
                     					 </tr>
                     					 <tr>
                         					<td>Last Name:</td>
                         					<td><input type="text" name="lastName" required="true" class="form-control"	id="lname"></td>
                         				</tr>
                         				<tr>
                         					<td>Email:</td>
                        				    <td><input type="email" name="email" required="true" class="form-control" id="email"> </td>
                         				</tr>
                        				 <tr>
                         					<td>Password:</td>
                         					<td> <input type="text" name="pasword" required="true" class="form-control" 	id="password"></td>
                         				</tr>
                         				<tr>
                         					<td>DOB</td>
                         					<td> <input placeholder="Date of Birth" required="true" class="textbox-n" name="dob" type="text" onfocus="(this.type='date')" onblur="(this.type='text')" id="date"></td>
                         				</tr>
                         				<tr>
                         					<td>Phone No:</td>
                         					<td> <input type="text" name="phone" required="true" class="form-control" id="phone"> </td>
                        			   </tr>
                         				<tr>
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
							name="deptId" required="true" id="dropdownMenu1" data-toggle="dropdown"
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
                  
                  <a href="#" class="btn btn-primary">Update</a>
                  <a href="#" class="btn btn-primary">View</a>
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