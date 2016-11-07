package com.phanbien.baocao.online.models.ChiTietDeTai;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.DB.DBManager;

public class ChiTietDeTaiDAO implements IChiTietDeTai {

	DBManager dbm;

	public DBManager getDbm() {
		return dbm;
	}

	public ChiTietDeTaiDAO(ConnectionPool cp) {
		dbm=new DBManager(cp,"chitietdetai");
	}

	public ConnectionPool getConnectionPool() {
		return dbm.getConnectPool();
	}

	@Override
	public ResultSet getChiTietDeTai(String MaDeTai) {
		String sql="select * from viewChiTietDeTai where MaDeTai=?";
		PreparedStatement pre=null;
		try{
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDeTai);
			
		}catch(SQLException e){
			System.out.print("FAIL getchitiet ChiTietDETaiDAO");
		}
		return dbm.get(pre);
	}

}
