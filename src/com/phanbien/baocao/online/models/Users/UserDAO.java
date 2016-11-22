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
		String sql="select * from user where username= ? and password= ? and chucvu=?";
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
		String sql="update user set ";
		sql=sql+" sdt=?, hoten=?, ngaysinh=?,diachi=? where username= ?";
		
		PreparedStatement pre=null;
		try{
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, user.getSDT());
			pre.setString(2, user.getHoTen());
			pre.setString(3, user.getNgaySinh());
			pre.setString(4, user.getDiaChi());
			pre.setString(5, user.getUsername());
		}catch(SQLException e){
			System.out.print("FAIL UPDATEUSER USERDAO");
		}
		
		return dbm.update(pre);
		
	}
	@Override
	public boolean ChangePassword(String username, String oldpassword, String newpassword) {
		String sql="update user set password=? where username=? and password=?";
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
		String sql="update user set avatar=? where username=?";
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

	@Override
	public ResultSet InfoUser(String username) {
		String sql="select * from user where username= ?";
		PreparedStatement pre=null;
		try{
			
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, username);
			
		}catch(SQLException e){
			System.out.print("FAIL Checklogin USERDAO");
		}
		
		return dbm.get(pre);
	}

	@Override
	public ResultSet InfoUser_MaSo(String MaSo) {
		String sql="select * from user where maso= ?";
		PreparedStatement pre=null;
		try{
			
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaSo);
			
		}catch(SQLException e){
			System.out.print("FAIL Checklogin USERDAO");
		}
		
		return dbm.get(pre);
	}

}
