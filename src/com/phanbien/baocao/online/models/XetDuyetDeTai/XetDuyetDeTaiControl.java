package com.phanbien.baocao.online.models.XetDuyetDeTai;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.phanbien.baocao.online.models.DanhSachDeTai.DanhSachDeTaiDAO;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.DeTaiSV;
import com.phanbien.baocao.online.utils.objectdatabase.NhomSV;
import com.phanbien.baocao.online.utils.objectdatabase.XD_DeTai;

public class XetDuyetDeTaiControl {

	XetDuyetDeTaiDAO xd;

	public XetDuyetDeTaiControl(ConnectionPool cp) {
		xd = new XetDuyetDeTaiDAO(cp);
	}

	public ConnectionPool getConnectionPool() {
		return this.xd.getConnectionPool();
	}

	public void releaseConnection() {
		this.xd.getDbm().releaseConnection();
	}

	public void refreshConnection() {
		this.xd.getDbm().refreshConnectionPool();
	}
	public XD_DeTai getDeTaiXetDuyet(String MaDT) throws SQLException {
		XD_DeTai dt = null;
		ResultSet rs = this.xd.getTenDeTai(MaDT);
		if (rs != null) {
			if (rs.next()) {
				dt = new XD_DeTai();
				dt.setMaDT(rs.getString(1)+"");
				dt.setTenDT(rs.getString(2));
			}
		}
		return dt;
	}
	public ArrayList<NhomSV> getNhomSV(String MaDT) throws SQLException {
		ArrayList<NhomSV> nhom_sv = null;
		ResultSet rs = this.xd.getNhomSV(MaDT);
		if (rs != null) {
			nhom_sv=new ArrayList<>();
			while (rs.next()) {
				NhomSV sv=new NhomSV();
				sv.setMaSV(rs.getString(2));
				sv.setTenSV(rs.getString(3));
				
				nhom_sv.add(sv);
				
			}
			rs.close();
		}
		return nhom_sv;
	}
	public boolean updateKhiXetDuyet_DeTai(String MaDT, String NhanXetTruocBC, String TrangThai, String TrangThaiSV){
		return xd.updateKhiXetDuyet(MaDT, NhanXetTruocBC, TrangThai, TrangThaiSV);
	}
	public ArrayList<String> getTrangThaiXetDuyetDeTai(String MaDT) throws SQLException{
		ArrayList<String> result=new ArrayList<>();
		
		ResultSet rs=this.xd.getTrangThaiXetDuyetDeTai(MaDT);
		
		if (rs != null) {
			if (rs.next()) {
				result.add(rs.getString("magvhd"));
				result.add(rs.getString("trangthai"));
			}
		}		
		return result;
		
	}
	public static void main(String[]arg){
		XetDuyetDeTaiDAO dvs=new XetDuyetDeTaiDAO(new ConnectionPool());
		ArrayList<NhomSV> nsv=(ArrayList<NhomSV>) dvs.getNhomSV("1");
		for (NhomSV nhomSV : nsv) {
			System.out.println(nhomSV.getTenSV());
		}
	}

}
