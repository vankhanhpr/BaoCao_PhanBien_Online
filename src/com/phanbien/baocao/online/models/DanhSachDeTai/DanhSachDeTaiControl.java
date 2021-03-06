package com.phanbien.baocao.online.models.DanhSachDeTai;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import com.mysql.fabric.xmlrpc.base.Array;
import com.phanbien.baocao.online.models.Users.UserControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.DeTaiGV_TK;
import com.phanbien.baocao.online.utils.objectdatabase.DeTaiSV;
import com.phanbien.baocao.online.utils.objectdatabase.User;
import com.phanbien.baocao.online.utils.objectdatabase.XD_DeTai;

public class DanhSachDeTaiControl {
	DanhSachDeTaiDAO ds;
	UserControl uControl;
	public DanhSachDeTaiControl(ConnectionPool cp) {
		ds = new DanhSachDeTaiDAO(cp);
		uControl=new UserControl(cp);
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

	public DeTaiSV ChiTietDeTaiSV(String MaSo) throws SQLException {
		DeTaiSV dt = null;
		ResultSet rs = this.ds.ThongTinDeTaiSV(MaSo);
		if (rs != null) {
			if (rs.next()) {
				dt = new DeTaiSV();
				dt.setMaSo(rs.getString(1));
				dt.setHoTen(rs.getString(2));
				dt.setTenDeTai(rs.getString(3));
				dt.setNgayBaoCao(rs.getDate(4)==null?"":rs.getDate(4).toString());
				dt.setThoiGianBaoCao(rs.getTime(5)==null?"":rs.getTime(5).toString());
				dt.setThoiLuongBaoCao(rs.getInt(6)+"");
				dt.setTrangThai(rs.getString(7));
				dt.setMaDT(rs.getInt(8)+"");
			}
		}
		return dt;
	}
	public DeTaiSV TenGVHD(String MaDT) throws SQLException {
		DeTaiSV dt = null;
		ResultSet rs = this.ds.TenGVHD(MaDT);
		if (rs != null) {
			if (rs.next()) {
				dt = new DeTaiSV();
				dt.setGiangVienHD(rs.getString(2));
			}
		}
		return dt;
	}
	public DeTaiSV TenUyVien(String MaDT) throws SQLException {
		DeTaiSV dt = null;
		ResultSet rs = this.ds.TenUyVien(MaDT);
		if (rs != null) {
			if (rs.next()) {
				dt = new DeTaiSV();
				dt.setUyVien(rs.getString(2));
			}
		}
		return dt;
	}
	public DeTaiSV TenGVPB(String MaDT) throws SQLException {
		DeTaiSV dt = null;
		ResultSet rs = this.ds.TenGVPB(MaDT);
		if (rs != null) {
			if (rs.next()) {
				dt = new DeTaiSV();
				dt.setPhanBien(rs.getString(2));
			}
		}
		return dt;
	}
	public DeTaiSV TenChuTich(String MaDT) throws SQLException {
		DeTaiSV dt = null;
		ResultSet rs = this.ds.TenChuTich(MaDT);
		if (rs != null) {
			if (rs.next()) {
				dt = new DeTaiSV();
				dt.setChuTich(rs.getString(2));
			}
		}
		return dt;
	}
	public ArrayList<DeTaiGV_TK> DanhSachDeTaiChucVuUyvien(String MaSo) throws SQLException {
		ArrayList<DeTaiGV_TK>  dt = null;
		ResultSet rs = this.ds.DanhSachDeTaiChucVuUyVien(MaSo);
		if (rs != null) {
			dt = new ArrayList<>();
			while (rs.next()){
				DeTaiGV_TK ct=new DeTaiGV_TK();
				
				DanhSach(ct, rs);
							
				dt.add(ct);
			}
			rs.close();
		}
		return dt;
	}
	public ArrayList<DeTaiGV_TK> DanhSachDeTaiChucVuPhanBien(String MaSo) throws SQLException {
		ArrayList<DeTaiGV_TK>  dt = null;
		ResultSet rs = this.ds.DanhSachDeTaiChucVuPhanBien(MaSo);
		if (rs != null) {
			dt = new ArrayList<>();
			while (rs.next()){
				DeTaiGV_TK ct=new DeTaiGV_TK();
				
				DanhSach(ct, rs);
				
				dt.add(ct);
			}
			rs.close();
		}
		return dt;
	}
	public ArrayList<DeTaiGV_TK> DanhSachDeTaiChucVuHuongDan(String MaSo) throws SQLException {
		ArrayList<DeTaiGV_TK>  dt = null;
		ResultSet rs = this.ds.DanhSachDeTaiChucVuHuongDan(MaSo);
		
		if (rs != null) {
			System.out.println("ạhashasj");
			dt = new ArrayList<>();
			
			while (rs.next()){
				DeTaiGV_TK ct=new DeTaiGV_TK();
				
				DanhSach(ct, rs);
				ct.setTrangThaiSV(rs.getString(7));
				dt.add(ct);
			}
			rs.close();
		}
		return dt;
	}
	public void DanhSach(DeTaiGV_TK ct, ResultSet rs) throws SQLException{
		
		ct.setMaSo(rs.getString(1));
		ct.setMaDT(rs.getInt(2)+"");
		ct.setTenDeTai(rs.getString(3));
		ct.setNgayBaoCao(rs.getDate(4)==null?"":rs.getDate(4).toString());
		ct.setThoiGianBaoCao(rs.getTime(5)==null?"":rs.getTime(5).toString());
		ct.setTrangThai(rs.getString(6));
		ResultSet hd = this.ds.TenGVHD_DeTai(ct.getMaDT());
		ResultSet uv = this.ds.TenUyVien_DeTai(ct.getMaDT());
		ResultSet pb = this.ds.TenPhanBien_DeTai(ct.getMaDT());
		ResultSet ctich = this.ds.TenChuTich_DeTai(ct.getMaDT());
		ResultSet soLuong = this.ds.SoLuong_SV(ct.getMaDT());
		
		if(hd!=null)
			while(hd.next()){
				ct.setGiangVienHD(hd.getString(2));
			}
		if(uv!=null)
			while(uv.next()){
				ct.setUyVien(uv.getString(2));
			}
		if(pb!=null)
			while(pb.next()){
				ct.setGiangVienPB(pb.getString(2));
			}
		if(ctich!=null)
			while(ctich.next()){
				ct.setChuTich(ctich.getString(2));
			}
		if(soLuong!=null){
			while(soLuong.next()){
				ct.setSoLuongSV(soLuong.getString(2));
			}
		}
		
		hd.close();
		uv.close();
		pb.close();
		soLuong.close();
	}
	public boolean SaveFormBaoCao(String MaDT, String tenFile, String tomTat, String TrangThai){
		return ds.updateFormBaoCao(MaDT, tenFile, tomTat, TrangThai);
	}
	public ArrayList<XD_DeTai> DanhSachDeTaiCanXepLich() throws SQLException {
		ArrayList<XD_DeTai>  dt = null;
		ResultSet rs = this.ds.getDanhSachDeTaiXepLich();
		
		if (rs != null) {
			dt = new ArrayList<>();
			while (rs.next()){
				XD_DeTai xl=new XD_DeTai();
				
				xl.setMaDT(rs.getInt(1)+"");
				xl.setTenDT(rs.getString(2));
				
				dt.add(xl);
			}
			rs.close();
		}
		return dt;
	}
	public ArrayList<DeTaiGV_TK> getAllDanhSachDeTai() throws SQLException {
		ArrayList<DeTaiGV_TK>  result = null;
		ResultSet rs = this.ds.getAllDanhSachDeTai();
		
		if (rs != null) {
			result = new ArrayList<>();
			while (rs.next()){
				DeTaiGV_TK dt=new DeTaiGV_TK();
				
				dt.setMaDT(rs.getString("MaDT"));
				dt.setTenDeTai(rs.getString("TenDeTai"));
				
				dt.setChuTich(uControl.InfoUser_MaSo(rs.getString("MaChuTich")).getHoTen());
				dt.setGiangVienHD(uControl.InfoUser_MaSo(rs.getString("MaGVHD")).getHoTen());
				dt.setGiangVienPB(uControl.InfoUser_MaSo(rs.getString("MaGVPB")).getHoTen());
				dt.setUyVien(uControl.InfoUser_MaSo(rs.getString("MaUyVien")).getHoTen());
				dt.setThoiGianBaoCao(rs.getTime("ThoiGianBC")==null?"":rs.getTime("ThoiGianBC").toString());
				dt.setNgayBaoCao(rs.getDate("NgayBaoCao")==null?"":rs.getDate("NgayBaoCao").toString());
				
				dt.setTrangThai(rs.getString("TrangThai"));
				result.add(dt);
			}
			rs.close();
		}
		return result;
	}
	public String getNhanXetTruocBC(String MaDT) throws SQLException{
		
		String result="";
		ResultSet rs = this.ds.getNhanXetTruocBC(MaDT);
		
		if (rs != null) {
			if(rs.next()){
				result=rs.getString("nhanxettruocbc");
			}
		}
		return result;
	}
	public String getXepLoaiDT(String MaDT) throws SQLException{
		
		String result="";
		ResultSet rs = this.ds.getXepLoai(MaDT);
		
		if (rs != null) {
			if(rs.next()){
				result=rs.getString("xeploai");
			}
		}
		return result;
	}
	public static void main(String[]arg) throws SQLException{
		DanhSachDeTaiControl c=new DanhSachDeTaiControl(new ConnectionPool());
		ArrayList<DeTaiGV_TK> dsd=c.getAllDanhSachDeTai();
		for (DeTaiGV_TK xd_DeTai : dsd) {
			System.out.println(xd_DeTai.getMaDT());
		}
	}
	
}
