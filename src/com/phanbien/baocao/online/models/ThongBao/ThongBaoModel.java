package com.phanbien.baocao.online.models.ThongBao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.ThongBao;
import com.phanbien.baocao.online.utils.classes.*;

public class ThongBaoModel {
	private ThongBaoDAO tbDAO;

	public ThongBaoModel(ConnectionPool cp) {
		this.tbDAO = new ThongBaoDAO(cp);
	}

	public ConnectionPool getConnectionPool() {
		return this.tbDAO.getConnectionPool();

	}

	public void releaseConnection() {
		this.tbDAO.getDbm().releaseConnection();

	}

	public void refreshConnection() {
		this.tbDAO.getDbm().refreshConnectionPool();
	}

	public ArrayList<ThongBao> getAllThongBao() throws SQLException {

		// 10/10/2016 - 18:16

		ArrayList<ThongBao> listThongBao = null;

		ResultSet rs = this.tbDAO.getAllThongBao();

		Function f = new Function();
		if (rs != null) {
			listThongBao = new ArrayList<>();
			while (rs.next()) {

				ThongBao tb = new ThongBao();

				tb.setMaThongBao(rs.getString(1));
				tb.setTieuDe(rs.getString(2));
				tb.setNgay(f.toDateThongBao(rs.getTimestamp(3)));
				tb.setNoiDung(rs.getString(4));

				listThongBao.add(tb);
			}
			rs.close();
		}

		return listThongBao;

	}

	public ArrayList<ThongBao> getThongBao(int startFromPage, int recordOfPage) throws SQLException {
		// return
		ArrayList<ThongBao> listThongBao = null;

		ResultSet rs = this.tbDAO.getThongBao(startFromPage, recordOfPage);

		Function f = new Function();
		if (rs != null) {
			listThongBao = new ArrayList<>();
			while (rs.next()) {

				ThongBao tb = new ThongBao();

				tb.setMaThongBao(rs.getString(1));
				tb.setTieuDe(rs.getString(2));
				tb.setNgay(f.toDateThongBao(rs.getTimestamp(3)));
				tb.setNoiDung(rs.getString(4));

				listThongBao.add(tb);
			}
			rs.close();
		}
		return listThongBao;

	}

	public int getCountThongBao() {
		return this.tbDAO.getCountThongBao();
	}

	public boolean addThongBao(ThongBao tb) {
		return this.tbDAO.addThongBao(tb);
	}
}
