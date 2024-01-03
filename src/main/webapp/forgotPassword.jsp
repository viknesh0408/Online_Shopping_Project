<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id="container">
  <div class="forgotpassword">
  	<form action="forgotPasswordAction" method="post">
  		<input type="email" name="email" placeholder="Email">
  		<input type="number" name="mobileNumber" placeholder="Mobile Number">
  		<input type="password" name="newPassword" placeholder="Enter your New Password">
  		<input type="submit" value="Save">
  	
  	</form>
     
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class="forgotPasswordinfo">
   
   	<%
      	String msg=request.getParameter("msg");
     	if("done".equals(msg)){
     %>
	<h1>Password Changed Successfully!</h1>
	<%} %>
	
	<%	
     	if("invalid".equals(msg)){
     %>
	<h1>Some thing Went Wrong! Try Again !</h1>
	<%} %>
    <h2>Yuvas Systems and Softwares</h2>
	<p>The Yuvas Systems and Softwares is the application that allows the users to shop Laptops and Desktop systems without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>