package com.phanbien.baocao.online.models.Nhom;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.phanbien.baocao.online.models.Users.UserDAO;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.User;

public class NhomModel {

private NhomDAO nDAO;
	
	public NhomModel(ConnectionPool cp){
		this.nDAO=new NhomDAO(cp);
	}
	
	public ConnectionPool getConnectionPool(){
		return this.nDAO.getConnectionPool();
	}
	public void releaseConnection(){
		this.nDAO.getDbm().releaseConnection();;
	}
	public void refreshConnection(){
		this.nDAO.getDbm().refreshConnectionPool();
	}
	
	public ArrayList<User> getSVNhom(String MaNhom) throws SQLException{
		ArrayList<User> listUser=null;
		
		ResultSet rs=this.nDAO.getSVNhom(MaNhom);
		
		if(rs!=null){
			listUser=new ArrayList<>();
			while(rs.next()){
				User u=new User();
				
				u.setUsername(rs.getString(1));
				//u.setPassword(rs.getString(2));
				u.setChucVu(rs.getString(3));
				u.setHoTen(rs.getString(4));
				u.setMaSo(rs.getString(5));
				u.setSDT(rs.getString(6));
				u.setEmail(rs.getString(7));
				u.setChuyenNganh(rs.getString(8));
				u.setKhoa(rs.getString(9));
				u.setNgaySinh(rs.getDate(10).toString());
				u.setDiaChi(rs.getString(11));
//				if(rs.getBlob(12)!=null)
//						u.setAvatar(rs.getBlob(12));
				
				listUser.add(u);
				
			}
		}
		return listUser;
	}
	
}
