package Yuvas;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/editProductAction")
public class editProductAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String productName=request.getParameter("productName");
		String category=request.getParameter("category");
		String price=request.getParameter("price");
		String active=request.getParameter("active");
		
		try {
			Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
			st.executeUpdate("update products set Name='"+productName+"', Category='"+category+"',Price='"+price+"', active='"+active+"' where id='"+id+"' ");
			if(active.equals("Not Available")) {
				st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");
			}
			response.sendRedirect("admin/allProductEditProduct.jsp?msg=done");
		}
		catch(Exception e) {
			System.out.println(e);
			response.sendRedirect("admin/allProductEditProduct.jsp?msg=wrong");
		}
	}

}
