<html>
<head>
<link rel="stylesheet" type="text/css" href="css/app.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
    if (!Modernizr.touch || !Modernizr.inputtypes.date) {
        $('input[type=date]')
            .attr('type', 'text')
            .datepicker({
                // Consistent format with the HTML5 picker
                dateFormat: 'yy-mm-dd'
            });
    }
</script>
</head>
<body>
	<div class="container">
		<div id="content">
			<form method="post" action="login.do">
				<h1>Login Form</h1>
				<div>
				<%= request.getAttribute("errMsg") %>
				</div>
				<div>
					<input type="email" name="userName" placeholder="Username" required="true" id="username">
				</div>	
				<div>
					<input type="password" name="password" title="5 to 10 characters" placeholder="Password" required="true" id="password"> 	
				</div>
				<div>
					<input placeholder="Date of Birth" class="textbox-n" name="dob" type="text" onfocus="(this.type='date')" onblur="(this.type='text')" id="date">
				</div>
				<div>
					<input type="submit"  value="submit"/>
				</div>					
			</form>
		</div>
	</div>
</body>
</html>