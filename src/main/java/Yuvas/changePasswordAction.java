package Yuvas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
@WebServlet("/changePasswordAction")
public class changePasswordAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String email=session.getAttribute("email").toString();
		String oldPassword=request.getParameter("oldPassword");
		String newPassword=request.getParameter("newPassword");
		String confirmPassword=request.getParameter("confirmPassword");
		
		if(!confirmPassword.equals(newPassword)) {
			response.sendRedirect("changePassword.jsp?msg=notMatch");
		}
		else {
			int check=0;
			try {
				Connection con=ConnectionProvider.getCon();
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+oldPassword+"' ");
				while(rs.next()) {
					check=1;
					st.executeUpdate("update users set password='"+newPassword+"' where email='"+email+"' ");
					response.sendRedirect("changePassword.jsp?msg=done");
					
				}
				if(check==0) {
					response.sendRedirect("changePassword.jsp?msg=wrong");
				}
				
			} catch (Exception e) {
				System.out.println(e);
			}
		}
	}

}
