package com.phanbien.baocao.online.utils.objectdatabase;

public class ChiTietDeTai {
	String MaDeTai;
	String TenDeTai;
	Nhom Nhom;
	HoiDong HoiDong;
	
	String ThoiGianBC;
	int ThoiLuongBC;
	String NgayBC;
	String TomTat;
	
	int SLSV;
	int SLHD;
	
	@Override
	public String toString() {
		return "ChiTietDeTai [MaDeTai=" + MaDeTai + ", Nhom=" + Nhom + ", HoiDong=" + HoiDong + ", ThoiGianBC="
				+ ThoiGianBC + ", ThoiLuongBC=" + ThoiLuongBC + ", NgayBC=" + NgayBC + ", TomTat=" + TomTat + "]";
	}
	public String getTenDeTai() {
		return TenDeTai;
	}
	public void setTenDeTai(String tenDeTai) {
		TenDeTai = tenDeTai;
	}
	public String getMaDeTai() {
		return MaDeTai;
	}
	public void setMaDeTai(String maDeTai) {
		MaDeTai = maDeTai;
	}
	public Nhom getNhom() {
		return Nhom;
	}
	public void setNhom(Nhom nhom) {
		Nhom = nhom;
	}
	public HoiDong getHoiDong() {
		return HoiDong;
	}
	public void setHoiDong(HoiDong hoiDong) {
		HoiDong = hoiDong;
	}
	public String getThoiGianBC() {
		return ThoiGianBC;
	}
	public void setThoiGianBC(String thoiGianBC) {
		ThoiGianBC = thoiGianBC;
	}
	public int getThoiLuongBC() {
		return ThoiLuongBC;
	}
	public void setThoiLuongBC(int thoiLuongBC) {
		ThoiLuongBC = thoiLuongBC;
	}
	public String getNgayBC() {
		return NgayBC;
	}
	public void setNgayBC(String ngayBC) {
		NgayBC = ngayBC;
	}
	public String getTomTat() {
		return TomTat;
	}
	public void setTomTat(String tomTat) {
		TomTat = tomTat;
	}
	public int getSLSV() {
		return SLSV;
	}
	public void setSLSV(int sLSV) {
		SLSV = sLSV;
	}
	public int getSLHD() {
		return SLHD;
	}
	public void setSLHD(int sLHD) {
		SLHD = sLHD;
	}
	
	
	

}
