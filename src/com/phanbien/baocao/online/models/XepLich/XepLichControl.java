package com.phanbien.baocao.online.models.XepLich;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.phanbien.baocao.online.models.XepLich.*;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.DS_GiangVien;
import com.phanbien.baocao.online.utils.objectdatabase.ThongBao;
import com.phanbien.baocao.online.utils.objectdatabase.XepLich_DT;

public class XepLichControl {
	XepLichDAO ds;

	public XepLichControl(ConnectionPool cp) {
		ds = new XepLichDAO(cp);
	}

	public ConnectionPool getConnectionPool() {
		return this.ds.getConnectionPool();
	}

	public void releaseConnection() {
		this.ds.getDbm().releaseConnection();
	}

	public void refreshConnection() {
		this.ds.getDbm().refreshConnectionPool();
	}
	public XepLich_DT getChiTietXepLich(String MaDT) throws SQLException{
		XepLich_DT xldt=null;
		xldt=new XepLich_DT();
		ResultSet dt=ds.getDeTai(MaDT);
		ResultSet sl=ds.getSoLuong_SV(MaDT);
		ResultSet tt=ds.getTomTat_FileBacCao(MaDT);
		ResultSet gv=ds.getTenGVHD_DeTai(MaDT);
		
		if(dt!=null)
			if(dt.next()){
				xldt.setMaDT(dt.getInt(1)+"");
				xldt.setTenDT(dt.getString(2));
			}
		if(sl!=null){
			if(sl.next()){
				xldt.setSoLuong(sl.getString(2));
				
			}
		}
		if(tt!=null)
			if(tt.next()){
				xldt.setTomTat(tt.getString(2));
				xldt.setFileBaoCao(tt.getString(3));
			}
		if(gv!=null)
			if(gv.next()){
				xldt.setMaGVDH(gv.getString(2));
				xldt.setTenGVHD(gv.getString(3));
			}
		
		return xldt;
	}
	public ArrayList<DS_GiangVien> getDS_GiangVien() throws SQLException{
		ArrayList<DS_GiangVien> dsgv=null;
		ResultSet rs=ds.getDS_GV();
		
		if (rs != null) {
			dsgv = new ArrayList<>();
			while (rs.next()) {

				DS_GiangVien gv = new DS_GiangVien();
				
				gv.setMaGV(rs.getString(1));
				gv.setTenGV(rs.getString(2));
				

				dsgv.add(gv);
			}
			rs.close();
		}

		return dsgv;
	}
	
	public ArrayList<DS_GiangVien> getDS_GiangVien(String NgayBaoCao,String ThoiGianBC,String ThoiLuong, String MaGVHD) throws SQLException{
		ArrayList<DS_GiangVien> dsgv=null;
		ResultSet rs=ds.getDanhSach_GV(NgayBaoCao, ThoiGianBC, ThoiLuong, MaGVHD);
		
		if (rs != null) {
			dsgv = new ArrayList<>();
			while (rs.next()) {

				DS_GiangVien gv = new DS_GiangVien();
				
				gv.setMaGV(rs.getString(1));
				gv.setTenGV(rs.getString(2));
				

				dsgv.add(gv);
			}
			rs.close();
		}

		return dsgv;
	}
	public boolean updateXepLich(String MaDT, String UyVien, String PhanBien, String ChuTich,String NgayBaoCao,
			String ThoiGianBaoCao,String ThoiLuong){
		return ds.updateLichBaoCao(MaDT, UyVien, PhanBien, ChuTich, NgayBaoCao, ThoiGianBaoCao, ThoiLuong);
	}
//	public static void main(String[]arg) throws SQLException{
//		XepLichControl xl=new XepLichControl(new ConnectionPool());
//		ArrayList<DS_GiangVien> ds=xl.getDS_GiangVien("2016-11-22", "9:00", "45");
//		for (DS_GiangVien ds_GiangVien : ds) {
//			System.out.println(ds_GiangVien.getTenGV());
//		}
//	}
	
}
