package com.phanbien.baocao.online.utils.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBManager {

	private ConnectionPool connectPool;

	public ConnectionPool getConnectPool() {
		return connectPool;
	}

	private Connection connect;

	public Connection getConnect() {
		return connect;
	}

	private String objectName;

	public DBManager(ConnectionPool cp,String objectName) {
		if (cp == null) {
			this.connectPool = new ConnectionPool();

		} else {
			this.connectPool = cp;
		}

		this.objectName = objectName;

		try {
			System.out.println(this.connectPool.toString());
			this.connect = connectPool.getConnection(objectName);

			if (this.connect.getAutoCommit()) {
				this.connect.setAutoCommit(false);
			}
		} catch (Exception e) {

		}
	}

	public void releaseConnection() {
		try {
			this.connectPool.releaseConnection(this.connect, this.objectName);
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public void refreshConnectionPool() {
		this.connectPool.refreshConnectionPool();

	}

	public boolean executeUpdate(PreparedStatement pre) {
		if (pre != null) {
			try {
				int numRow = pre.executeUpdate();
				if (numRow == 0) {
					this.connect.rollback();
				} else {
					this.connect.commit();
					return true;
				}
			} catch (SQLException e) {
				try {
					this.connect.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				e.printStackTrace();
			}
			return false;
		}
		return false;
	}

	public boolean add(PreparedStatement pre) {
		return executeUpdate(pre);
	}

	public boolean update(PreparedStatement pre) {
		return executeUpdate(pre);
	}

	public boolean delete(PreparedStatement pre) {
		return executeUpdate(pre);
	}

	public ResultSet get(PreparedStatement pre) {
		try {

			return pre.executeQuery();

		} catch (SQLException ex) {

			ex.printStackTrace();

			try {
				this.connect.rollback();
			} catch (SQLException ex1) {
				ex1.printStackTrace();
			}
		}

		return null;
	}

	public ResultSet get(String sql) {
		try {
			PreparedStatement pre = this.connect.prepareStatement(sql);
			return this.get(pre);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}


}
