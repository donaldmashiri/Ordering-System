
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;

/**
 * Servlet implementation class loginCheck
 */
@WebServlet("/loginCheck")
public class loginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loginCheck() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/userdb";
		String userId = "root";
		String password = "";
		
		
//		response.getWriter().print(pass);
//		response.getWriter().print(email);
		
	
		try {
			Class.forName(driverName);
			

			Connection connection = null;
			Statement statement = null;
			ResultSet resultSet = null;
			
			
			
			

			try{ 
				connection = DriverManager.getConnection(connectionUrl, userId, password);
				statement = connection.createStatement();
				String eemail = request.getParameter("eemail");
				String epass = request.getParameter("epassword");
				
		
			String sql ="SELECT * FROM member WHERE email = '" + eemail+ "' AND password = '" + epass+ "' " ;
//			String sql ="SELECT * FROM member WHERE email = '" + eemail+ "'";
			
			resultSet = statement.executeQuery(sql);
			
			
			if(resultSet.next()) {
				String dbEmail = resultSet.getString("email");
				String dbPass = resultSet.getString("password");
				String user_name = resultSet.getString("uname");
				String user_id = resultSet.getString("user_id");
				HttpSession session=request.getSession();
				session.setAttribute("usname", user_name);
				session.setAttribute("usid", user_id);
				String sess_username =(String)session.getAttribute("usname");
				String sess_userID =(String)session.getAttribute("usid");
				
				if(eemail.equals(dbEmail) && epass.equals(dbPass)) {
					response.sendRedirect("welcome.jsp");
//					 response.getWriter().print(sess_user_id);
				}else {
					response.getWriter().print("ANgel");
				}
				
				
				
			}
			
//			while(resultSet.next()) {
//				String dbEmail = resultSet.getString("email");
//				String dbPass = resultSet.getString("password");
//				
//				response.getWriter().print(dbEmail);
//				
//			}
			
			
			
			
//			response.getWriter().print(eemail);
//			response.getWriter().print(epass);

			
		
//			;
			
			
			
//			while(resultSet.next()){
//				String dbEmail = resultSet.getString("email");
//				String dbPass = resultSet.getString("password");
				
				
				
							
				
//				if(dbEmail.equals(eemail) && dbPass.equals(epass)) {
//					
//					response.sendRedirect("welcome.jsp");
//	
//				}
//				if(!dbEmail.equals(eemail) && !dbPass.equals(epass))  {
//						response.sendRedirect("login.jsp");
//					}
//				else {
//					response.sendRedirect("login.jsp");
//				}
				
//				}

			} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("login.jsp");
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			}
		
		 String htmlRespone = "<html>";
	        htmlRespone += "<h2 style='text-align: center; margin-top:100px; min-height:50vm;'>In valid Credentilas Please try again, ";      
	        htmlRespone += "<a href='login.jsp'>login</a> </h2>";    
	        htmlRespone += "</html>";   
	    	response.getWriter().print(htmlRespone);
		
//			response.sendRedirect("login.jsp");
//			response.getWriter().print("Invalid Credentials Please <h1> H </h1>");	
	}

}
