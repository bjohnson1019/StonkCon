<!DOCTYPE html>
<html>
<head>
	<title>StonkCon 2022</title>
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/add-student-style.css">
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>StonkCon 2022 Registration Form</h2>
		</div>
	</div>
	<table>
		<tr>
			<th><a href="index.html">Agenda</a></th>
			<th><a href="StudentControllerServlet">Register</a></th>
			<th><a href="AttendeeControllerServlet">Past Attendees</a></th>
			<th><a href="fib-test.html">Fibonacci Calculator</a></th>
		</tr>
	</table>
	<div id="container">
		<h3>Attendee Information</h3>
		
		<form action="StudentControllerServlet" method="GET">
		
			<input type="hidden" name="command" value="ADD" />
			
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><input type="text" name="firstName" /></td>
					</tr>
					<tr>
						<td><label>Last name:</label></td>
						<td><input type="text" name="lastName" /></td>
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="email" /></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>
				</tbody>
			</table>
			<div style="clear: both;"></div>
			<p>
				<a href="StudentControllerServlet">Back to List</a>
			</p>
		</form>
	</div>
</body>
</html>