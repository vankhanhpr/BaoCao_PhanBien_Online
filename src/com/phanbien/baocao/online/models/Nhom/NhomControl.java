package com.phanbien.baocao.online.models.Nhom;

import java.sql.SQLException;
import java.util.ArrayList;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.*;
public class NhomControl {
	private NhomModel nModel;
	public NhomControl(ConnectionPool cp){
		this.nModel=new NhomModel(cp);	
	}
	public ConnectionPool getConnectionPool(){
		return this.nModel.getConnectionPool();
	}
	public void releaseConnection(){
		this.nModel.releaseConnection();
	}
	public void refreshConnection(){
		this.nModel.refreshConnection();
	}
	
	public ArrayList<User> getSVNhom(String MaNhom) throws SQLException{
		return this.nModel.getSVNhom(MaNhom);
	}
	
	
}
