<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<title>Class Edit Form</title>
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
       <div class="panel-heading"><%@include file="header.jsp" %></div>
      <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
          
      </div>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   
   
          <div class="panel panel-info">
           
            <div class="panel-body">
              <div class="row">
              <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Class ID:</td>
                        <td><input type="text"
						name="classId" class="form-control" id="userid"></td>
                      </tr>
                      <tr>
                        <td>Capacity:</td>
                        <td><input type="text" name="cwId"
						class="form-control" id="cwid"> </td>
                      </tr>
                      <tr>
                        <td>Start Date:</td>
                          <td> <input placeholder="Date of Birth" class="textbox-n" name="startDate" type="text" onfocus="(this.type='date')" onblur="(this.type='text')" id="date"></td>
                      </tr>
                         
                         <tr>
                         <td>End Date:</td>
                           <td> <input placeholder="Date of Birth" class="textbox-n" name="dob" type="text" onfocus="(this.type='date')" onblur="(this.type='text')" id="date"></td>
                         </tr>
                        
                         <tr>
                         <td>Course Name</td>
                         <td><div class="dropdown">
						<button class="btn btn-default dropdown-toggle" type="button"
							name="CourseId" id="dropdownMenu1" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="true">
							Course Name <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#">ADM</a></li>
							<li><a href="#">Java</a></li>
							<li><a href="#">Frameworks</a></li>
							
						</ul>
					</div>
					
					<tr>
                         <td>Faculty Name</td>
                         <td><div class="dropdown">
						<button class="btn btn-default dropdown-toggle" type="button"
							name="facultyId" id="dropdownMenu1" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="true">
							Faculty Name <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#">James papa</a></li>
							<li><a href="#">Yong Zhen</a></li>
							<li><a href="#">Katherine Papa</a></li>
							<li><a href="#">Rahul Patel</a></li>
						</ul>
					</div>
                    </tbody>
                  </table>
                  
                  <a href="#" class="btn btn-primary">Update</a>
                  <a href="#" class="btn btn-primary">View</a>
                </div>
              </div>
            </div>
            <div class="panel-footer"><%@include file="footer.jsp" %></div>
          </div>
        </div>
      </div>
    </div>


</body>
</html>