package com.phanbien.baocao.online.models.BaoCao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;

public class BaoCaoControl {

	private BaoCaoModel bcModel;
	public BaoCaoControl(ConnectionPool cp){
		this.bcModel=new BaoCaoModel(cp);
	}
	public ConnectionPool getConnectionPool(){
		return this.bcModel.getConnectionPool();
	}
	public void releaseConnection(){
		this.bcModel.releaseConnection();
	}
	public void refreshConnection(){
		this.bcModel.refreshConnection();
	}
	
	public ResultSet Authentication(String MaSo,String ChucVu){
		return this.bcModel.Authentication(MaSo, ChucVu);
	}
	
	public boolean ToMarK(String MaDeTai, String MaSo, double Diem, String NhanXet){
		return this.bcModel.ToMark(MaDeTai, MaSo, Diem, NhanXet);
	}
	
	public static void main(String[] args){
		
	}
	
}
