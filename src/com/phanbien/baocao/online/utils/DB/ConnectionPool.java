package com.phanbien.baocao.online.utils.DB;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Stack;

public class ConnectionPool {

	private String classname;

	private String url;

	private String database;

	private String user;

	private String password;

	private Stack<Connection> poolConnect;

	public ConnectionPool() {
		GetInfo();
		this.poolConnect = new Stack<Connection>();
	}

	private void GetInfo() {

		try {
			Properties properties = new Properties();

			InputStream input = getClass().getClassLoader().getResourceAsStream("config.properties");

			if (input == null) {
				System.out.println("Cannot find config");
				return;
			}

			properties.load(input);

			classname = properties.getProperty("classname");

			url = properties.getProperty("url");

			database = properties.getProperty("database");

			user = properties.getProperty("user");

			password = properties.getProperty("password");

			Class.forName(classname);

		} catch (IOException | ClassNotFoundException e) {

		}
	}
	public Connection getConnection(String objectName) throws SQLException {

		Connection con = null;
		
		refreshConnectionPool();
		if (this.poolConnect.isEmpty()) {

			System.out.println(objectName + " have created a new Connection.");

			con = DriverManager.getConnection(url + database+"?useUnicode=true&characterEncoding=utf-8&useSSL=true", user, password);
		} else {
			System.out.println(objectName + " have poped a Connection.");

			con = (Connection) this.poolConnect.pop();
		}

		return con;
	}

	public void releaseConnection(Connection con, String objectName) throws SQLException {
		System.out.println(objectName + " have pushed the Connection.");
		this.poolConnect.push(con);
	}

	public void refreshConnectionPool() {
		while (!this.poolConnect.empty()) {
			try {
				this.poolConnect.pop().close();

			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
		}
	}
}
