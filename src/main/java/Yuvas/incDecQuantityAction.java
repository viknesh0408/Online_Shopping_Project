package Yuvas;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/incDecQuantityAction")
public class incDecQuantityAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String email=session.getAttribute("email").toString();
		String id=request.getParameter("id");
		String incdec=request.getParameter("quantity");
		int price=0;
		int total=0;
		int quantity=0;
		int final_total=0;
		
		try {
			Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from cart where email='"+email+"' and product_id='"+id+"' and address is NULL ");
			while(rs.next()) {
				
				price=rs.getInt(4);
				total=rs.getInt(5);
				quantity=rs.getInt(3);
			}
			if(quantity==1 && incdec.equals("dec") ) {
				response.sendRedirect("myCart.jsp?msg=notPossible");
			}
			else if(quantity !=1 && incdec.equals("dec")) 
			{
				total=total-price;
				quantity=quantity-1;
				st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where email='"+email+"' and product_id='"+id+"' and address is NULL ");
				response.sendRedirect("myCart.jsp?msg=dec");
			}
			else {
				total=total+price;
				quantity=quantity+1;
				st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where email='"+email+"' and product_id='"+id+"' and address is NULL ");
				response.sendRedirect("myCart.jsp?msg=inc");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
