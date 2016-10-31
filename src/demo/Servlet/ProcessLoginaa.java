package demo.Servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import demo.Model.DBUtils.ConnectionPool;
import demo.Model.DBUtils.DBManager;
import demo.Model.ObjectDatabase.User;

/**
 * Servlet implementation class ProcessLogin
 */
@WebServlet("/ProcessLoginsss")
public class ProcessLoginaa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcessLoginaa() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		
		ConnectionPool cp=new ConnectionPool();
		 
         ResultSet resultset = new DBManager(cp).get("select * from user where username=? and password=?", 
        		 user.getUsername(),  user.getPassword());
        		 	
         try {
			if(resultset.next()){
				response.getWriter().print("success");
				 
			 }else{
				 response.getWriter().print("error");
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
	}

}
