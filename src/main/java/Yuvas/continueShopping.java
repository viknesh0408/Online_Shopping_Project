package Yuvas;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/continueShopping")
public class continueShopping extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String email=session.getAttribute("email").toString();
		String status="Processing";
		
		
		try {
			Connection con=ConnectionProvider.getCon();
			PreparedStatement st=con.prepareStatement("update cart set status=? where email=? and status='bill'");
			st.setString(1, status);
			st.setString(2, email);
			st.executeUpdate();
			response.sendRedirect("home.jsp");
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		
	}

}
