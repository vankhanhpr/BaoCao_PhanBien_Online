package com.phanbien.baocao.online.models.ThongBao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.DB.DBManager;
import com.phanbien.baocao.online.utils.objectdatabase.ThongBao;
import com.sun.beans.editors.IntegerEditor;

public class ThongBaoDAO implements IThongBaoDAO {

	DBManager dbm;

	public DBManager getDbm() {
		return dbm;
	}

	public ThongBaoDAO(ConnectionPool cp) {
		dbm = new DBManager(cp, "thongbao");
	}

	public ConnectionPool getConnectionPool() {
		return dbm.getConnectPool();
	}

	@Override
	public ResultSet getAllThongBao() {
		String sql = "select * from thongbao order by mathongbao desc";

		return dbm.get(sql);
	}

	@Override
	public boolean addThongBao(ThongBao thongbao) {
		String sql = "call spAddThongBao(?,?,?)";

		PreparedStatement pre = null;

		try {
			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, thongbao.getTieuDe());
			pre.setString(2, thongbao.getNgay());
			pre.setString(3, thongbao.getNoiDung());

		} catch (SQLException e) {
			System.out.print("FAIL addthongbao USERDAO");
		}

		return dbm.add(pre);
	}

	@Override
	public ResultSet getThongBao(int startFromPage, int recordOfPage) {
		String sql = "select * from thongbao order by mathongbao desc limit ?,?";

		PreparedStatement pre = null;

		try {
			pre = dbm.getConnect().prepareStatement(sql);
			pre.setInt(1, startFromPage);
			pre.setInt(2, recordOfPage);

		} catch (SQLException e) {
			System.out.print("FAIL addthongbao USERDAO");
		}

		return dbm.get(pre);
	}

	@Override
	public int getCountThongBao() {
		String sql = "select count(*) from thongbao";
		String result="-1";
		
		try {
			ResultSet rs=dbm.get(sql);
			while(rs.next()){
				System.out.print(rs.getString(1));
				result=rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Integer.parseInt(result);
	}

}
