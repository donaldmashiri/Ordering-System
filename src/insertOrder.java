

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class insertOrder
 */
@WebServlet("/insertOrder")
public class insertOrder extends HttpServlet {
	
	private String dbUrl = "jdbc:mysql://localhost:3306/userdb";
	private String dbUname = "root";
	private String dbPassword = "";
	public String dbDriver = "com.mysql.cj.jdbc.Driver";
	
	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	}
	
	public Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl,dbUname, dbPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String category = request.getParameter("category");
		String food = request.getParameter("food");
		String price = request.getParameter("price");
		String additionals = request.getParameter("additionals");
		String status = request.getParameter("status");
		String user_id = request.getParameter("user_id");
		String food_id = request.getParameter("food_id");
		
//		response.getWriter().print(category);
//		response.getWriter().print(food);
//		response.getWriter().print(price);
//		response.getWriter().print(status);
//		response.getWriter().print(additionals);
		
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		response.sendRedirect("userOrders.jsp");
		String sql = "insert into food_order (user_id, food_id, category, food, price, additionals, status) values(?,?,?,?,?,?,?)";
		
		PreparedStatement ps;
		
		try {
			 ps = con.prepareStatement(sql);
			ps.setString(1, user_id);
			ps.setString(2, food_id);
			ps.setString(3, category);
			ps.setString(4, food);
			ps.setString(5, price);
			ps.setString(6, additionals);
			ps.setString(7, status);
			ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.getWriter().print("data not entered");
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
