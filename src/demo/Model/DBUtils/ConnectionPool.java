package demo.Model.DBUtils;


import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;
import java.util.Stack;

import demo.Model.*;
import demo.Model.ObjectDatabase.User;

public class ConnectionPool implements IConnectionPool{

	protected String classname;

	protected String url;

	protected String database;

	protected String user;

	protected String password;

//	private Stack<Connection> pool;
//	
//	private int numPool=0;
	
	public ConnectionPool() {
		getInfo();
	}
	private void getInfo() {
		try{
			Properties properties = new Properties();

			InputStream  input = getClass().getClassLoader().getResourceAsStream("config.properties");

			if(input==null){
				System.out.println("Cannot find config");
				return;
			}

			properties.load(input);

			classname=properties.getProperty("classname");

			url = properties.getProperty("url");

			database = properties.getProperty("database");

			user = properties.getProperty("user");

			password= properties.getProperty("password");
		}catch(IOException e){
			
		}
	}
	@Override
	public Connection getConnection() throws SQLException {
		Connection conn=null;

		try{
			Class.forName(classname);

			conn = DriverManager.getConnection(url+database,user,password);
			
			

		}catch (SQLException | ClassNotFoundException  e ) {
			System.out.print(e.getMessage());
		}

		return conn; 
	}

		
	
}
