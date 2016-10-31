package com.phanbien.baocao.online.models.Users;

import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.User;

public class UserModel {
	private UserDAO uDAO;
	
	public UserModel(ConnectionPool cp){
		this.uDAO=new UserDAO(cp);
	}
	
	public ConnectionPool getConnectionPool(){
		return this.uDAO.getConnectionPool();
		
	}
	public void releaseConnection(){
		this.uDAO.getDbm().releaseConnection();;
	}
	public void refreshConnection(){
		this.uDAO.getDbm().refreshConnectionPool();
	}
	
	public User CheckLogin(String username,String password,String chucvu) throws SQLException{
		User u=null;
		
		ResultSet rs=this.uDAO.CheckLogin(username, password,chucvu);
		
		if(rs!=null){
			if(rs.next()){
				u=new User();
				u.setUsername(rs.getString(1));
				u.setPassword(rs.getString(2));
				u.setChucVu(rs.getString(3));
				u.setHoTen(rs.getString(4));
				u.setMaSo(rs.getString(5));
				u.setSDT(rs.getString(6));
				u.setEmail(rs.getString(7));
				u.setChuyenNganh(rs.getString(8));
				u.setKhoa(rs.getString(9));
				u.setNgaySinh(rs.getDate(10).toString());
				u.setDiaChi(rs.getString(11));
				u.setAvatar(rs.getBlob(12));
			}
		}
		return u;
	}
	public boolean UpdateUser(User user){
		return this.uDAO.updateUser(user);
	}
	public boolean ChangePassword(String username, String oldpassword, String newpassword){
		return this.uDAO.ChangePassword(username,oldpassword,newpassword);
	}
	public boolean ChangeAvatar(String username,InputStream nameAvatar){
		return this.uDAO.ChangeAvatar(username, nameAvatar);
	}
	

}
