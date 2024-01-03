package Yuvas;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addNewProductAction")
public class addNewProductAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String productName=request.getParameter("productName");
		String category=request.getParameter("category");
		String price=request.getParameter("price");
		String active=request.getParameter("active");
		
		try {
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("insert into products values(?,?,?,?,?)");
			ps.setString(1, id);
			ps.setString(2, productName);
			ps.setString(3, category);
			ps.setString(4, price);
			ps.setString(5, active);
			ps.executeUpdate();
			response.sendRedirect("admin/addNewProduct.jsp?msg=done");
			
		}
		catch(Exception e) {
			System.out.println(e);
			response.sendRedirect("addNewProduct.jsp?msg=wrong");
		}
		
	}

}
