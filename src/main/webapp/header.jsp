<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<script src="https://kit.fontawesome.com/30437f8630.js" crossorigin="anonymous"></script>
</head> 
    <div class="topnav sticky">
    
            <div><h2 style="text-align:center;">Yuvas Systems and Softwares <i class="fas fa-computer"></i> </h2></div>
           	<div class="nav=left">
	            <a href="home.jsp">Home<i class="fa fa-institution"></i></a>
	            <a href="myCart.jsp">My Cart<i class='fas fa-cart-arrow-down'></i></a>
	            <a href="myOrders.jsp">My Orders  <i class='fab fa-elementor'></i></a>
	            <a href="changeDetails.jsp">Change Details <i class="fa fa-edit"></i></a>
	            <a href="messageUs.jsp">Message Us <i class='fas fa-comment-alt'></i></a>
	            <a href="about.jsp">About <i class="fa fa-address-book"></i></a>
	            <a href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
            </div>
            <div class="nav-right">
            	<div class="user-profile">
            		<%String email=session.getAttribute("email").toString(); %>
            		 <h2><a href=""><%out.println(email); %> <i class='fas fa-user-alt'></i></a></h2>
            	</div>
	            <div class="search-container">
	            	<form action="searchHome.jsp" method="post">
	            		<input type="text" placeholder="Search" name="search">
	            		<button type="submit"><i class="fa fa-search"></i></button>
	            	</form>
	            
	             </div>
	         </div>
     </div>
           <br>
           
