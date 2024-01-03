<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>

<%@page import="java.sql.*"%>
<%@page import="Yuvas.*"%>

<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Mobile Number</title>
</head>
<body>
	<%
		String msg=request.getParameter("msg");
		if("done".equals(msg)){
	%>
	<h3 class="alert">Your Mobile Number successfully changed!</h3>
	<%} %>
	
	<%
		if("wrong".equals(msg)){
	%>
	<h3 class="alert">Your Password is wrong!</h3>
	<%} %>
	
	<%
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from users where  email='"+email+"' ");
		while(rs.next()){
	%>
	
	<form action="changeMobileNumberAction" method="post">
		<div class="user-datails">
			<h3>Enter Your New Mobile Number</h3>
				<input class="input-style" type="number" name="mobileNumber" value="<%=rs.getString(3) %>" placeholder="Enter your Mobile Number" required>
			<hr>
			<h3>Enter Password (For Security)</h3>
			<input class="input-style" type="password" name="password"  placeholder="Enter your Password" required>
		</div>
		<div class="user-submit">
			<hr>
			<button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
		</div>
	</form>
	<%} %>
</body>
<br>
<br>
<br>
</html>