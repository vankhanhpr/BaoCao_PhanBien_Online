package com.phanbien.baocao.online.models.XemKetQua;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.DB.DBManager;
import com.phanbien.baocao.online.utils.objectdatabase.User;

public class XemKQSinhVienDAO {

	DBManager dbm;

	public DBManager getDbm() {
		return dbm;
	}

	// khởi tạo kết nối -----------
	public XemKQSinhVienDAO(ConnectionPool cp) {
		dbm = new DBManager(cp, "XemKQSinhVien");
	}

	public ConnectionPool getConnectionPool() {
		return dbm.getConnectPool();
	}

	public ResultSet getKetQuaSinhVien(String maso)
	{
		String sql="select * from view_xemketquasv where MaSV=?";
		
		
		PreparedStatement pre=null;
		try{
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, maso);
		}catch(SQLException ex){
			ex.getStackTrace();
		}
		return dbm.get(pre);	
				
	}

}
