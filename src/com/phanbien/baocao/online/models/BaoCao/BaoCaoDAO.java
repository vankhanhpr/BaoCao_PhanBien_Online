package com.phanbien.baocao.online.models.BaoCao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.DB.DBManager;

public class BaoCaoDAO implements IBaoCao{
	
	DBManager dbm;

	public DBManager getDbm() {
		return dbm;
	}

	public BaoCaoDAO(ConnectionPool cp) {
		dbm=new DBManager(cp,"baocao");
	}

	public ConnectionPool getConnectionPool() {
		return dbm.getConnectPool();
	}

	@Override
	public ResultSet Authentication(String MaSo,String ChucVu) {
		
		String sql="";
		PreparedStatement pre = null;
		
		sql= ChucVu.equals("1") ? "call spVaoBaoCao_SV(?)": "call spVaoBaoCao_GV(?)";
		
		try {
			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaSo);
		} catch (SQLException e) {
			System.out.print("FAIL ToMark BaoCaoDao");
		}
		
		return dbm.get(pre);
	}

	@Override
	public boolean ToMark(String MaDeTai, String MaSo, double Diem, String NhanXet) {
		String sql = "call spCapNhatDiem(?,?,?,?)";

		PreparedStatement pre = null;

		try {
			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDeTai);
			pre.setString(2, MaSo);
			pre.setDouble(3, Diem);
			pre.setString(4, NhanXet);

		} catch (SQLException e) {
			System.out.print("FAIL ToMark BaoCaoDao");
		}

		return dbm.update(pre);
	}
	
	
}
