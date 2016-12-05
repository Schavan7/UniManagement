<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Enrollment List</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
</script>
</head>
<body>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

<div class="container-fluid">
<div class="panel panel-default">
	 <div class="panel-heading"><%@include file="header.jsp" %></div>	 
 		<div class="row">	
        <div class="col-md-12">
        <h2>List of Enrollment Details:</h2>
        <div class="table-responsive">                
              <table id="mytable" class="table table-bordred table-striped">                   
                   <thead>                   
                   <th>Enrollment ID</th>
                    <th>Start Date</th>
                     <th>End Date</ th>
                     <th>Course Name</th>
                     <th>Course ID</th>
                     <th>Class ID</th>
                     <th>Student ID</th>
                     <th>Grade</th>                      
                     <th>Edit</th>                     
                     <th>Delete</th>
                   	</thead>
    				<tbody>    
    					<tr>
    							<td>Enrollment ID</td>
                    <td>Start Date</td>
                     <td>End Date</td>
                     <td>Course Name</td>
                     <td>Course ID</td>
                     <td>Class ID</td>
                     <td>Student ID</td>
                     <td>Grade</td>      
    							<td><p data-placement="top" data-toggle="tooltip" title="Edit">
    								<button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" >
    								<span class="glyphicon glyphicon-pencil"></span>
    								</button></p>
    							</td>
    							<td><p data-placement="top" data-toggle="tooltip" title="Delete">
    							<button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" >
    							<span class="glyphicon glyphicon-trash"></span>
    							</button></p>
    							</td>
    					</tr>
    				</tbody>    
				</table>
			</div>
		</div>
		</div>
		<div class="panel-footer"><%@include file="footer.jsp" %></div>
	</div>
	</div>

</body>
</html>