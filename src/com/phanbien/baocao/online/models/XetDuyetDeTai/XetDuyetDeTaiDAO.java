package com.phanbien.baocao.online.models.XetDuyetDeTai;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.DB.DBManager;
import com.phanbien.baocao.online.utils.objectdatabase.NhomSV;
import com.phanbien.baocao.online.utils.objectdatabase.User;

public class XetDuyetDeTaiDAO {
	DBManager dbm;

	public DBManager getDbm() {
		return dbm;
	}

	public XetDuyetDeTaiDAO(ConnectionPool cp) {
		dbm=new DBManager(cp,"xetduyetdetai");
	}

	public ConnectionPool getConnectionPool() {
		return dbm.getConnectPool();
	}
	public ResultSet getTenDeTai(String MaDeTai) {
		String sql="select * from view_ten_detai_theo_madt where madt=?";
		PreparedStatement pre=null;
		try{
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDeTai);
			
		}catch(SQLException e){
			System.out.print("FAIL Xet Duyet");
		}
		return dbm.get(pre);
	}
	public ResultSet getNhomSV(String MaDT){
		String sql="select * from view_nhomsv_detai where madt=?";
		PreparedStatement pre=null;
		try{
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);
			
		}catch(SQLException e){
			System.out.print("FAIL Xet Duyet");
		}
		return dbm.get(pre);
	}
	public boolean updateKhiXetDuyet(String MaDT,String NhanXetTruocBC, String TrangThai,String TrangThaiSV) {
		String sql="update quatrinhbaocao set ";
		sql=sql+" nhanxettruocbc=?, trangthai=?, trangthaisv=? where madt= ?";
		
		PreparedStatement pre=null;
		try{
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, NhanXetTruocBC);
			pre.setString(2, TrangThai);
			pre.setString(3, TrangThaiSV);
			pre.setString(4, MaDT);
			
		}catch(SQLException e){
			System.out.print("FAIL Xet Duyet");
		}
		
		return dbm.update(pre);
		
	}
}
