<%@ page import="java.util.*, com.luv2code.web.jdbc.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>StonkCon 2022</title>
	<link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<% 

  //wait 5 seconds then get the students from the request object sent by servlet
  Thread.sleep(5000);
  List<Attendee> theAttendees =
  					(List<Attendee>) request.getAttribute("ATTENDEE_LIST");//same attribute from the ControllerServlet.java

%>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>StonkCon 2022</h2>
		</div>
		<table>
			<tr>
				<th><a href="index.html">Agenda</a></th>
				<th><a href="StudentControllerServlet">Register</a></th>
				<th><a href="AttendeeControllerServlet">Past Attendees</a></th>
				<th><a href="fib-test.html">Fibonacci Calculator</a></th>
			</tr>
		</table>
	</div>
	<h4>Previous StonkCon Attendees</h4>
	<p>...for some reason this page takes a few seconds to load</p>
	<div id="container">
		<div id="content"><br><br>
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>
				
				<% for (Attendee tempAttendee : theAttendees) { %>
				
					<tr>
						<td> <%= tempAttendee.getFirstName() %></td>
						<td> <%= tempAttendee.getLastName() %></td>
						<td> <%= tempAttendee.getEmail() %></td>
					</tr>
				
				<% } %>

			</table>
		</div>
	</div>
</body>



</html>