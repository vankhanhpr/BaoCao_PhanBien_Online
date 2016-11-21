package com.phanbien.baocao.online.models.XemKetQua;

import com.phanbien.baocao.online.utils.objectdatabase.HoiDong;
import com.phanbien.baocao.online.utils.objectdatabase.User;
import com.phanbien.baocao.online.utils.objectdatabase.XemKetQuaSV;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.phanbien.baocao.online.models.Users.UserControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
public class XemKQGiangVienControl {
	private XemKQGiangVienDAO xemkqDAO;
	private UserControl uControl;
	public XemKQGiangVienControl(ConnectionPool cp){
		//Đã khai báo thì cần khởi tạo
				
		xemkqDAO=new XemKQGiangVienDAO(cp);
		
		uControl=new UserControl(cp);
	}
	
	
	//Các phương thức dùng trên database gồm lấy kết nối, đưa conenction vào stack, đưa connection ra khỏi stack
	public ConnectionPool getConnectionPool() {
		return this.xemkqDAO.getConnectionPool();

	}

	public void releaseConnection() {
		this.xemkqDAO.getDbm().releaseConnection();
		
	}

	public void refreshConnection() {
		this.xemkqDAO.getDbm().refreshConnectionPool();
	}

	//Vì Giảng viên có nhiều đề tài nên cần 1 mảng dữ liệu chứa từng đề tài
	
		//Dùng ArrayList với kiểu dữ liệu của đề tài là XemKetQuaSV
		
	public ArrayList<XemKetQuaSV> getKetQuaGiangVien(String maso) throws SQLException{
		
		//Khỏi tạo biến listKQGV 
		
		ArrayList<XemKetQuaSV> listKQGV=new ArrayList<>();
		
		//Dùng lớp DAO để thực thi lệnh từ sql tạo thành 1 datatable (tức ResultSet)
		
		
		ResultSet rs=xemkqDAO.getKetQuaGiangVien(maso);
		
		if(rs!=null){
			//Lấy từng record trong resultset
			while(rs.next()){
				
				XemKetQuaSV xemkq=new XemKetQuaSV();
				
				xemkq.setNgayBaoCao(rs.getDate("NgayBaoCao").toString());
				xemkq.setThoiGianBaoCao(rs.getTime("ThoiGianBC").toString());
				xemkq.setTenDeTai(rs.getString("TenDeTai"));
				
				HoiDong hd=new HoiDong();
				
				User gvhd=this.uControl.InfoUser_MaSo(rs.getString("MaGVHD"));
				User gvpb=this.uControl.InfoUser_MaSo(rs.getString("MaGVPB"));
				User uyvien=this.uControl.InfoUser_MaSo(rs.getString("MaUyVien"));
				String MaChuTich=rs.getString("MaChuTich");
				
				
				hd.setGVHD(gvhd);
				hd.setGVPB(gvpb);
				hd.setUyVien(uyvien);
				
				hd.setMaChuTich(MaChuTich);
				
				hd.setDiemGVHD(rs.getString("DiemGVHD"));
				hd.setDiemGVPB(rs.getString("DiemGVPB"));		
				hd.setDiemUyVien(rs.getString("DiemUV"));

				xemkq.setHoiDong(hd);
				
				//Thêm 1 hàng trong csdl vào list
				listKQGV.add(xemkq);
			}
		
		}
		return listKQGV;
		
	}
	
}
