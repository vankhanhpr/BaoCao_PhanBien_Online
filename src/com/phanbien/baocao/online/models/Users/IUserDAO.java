package com.phanbien.baocao.online.models.Users;

import java.sql.ResultSet;

import com.phanbien.baocao.online.utils.objectdatabase.User;


public interface IUserDAO {
	
	public ResultSet CheckLogin(String username,String password,String chucvu);
	
	public boolean updateUser(User user);
	
	public boolean ChangePassword(String username,String oldpassword,String newpassword);
	
	public boolean ChangeAvatar(String username,String nameAvatar);
	
}
