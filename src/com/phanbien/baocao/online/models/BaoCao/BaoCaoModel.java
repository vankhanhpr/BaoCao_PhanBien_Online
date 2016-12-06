package com.phanbien.baocao.online.models.BaoCao;

import java.sql.ResultSet;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;

public class BaoCaoModel {

	BaoCaoDAO bcDAO;
	public BaoCaoModel(ConnectionPool cp){
		bcDAO=new BaoCaoDAO(cp);
	}
	
	public ConnectionPool getConnectionPool(){
		return this.bcDAO.getConnectionPool();
		
	}
	public void releaseConnection(){
		this.bcDAO.getDbm().releaseConnection();;
	}
	public void refreshConnection(){
		this.bcDAO.getDbm().refreshConnectionPool();
	}
	
	public ResultSet Authentication(String MaSo,String ChucVu){
		return this.bcDAO.Authentication(MaSo, ChucVu);
	}
	
	public boolean ToMark(String MaDeTai, String MaSo, double Diem, String NhanXet){
		return this.bcDAO.ToMark(MaDeTai, MaSo, Diem, NhanXet);
	}
	
	
}
