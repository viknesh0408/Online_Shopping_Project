package Yuvas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

@WebServlet("/loginaction")
public class loginaction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		if("admin".equals(email) && "admin".equals(password)) {
			 HttpSession session=request.getSession();  
		     session.setAttribute("email",email);  
		     response.sendRedirect("admin/adminHome.jsp");
		}else {
			int z=0;
			
			try {
				
				Connection con=ConnectionProvider.getCon();
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+password+"' ");
				while (rs.next()) {
					
					z=1;
					HttpSession session=request.getSession();  
					session.setAttribute("email",email);
					response.sendRedirect("home.jsp");
				}
				if(z==0) {
					response.sendRedirect("login.jsp?msg=notexist"); 
				}
				
			}catch(Exception e) {
				
				response.sendRedirect("login.jsp?msg=invalid"); 
			}
			
		}
	}

}
