package Yuvas;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cancelOrdersAction")
public class cancelOrdersAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String email=request.getParameter("email");
		String status="Canceled";
		
		try {
			Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
			st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not NULL");
			response.sendRedirect("admin/ordersReceived.jsp?msg=cancel");
			
			
		} catch(Exception e) {
			System.out.println(e);
			response.sendRedirect("admin/ordersReceived.jsp?msg=wrong");
		}
	}

}
