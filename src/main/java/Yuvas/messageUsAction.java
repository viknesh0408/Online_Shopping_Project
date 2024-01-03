package Yuvas;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/messageUsAction")
public class messageUsAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String email=session.getAttribute("email").toString();
		String subject=request.getParameter("subject");
		String body=request.getParameter("body");
		
		try {
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("insert into message (email,subject,body) values(?,?,?)");
			ps.setString(1, email);
			ps.setString(2, subject);
			ps.setString(3, body);
			ps.executeUpdate();
			response.sendRedirect("messageUs.jsp?msg=valid");
			
		} catch (Exception e) {
			System.out.println(e);
			response.sendRedirect("messageUs.jsp?msg=invalid");
		}
	}

}
