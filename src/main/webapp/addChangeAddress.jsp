<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>

<%@page import="java.sql.*"%>
<%@page import="Yuvas.*"%>

<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Add or Change Address</title>
</head>
<body>
	<%
		String msg=request.getParameter("msg");
		if("valid".equals(msg)){
	%>
	<h3 class="alert">Address Successfully Updated !</h3>
	<%} %>
	
	<%
		if("invalid".equals(msg)){
	%>
	<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
	<%} %>
	
	<%
	try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from users where email='"+email+"' ");
		while(rs.next()){
	
	%>
	<form action="addChangeAddressAction" method="post">
		<div class="user-details">
		
			<h3>Enter Address</h3>
			<input class="input-style" type="text" name="address" value="<%=rs.getString(5) %>" placeholder="Enter your Address" required>	
			<hr>
			<h3>Enter city</h3>
			<input class="input-style" type="text" name="city" value="<%=rs.getString(6) %>" placeholder="Enter your city" required>
			<hr>
			<h3>Enter State</h3>
			<input class="input-style" type="text" name="state" value="<%=rs.getString(7) %>" placeholder="Enter your State" required>
			<hr>
			<h3>Enter country</h3>
			<input class="input-style" type="text" name="country" value="<%=rs.getString(8) %>" placeholder="Enter your Country" required>
		</div>
		<hr>
		<div class="user-submit">
			<button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
		</div>
	</form>
	<%}
		}catch(Exception e){
			System.out.println(e);
		}
		%>
	<br>
	<br> 
</body>
<br>
<br>
<br>
</html>