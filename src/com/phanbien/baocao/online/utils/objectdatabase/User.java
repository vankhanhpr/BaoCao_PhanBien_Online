package com.phanbien.baocao.online.utils.objectdatabase;

import java.sql.Blob;
import java.util.Date;

public class User {
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getChucVu() {
		return ChucVu;
	}
	public void setChucVu(String chucVu) {
		ChucVu = chucVu;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public String getMaSo() {
		return MaSo;
	}
	public void setMaSo(String maSo) {
		MaSo = maSo;
	}
	public String getSDT() {
		return SDT;
	}
	public void setSDT(String sDT) {
		SDT = sDT;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}

	public String getChuyenNganh() {
		return ChuyenNganh;
	}
	public void setChuyenNganh(String chuyenNganh) {
		ChuyenNganh = chuyenNganh;
	}
	public String getKhoa() {
		return Khoa;
	}
	public void setKhoa(String khoa) {
		Khoa = khoa;
	}
	public String getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(String ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	
	public Blob getAvatar() {
		return Avatar;
	}
	public void setAvatar(Blob blob) {
		Avatar = blob;
	}

	private String Username;
	private String Password;
	private String ChucVu;
	private String HoTen;
	private String MaSo;
	private String SDT;
	private String Email;
	private String ChuyenNganh;
	private String Khoa;
	private String NgaySinh;
	private String DiaChi;
	private Blob Avatar;

}
