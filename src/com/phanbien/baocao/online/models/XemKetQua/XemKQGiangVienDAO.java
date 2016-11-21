package com.phanbien.baocao.online.models.XemKetQua;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.DB.DBManager;

public class XemKQGiangVienDAO {
	DBManager dbm;

	public DBManager getDbm() {
		return dbm;
	}

	
	public XemKQGiangVienDAO(ConnectionPool cp) {
		dbm = new DBManager(cp, "XemKQGiangVien");
	}

	public ConnectionPool getConnectionPool() {
		return dbm.getConnectPool();
	}

	public ResultSet getKetQuaGiangVien(String maso)
	{
		String sql="select * from view_xemketquagv where MaSo=?";
		
		
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
