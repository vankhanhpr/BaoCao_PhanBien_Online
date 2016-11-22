package com.phanbien.baocao.online.models.ChiTietDeTai;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.phanbien.baocao.online.models.Nhom.NhomControl;
import com.phanbien.baocao.online.models.Users.UserControl;
import com.phanbien.baocao.online.models.Users.UserDAO;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.ChiTietDeTai;
import com.phanbien.baocao.online.utils.objectdatabase.HoiDong;
import com.phanbien.baocao.online.utils.objectdatabase.Nhom;
import com.phanbien.baocao.online.utils.objectdatabase.User;

public class ChiTietDeTaiModel {

	private ChiTietDeTaiDAO ctdtDAO;
	private UserControl uControl;
	private NhomControl nhomControl;
	public ChiTietDeTaiModel(ConnectionPool cp){
		this.ctdtDAO=new ChiTietDeTaiDAO(cp);
		this.uControl=new UserControl(cp);
		this.nhomControl=new NhomControl(cp);
	}
	
	public ConnectionPool getConnectionPool(){
		return this.ctdtDAO.getConnectionPool();
		
	}
	public void releaseConnection(){
		this.ctdtDAO.getDbm().releaseConnection();;
	}
	public void refreshConnection(){
		this.ctdtDAO.getDbm().refreshConnectionPool();
	}
	
	public ChiTietDeTai getChiTietDeTai(String MaDeTai) throws SQLException{
		ChiTietDeTai ctdt=null;
		
		ResultSet rs=this.ctdtDAO.getChiTietDeTai(MaDeTai);
		
		if(rs!=null){
			if(rs.next()){
				ctdt=new ChiTietDeTai();
				
				ctdt.setMaDeTai(rs.getString(1));
				ctdt.setTenDeTai(rs.getString(2));
				
				HoiDong hoidong=new HoiDong();
				
				User gvhd=this.uControl.InfoUser_MaSo(rs.getString("MaGVHD"));
				User gvpb=this.uControl.InfoUser_MaSo(rs.getString("MaGVPB"));
				User uyvien=this.uControl.InfoUser_MaSo(rs.getString("MaUyVien"));
				String MaChuTich=rs.getString("MaChuTich");
				
				hoidong.setGVHD(gvhd);
				hoidong.setGVPB(gvpb);
				hoidong.setUyVien(uyvien);
				hoidong.setMaChuTich(MaChuTich);
				
				ctdt.setHoiDong(hoidong);
				
				Nhom nhom=new Nhom();
				nhom.setSV(this.nhomControl.getSVNhom(rs.getString("MaNhom")))		;
				ctdt.setNhom(nhom);
				
				ctdt.setSLSV(nhom.getSV().size());
				ctdt.setSLHD(3);
				
				ctdt.setNgayBC(rs.getDate("NgayBaoCao").toString());
				ctdt.setThoiGianBC(rs.getTime("ThoiGianBC").toString());
				
			
				ctdt.setTomTat(rs.getString("TomTatDT"));
				ctdt.setThoiLuongBC(rs.getInt("ThoiLuong"));
				
				
			}
		}
	
		return ctdt;
	}
}
