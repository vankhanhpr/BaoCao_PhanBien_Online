package com.phanbien.baocao.online.models.Users;

import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.User;
import com.phanbien.baocao.online.utils.DB.DBManager;


public class UserDAO implements IUserDAO{

	DBManager dbm;
	
	public DBManager getDbm() {
		return dbm;
	}

	public UserDAO(ConnectionPool cp) {
		dbm=new DBManager(cp,"user");
	}
	
	public ConnectionPool getConnectionPool(){
		return dbm.getConnectPool();
	}
	
	@Override
	public ResultSet CheckLogin(String username, String password,String chucvu) {
		String sql="select * from User where Username= ? and Password= ? and ChucVu=?";
		PreparedStatement pre=null;
		try{
			
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, username);
			pre.setString(2, password);
			pre.setString(3, chucvu);
			
		}catch(SQLException e){
			System.out.print("FAIL Checklogin USERDAO");
		}
		
		return dbm.get(pre);
	}

	@Override
	public boolean updateUser(User user) {
		String sql="update User set ";
		sql=sql+" SDT=?, HoTen=?, NgaySinh=?,DiaChi=? where username= ?";
		
		PreparedStatement pre=null;
		try{
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, user.getSDT());
			pre.setString(2, user.getHoTen());
			pre.setString(3,user.getNgaySinh());
			pre.setString(4, user.getDiaChi());
			pre.setString(5, user.getUsername());
		}catch(SQLException e){
			System.out.print("FAIL UPDATEUSER USERDAO");
		}
		
		return dbm.update(pre);
		
	}
	@Override
	public boolean ChangePassword(String username, String oldpassword, String newpassword) {
		String sql="update User set password=? where username=? and password=?";
		PreparedStatement pre=null;
		try{
			
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, newpassword);
			pre.setString(2, username);
			pre.setString(3, oldpassword);
			
		}catch(SQLException e){
			System.out.print("FAIL changepass USERDAO");
		}
		
		return dbm.update(pre);
	}

	@Override
	public boolean ChangeAvatar(String username, InputStream nameAvatar) {
		String sql="update User set Avatar=? where username=?";
		PreparedStatement pre=null;
		try{
			
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setBlob(1, nameAvatar);
			pre.setString(2, username);
			
		}catch(SQLException e){
			System.out.print("FAIL changepass USERDAO");
		}
		
		return dbm.update(pre);
	}

}
