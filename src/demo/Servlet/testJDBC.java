package demo.Servlet;
import java.sql.*;
import java.util.HashMap;
import java.util.Hashtable;

import sun.font.CreatedFontTracker;
import demo.Constraint.*;


public class testJDBC implements Constant{
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost/test";
	
	static final String USER = "root";
	static final String PASS = "9244";
	
	private static String createKeyword(String keyword){
		String result="";
		
		result=keyword.replaceAll("-", "_").toUpperCase();
		
		return result;
	}
	public static void main(String[] args) {
		
			
//			String[][] matrix={ 
//					{HOMEPAGE,"Trang chủ"},
//					{PROFILE,"Thông tin cá nhân"},
//					{REPORT,"Báo cáo"},
//					{VIEWRESULT,"Xem kết quả"},
//					{HELP,"Hướng dẫn"}};
//			System.out.println(createKeyword(matrix[0][0]+""));
		  /* Statement stmt = null;
		   Connection conn = null;
		   try{
		      //STEP 2: Register JDBC driver
		      Class.forName("com.mysql.jdbc.Driver");

		      //STEP 3: Open a connection
		      System.out.println("Connecting to database...");
		      conn = DriverManager.getConnection(DB_URL,USER,PASS);

		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      stmt = conn.createStatement();
		      String sql;
		      sql = "Insert into hocsinh values(?,?,?)";
		      try {
		            PreparedStatement ps = conn.prepareStatement(sql);

		            ps.setString(1, "MoiTHem");
		            ps.setString(2, "AA");
		            ps.setDouble(3, 2);
		            ps.executeUpdate();

		           System.out.print("Success");
		        } catch (SQLException e) {
		            
		        }
		      //STEP 6: Clean-up environment
		     
		      stmt.close();
		      conn.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            stmt.close();
		      }catch(SQLException se2){
		      }// nothing we can do
		      try{
		         if(conn!=null)
		            conn.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }//end finally try
		   }//end try
		   System.out.println("Goodbye!");*/

	}


}
