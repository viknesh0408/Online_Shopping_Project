
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
	<div id="container">
		<div class="login">
			<form action="loginaction" method="post">
				<input type="text" name="email" placeholder="Enter your Email" required>
				<input type="password" name="password" placeholder="Password" required>
				<input type="submit" value=Login>
			</form>
			<h2>
				<a href="signup.jsp">SignUp</a>
			</h2>
			<h2>
				<a href="forgotPassword.jsp">Forgot Password?</a>
			</h2>
		</div>
		<div class="logininfo">
			<%
				String msg=request.getParameter("msg");
				if("notexist".equals(msg)){
			%>
			<h1>Incorrect Username or Password</h1>
			<%} %>
			
			<%
				if("invalid".equals(msg)){
			%>
			<h1>Some thing Went Wrong! Try Again !</h1>
			<%} %>
			<h2>Yuvas Systems and Softwares</h2>
			<p>The Yuvas Systems and Softwares is the application that allows the
				users to shop Laptops and Desktop systems without going to the shops to buy them.</p>
		</div>
	</div>

</body>
</html>