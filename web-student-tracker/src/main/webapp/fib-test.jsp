<!DOCTYPE html>
<html>
<head>
	<title>StonkCon 2022</title>
	
	<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
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
<br><br>
The Fibonacci Number is: 
<%!
   int fibonacciNumber(int inputNumber) {
     if (inputNumber < 2) {
       return inputNumber;      
     } else {
       return fibonacciNumber(inputNumber - 1) + fibonacciNumber(inputNumber - 2);
     }
   }
%>
<%
int fibNumber = Integer.parseInt(request.getParameter("num"));
out.println(fibonacciNumber(fibNumber));
%>
<div style="clear: both;"></div>
<p>
<a href="fib-test.html">Calculate Another Number</a>
</p>
</body>