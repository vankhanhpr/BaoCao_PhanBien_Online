package com.phanbien.baocao.online.models.XepLich;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.DB.DBManager;
import com.phanbien.baocao.online.utils.objectdatabase.User;

public class XepLichDAO {
	DBManager dbm;	
	public DBManager getDbm() {
		return dbm;
	}
	//khởi tạo kết nối -----------
	public XepLichDAO(ConnectionPool cp) {
		dbm=new DBManager(cp,"xeplich");
	}
	
	public ConnectionPool getConnectionPool(){
		return dbm.getConnectPool();
	}
	public ResultSet getSoLuong_SV(String MaDT) {
		String sql="select * from view_soluongsv where MaDT=?";
		PreparedStatement pre=null;
		try{
			
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);
			
		}catch(SQLException e){
			System.out.print("FAIL XepLichDAO");
		}
		
		return dbm.get(pre);
	}
	public ResultSet getDeTai(String MaDT) {
		String sql="select * from `view_danh-sach-de-tai-xep-lich` where MaDT=?";
		PreparedStatement pre=null;
		try{
			
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);
			
		}catch(SQLException e){
			System.out.print("FAIL XepLichDAO");
		}
		
		return dbm.get(pre);
	}
	public ResultSet getTomTat_FileBacCao(String MaDT) {
		String sql="select * from view_tomtat_filebainop_xeplich where MaDT=?";
		PreparedStatement pre=null;
		try{
			
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);
			
		}catch(SQLException e){
			System.out.print("FAIL XepLichDAO");
		}
		
		return dbm.get(pre);
	}
	public ResultSet getTenGVHD_DeTai(String MaDT) {
		String sql="select * from view_gvhd_xeplich where MaDT=?";
		PreparedStatement pre=null;
		try{
			
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);
			
		}catch(SQLException e){
			System.out.print("FAIL XepLich");
		}
		
		return dbm.get(pre);
	}
	
	public ResultSet getDS_GV() {
		String sql="select * from view_ds_giangvien";
		return dbm.get(sql);
	}
	public ResultSet getDanhSach_GV(String NgayBaoCao, String ThoiGianBaoCao, String ThoiLuong) {
		String sql="call spDemoXepLich(?,?,?)";
		PreparedStatement pre=null;
		try{
			
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, NgayBaoCao);
			pre.setString(2, ThoiGianBaoCao);
			pre.setString(3, ThoiLuong);
			
		}catch(SQLException e){
			System.out.print("FAIL XepLich");
		}
		
		return dbm.get(pre);
	}
	
	public boolean updateLichBaoCao(String MaDT, String UyVien, String PhanBien, String ChuTich,String NgayBaoCao,
			String ThoiGianBaoCao,String ThoiLuong) {
		String sql="update xeplich set ";
		sql=sql+" MaUyVien=?, MaGVPB=?, MaChuTich=?,NgayBaoCao=?, ThoiGianBC=?,ThoiLuong=? where MaDeTai= ?";
		
		PreparedStatement pre=null;
		try{
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, UyVien);
			pre.setString(2, PhanBien);
			pre.setString(3, ChuTich);
			pre.setString(4, NgayBaoCao);
			pre.setString(5, ThoiGianBaoCao);
			pre.setString(6, ThoiLuong);
			pre.setString(7, MaDT);
		}catch(SQLException e){
			System.out.print("FAIL xep lich");
		}
		
		return dbm.update(pre);
		
	}
}
