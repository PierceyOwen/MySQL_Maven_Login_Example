import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Log extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uname = (request.getParameter("uname")).toLowerCase();
		String pass = request.getParameter("pass");
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/pg1wOsSiDE", "pg1wOsSiDE", "sNx27tMhAY");
			try {
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM Users WHERE Username='"+uname+"' AND Passowrd='"+pass+"'");

				if(rs.next()) {
					HttpSession session = request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("dashboard.jsp");

				}else {
					response.sendRedirect("index.jsp");
				}
			}catch (SQLException s){
				System.err.println("SQL statement is not executed");
			}

		} catch (Exception e) {
			System.err.println("Got an exception! ");
			System.err.println(e.getMessage());
			response.sendRedirect("index.jsp");
		}
	}

}
