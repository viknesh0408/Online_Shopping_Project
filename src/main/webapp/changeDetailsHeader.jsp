<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<script src="https://kit.fontawesome.com/30437f8630.js" crossorigin="anonymous"></script>
</head>
    <div class="topnav sticky">
            <div><h2 style="text-align:center;">Change Details<i class="fa fa-edit"></i></h2></div>
             <%String email=session.getAttribute("email").toString(); %>
            <h2><a href="home.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
             <h2><a href="">Your Profile(<%out.println(email); %>) <i class='fas fa-user-alt'></i></a></h2>
            <a href="changePassword.jsp">Change Password <i class='fas fa-key'></i></a>
            <a href="addChangeAddress.jsp">Add or change Address <i class='fas fa-map-marker-alt'></i></a>
            <a href="changeMobileNumber.jsp">Change Mobile Number <i class='fas fa-phone'></i></a>
          </div>
           <br>
           
