package Yuvas;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/forgotPasswordAction")
public class forgotPasswordAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String mobileNumber=request.getParameter("mobileNumber");
		String newPassword=request.getParameter("newPassword");
		
		int check=0;
		try {
			Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and mobilenumber='"+mobileNumber+"'  ");
			while(rs.next())
			{
				check=1;
				st.executeUpdate("update users set password='"+newPassword+"' where email='"+email+"' ");
				response.sendRedirect("forgotPassword.jsp?msg=done");
			}
			if(check==0) {
				response.sendRedirect("forgotPassword.jsp?msg=invalid");
			}
			
			
		}catch(Exception e) {
			System.out.println(e);
			
		}
	}

}
