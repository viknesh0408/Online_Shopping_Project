<%@page import="Yuvas.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table users(Name varchar(250),Email varchar(250) primary key, MobileNumber bigint,Password varchar(250), Address varchar(500),City varchar(250), State varchar(250),Country varchar(100))";
	String q2="create table products(id int primary key unique,Name varchar(250),Category varchar(250),Price int,active varchar(20))";
	String q3="create table cart(email varchar(100),product_id int, quantity int, price int, total int, address varchar(500), city varchar(100), state varchar(100), country varchar(50), mobileNumber bigint, orderDate varchar(50), deliveryDate varchar(50), paymentMethod varchar(100), transactionId varchar(100), status varchar(50))";
	String q4="create table message(Id int AUTO_INCREMENT, Email varchar(50),Subject varchar(150), Body varchar(1000), PRIMARY KEY(Id))";
	
	System.out.println(q1);
	System.out.println(q2);
	System.out.println(q3);
	System.out.println(q4);
	
	//st.execute(q1);
	//st.execute(q2);
	//st.execute(q3);
	st.execute(q4);
	
	System.out.println("Table Created");
	con.close();
}
catch(Exception e)
{
	System.out.println(e);
}
%>
