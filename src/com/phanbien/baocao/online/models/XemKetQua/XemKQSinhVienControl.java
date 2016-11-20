package com.phanbien.baocao.online.models.XemKetQua;

import com.phanbien.baocao.online.utils.objectdatabase.HoiDong;
import com.phanbien.baocao.online.utils.objectdatabase.User;
import com.phanbien.baocao.online.utils.objectdatabase.XemKetQuaSV;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.phanbien.baocao.online.models.Users.UserControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;

public class XemKQSinhVienControl {
	private XemKQSinhVienDAO xemkqDAO;
	private UserControl uControl;
	public XemKQSinhVienControl(ConnectionPool cp) {
		// TODO Auto-generated constructor stub
		this.xemkqDAO = new XemKQSinhVienDAO(cp);
		this.uControl= new UserControl(cp);
	}

	public ConnectionPool getConnectionPool() {
		return this.xemkqDAO.getConnectionPool();

	}

	public void releaseConnection() {
		this.xemkqDAO.getDbm().releaseConnection();
		;
	}

	public void refreshConnection() {
		this.xemkqDAO.getDbm().refreshConnectionPool();
	}

	public XemKetQuaSV getKetQuaSinhVien(String maso) throws SQLException {
		XemKetQuaSV xemkq = null;
		ResultSet rs = this.xemkqDAO.getKetQuaSinhVien(maso);
		if (rs != null) {
			if (rs.next()) {
				xemkq = new XemKetQuaSV();
				HoiDong hd = new HoiDong();
				
				xemkq.setMaSV(rs.getString(1));
				xemkq.setNgayBaoCao(rs.getDate("NgayBaoCao").toString());
				xemkq.setThoiGianBaoCao(rs.getTime("ThoiGianBC").toString());
				
				User gvhd=this.uControl.InfoUser_MaSo(rs.getString("MaGVHD"));
				User gvpb=this.uControl.InfoUser_MaSo(rs.getString("MaGVPB"));
				User uyvien=this.uControl.InfoUser_MaSo(rs.getString("MaUyVien"));
				String MaChuTich=rs.getString("MaChuTich");
				
				
				hd.setGVHD(gvhd);
				hd.setGVPB(gvpb);
				hd.setUyVien(uyvien);
				hd.setMaChuTich(MaChuTich);
				hd.setDiemGVHD(rs.getString("DiemGVHD"));
				hd.setNhanXetGVHD(rs.getString("NhanXetGVHD"));
				hd.setDiemGVPB(rs.getString("DiemGVPB"));
				hd.setNhanXetGVPB(rs.getString("NhanXetGVPB"));
				hd.setDiemUyVien(rs.getString("DiemUV"));
				hd.setNhanXetUyVien(rs.getString("NhanXetUV"));
				
				
				xemkq.setTenDeTai(rs.getString("TenDeTai"));
				xemkq.setHoiDong(hd);
			
				
			}
		}
		return xemkq;
	}
	
}
