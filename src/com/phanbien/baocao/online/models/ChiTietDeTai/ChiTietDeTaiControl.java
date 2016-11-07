package com.phanbien.baocao.online.models.ChiTietDeTai;

import java.sql.SQLException;
import java.util.ArrayList;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.ChiTietDeTai;
import com.phanbien.baocao.online.utils.objectdatabase.User;

public class ChiTietDeTaiControl {

	private ChiTietDeTaiModel ctdtModel;
	public ChiTietDeTaiControl(ConnectionPool cp){
		this.ctdtModel=new ChiTietDeTaiModel(cp);
	}
	public ConnectionPool getConnectionPool(){
		return this.ctdtModel.getConnectionPool();
	}
	public void releaseConnection(){
		this.ctdtModel.releaseConnection();
	}
	public void refreshConnection(){
		this.ctdtModel.refreshConnection();
	}
	
	public ChiTietDeTai getChiTietDeTai(String MaDeTai) throws SQLException{
		return this.ctdtModel.getChiTietDeTai(MaDeTai);
	}
	
	public static void main(String[] args) throws SQLException{
		ChiTietDeTaiControl ctdt=new ChiTietDeTaiControl(new ConnectionPool());
		
		ChiTietDeTai ct=ctdt.getChiTietDeTai("1");
		
		System.out.print(ct.getNhom().getSV().get(0).getHoTen()+  "  "  );
		
	}
}
