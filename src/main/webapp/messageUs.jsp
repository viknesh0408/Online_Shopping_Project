<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>

<%@page import="java.sql.*"%>
<%@page import="Yuvas.*"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
	<div style="color: white; text-align: center; font-size: 30px;">
		Message Us <i class='fas fa-comment-alt'></i>
	</div>
	<%
		String msg=request.getParameter("msg");
		if("valid".equals(msg)){
	%>
	<h3 style="text-align: center; color: yellow;">Message
		successfully sent. Our team will contact you soon!</h3>
	<%} %>
	
	<%
		if("valid".equals(msg)){
	%>
	<h3 style="text-align: center;">Some thing Went Wrong! Try Again!</h3>
	<%} %>


	<form action="messageUsAction" method="post">
		<input class="input-style" type="text" name="subject" placeholder="Subject" required>
		<hr>
		<textarea class="input-style" name="body" placeholder="Enter your Message" required></textarea>
		
		<button class="button" type="submit">Submit <i class="far fa-arrow-alt-circle-right"></i> </button>
	</form>
	<br>
	<br>
	<br>
</body>
</html>