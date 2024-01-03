<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
	<div id="container">
		<div class="signup">
			<form action="signupaction" method="post">
				<div class="userdetails">
					<input type="text" name="name" placeholder="Name">
					 <input type="email" name="email" placeholder="Email">
					  <input type="number" name="mobilenumber" placeholder="Mobile Number">
					<input type="password" name="password" placeholder="Enter your Password"> 
					<input type="submit" Value="SignUp">
				</div>
			</form>
			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class="signupinfo">
		
			<%
				String msg=request.getParameter("msg");
				if("valid".equals(msg))
				{		
			%>
				<h1>Successfully Registered</h1>
			<%	} %>
			
			<%
				if("invalid".equals(msg))
				{
			%>

			   <h1>Some thing Went Wrong! Try Again !</h1>
			<%	} %>
			<h2>Yuvas Systems and Softwares</h2>
			<p>The Yuvas Systems and Softwares is the application that allows the
				users to shop Laptops and Desktop systems without going to the shops to buy them.</p>
		</div>
	</div>

</body>
</html>