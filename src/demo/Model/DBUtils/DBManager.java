package demo.Model.DBUtils;

import java.sql.*;

public class DBManager implements IDBManager{

	private ConnectionPool cp;
	public ConnectionPool getCp() {
		return cp;
	}

	public DBManager(ConnectionPool cp) {
		this.cp=cp;
	}
	
	@Override
	public boolean execute(PreparedStatement pre) {
		boolean flag=false;
		
		try{
			pre.execute();
			
			flag=true;
			
		}catch(Exception e){
			flag=false;
		}
		
		return flag;
	}

	@Override
	public ResultSet get(String sql, int value) {
		return null;
	}

	@Override
	public ResultSet get(String sql, String user, String pass) {
		try {
			 PreparedStatement pre = this.cp.getConnection().prepareStatement(sql);
			 pre.setString(1, user);
			 pre.setString(2, pass);
			 
			 return pre.executeQuery();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return null;
	}

	

}
