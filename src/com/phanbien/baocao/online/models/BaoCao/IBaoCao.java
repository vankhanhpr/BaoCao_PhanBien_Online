package com.phanbien.baocao.online.models.BaoCao;

import java.sql.ResultSet;

public interface IBaoCao {

	public ResultSet Authentication(String MaSo,String ChucVu);
	
	public boolean ToMark(String MaDeTai,String MaSo,double Diem,String NhanXet);
	
}
