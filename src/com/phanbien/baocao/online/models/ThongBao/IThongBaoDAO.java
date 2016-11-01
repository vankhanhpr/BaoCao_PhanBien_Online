package com.phanbien.baocao.online.models.ThongBao;

import java.sql.ResultSet;

import com.phanbien.baocao.online.utils.objectdatabase.ThongBao;

public interface IThongBaoDAO {
	
	public ResultSet getAllThongBao();
	
	public boolean addThongBao(ThongBao thongbao);

}
