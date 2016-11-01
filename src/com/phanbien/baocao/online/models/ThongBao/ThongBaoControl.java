package com.phanbien.baocao.online.models.ThongBao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.ThongBao;

public class ThongBaoControl {

	
	private ThongBaoModel tbModel;
	public ThongBaoControl(ConnectionPool cp){
		this.tbModel=new ThongBaoModel(cp);	
	}
	public ConnectionPool getConnectionPool(){
		return this.tbModel.getConnectionPool();
	}
	public void releaseConnection(){
		this.tbModel.releaseConnection();
	}
	public void refreshConnection(){
		this.tbModel.refreshConnection();
	}
	public ArrayList<ThongBao> getAllThongBao() throws SQLException{
		return this.tbModel.getAllThongBao();
	}
	public boolean addThongBao(ThongBao tb){
		return this.tbModel.addThongBao(tb);
	}
}
