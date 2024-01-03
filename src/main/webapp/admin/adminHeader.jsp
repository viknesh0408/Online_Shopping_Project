<%@page errorPage="../error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<script src="https://kit.fontawesome.com/30437f8630.js" crossorigin="anonymous"></script>
</head>
    <div class="topnav sticky">
   			<% String email=session.getAttribute("email").toString(); %>
            <div><h2 style="text-align:center;">Yuvas Systems and Softwares <i class="fas fa-computer"></i> </h2> </div>
            <a href="addNewProduct.jsp">Add New Product <i class="fa-solid fa-square-plus"></i></a>
            <a href="allProductEditProduct.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>
            <a href="messagesReceived.jsp">Messages Received <i class='fas fa-comment-alt'></i></a>
            <a href="ordersReceived.jsp">Orders Received <i class="fas fa-archive"></i></a>
            <a href="cancelOrders.jsp">Cancel Orders <i class='fas fa-window-close'></i></a>
            <a href="deliveredOrders.jsp">Delivered Orders <i class='fas fa-dolly'></i></a>
            <a href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
     </div>
     <br>
           
