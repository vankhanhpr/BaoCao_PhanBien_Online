package com.phanbien.baocao.online.models.Users;

import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.User;

public class UserControl {
	private UserModel uModel;
	public UserControl(ConnectionPool cp){
		this.uModel=new UserModel(cp);	
	}
	public ConnectionPool getConnectionPool(){
		return this.uModel.getConnectionPool();
	}
	public void releaseConnection(){
		this.uModel.releaseConnection();
	}
	public void refreshConnection(){
		this.uModel.refreshConnection();
	}
	public User CheckLogin(String username,String password,String chucvu) throws SQLException{
		return this.uModel.CheckLogin(username, password,chucvu);
	}
	public boolean UpdateUser(User user){
		return this.uModel.UpdateUser(user);
	}
	public boolean ChangePassword(String username, String oldpassword, String newpassword){
		return this.uModel.ChangePassword(username,oldpassword,newpassword);
	}
	public boolean ChangeAvatar(String username,InputStream nameAvatar){
		return this.uModel.ChangeAvatar(username, nameAvatar);
	}
	public User InfoUser(String username) throws SQLException{
		return this.uModel.InfoUser(username);
	}
	public User InfoUser_MaSo(String MaSo) throws SQLException{
		return this.uModel.InfoUser_MaSo(MaSo);
	}
	public ArrayList<User> getListGiangVien() throws SQLException{
		return this.uModel.getListGiangVien();
	}
}
