package com.phanbien.baocao.online.models.Nhom;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.DB.DBManager;
import com.phanbien.baocao.online.utils.objectdatabase.User;

public class NhomDAO implements INhom {

	DBManager dbm;

	public DBManager getDbm() {
		return dbm;
	}

	public NhomDAO(ConnectionPool cp) {
		dbm = new DBManager(cp, "nhom");
	}

	public ConnectionPool getConnectionPool() {
		return dbm.getConnectPool();
	}

	
	@Override
	public ResultSet getSVNhom(String MaNhom) {
		
			String sql="select user.* from nhom,user where manhom= ? and nhom.masv=user.maso";
			PreparedStatement pre=null;
			try{
				
				pre=dbm.getConnect().prepareStatement(sql);
				pre.setString(1, MaNhom);
				
			}catch(SQLException e){
				System.out.print("FAIL Checklogin USERDAO");
			}
			
			return dbm.get(pre);
		}
}
