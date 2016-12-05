<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Enrollment Details</title>
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
	<div class="jumbotron">
		<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
    		<div class="panel panel-info">
            	<div class="panel-heading">
             		 <h3 class="panel-title">Edit Enrollment Details</h3>
            	</div>
            <div class="panel-body">
              <div class="row">
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Enrollment ID:</td>
                        <td><input type="text"name="enrollId" class="form-control" id="enrollId"></td>
                      </tr>
                      <tr>
                        <td>Start Date:</td>
                        <td><input placeholder="Start Date" class="textbox-n" name="startDate" type="text" onfocus="(this.type='date')" onblur="(this.type='text')" id="date"></td>
                      </tr>
                       <tr>
                        <td>End Date:</td>
                        <td><input placeholder="End Date" class="textbox-n" name="endDate" type="text" onfocus="(this.type='date')" onblur="(this.type='text')" id="date"></td>
                      </tr>
                      <tr>
                        <td>Course Name:</td>
                        <td><input type="text"name="courseName" class="form-control" id="courseName"></td>
                      </tr>
                      <tr>
                        <td>Grade:</td>
                        <td><input type="text"name="grade" class="form-control" id="grade"></td>
                      </tr>
                      <tr>
                        <td>Course ID:</td>
                        <td><input type="text"name="courseId" class="form-control" id="courseId"></td>
                      </tr> 
                      <tr>
                        <td>Class Id:</td>
                        <td><input type="text"name="classId" class="form-control" id="classId"></td>
                      </tr>
                      <tr>
                        <td>Student Id:</td>
                        <td><input type="text"name="studentId" class="form-control" id="studentId"></td>
                      </tr>               
                     </tbody>
                  </table>
                  
                  <a href="#" class="btn btn-primary">Update Enrollment Details</a>
                  <a href="#" class="btn btn-primary">View Enrollment Details</a>
                </div>
              </div>
            </div>
                 
          </div>
        </div>
      </div>
    </div>

</body>
</html>