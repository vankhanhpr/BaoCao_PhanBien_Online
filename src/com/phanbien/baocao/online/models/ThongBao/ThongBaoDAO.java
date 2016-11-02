package com.phanbien.baocao.online.models.ThongBao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.DB.DBManager;
import com.phanbien.baocao.online.utils.objectdatabase.ThongBao;

public class ThongBaoDAO implements IThongBaoDAO {

	DBManager dbm;

	public DBManager getDbm() {
		return dbm;
	}

	public ThongBaoDAO(ConnectionPool cp) {
		dbm=new DBManager(cp,"thongbao");
	}

	public ConnectionPool getConnectionPool() {
		return dbm.getConnectPool();
	}

	@Override
	public ResultSet getAllThongBao() {
		String sql="select * from thongbao order by MaThongBao desc";
		
		return dbm.get(sql);
	}

	@Override
	public boolean addThongBao(ThongBao thongbao) {
		String sql="call spAddThongBao(?,?,?)";
		
		PreparedStatement pre=null;
		
		try{
			pre=dbm.getConnect().prepareStatement(sql);
			pre.setString(1, thongbao.getTieuDe());
			pre.setString(2, thongbao.getNgay());
			pre.setString(3, thongbao.getNoiDung());

		}catch(SQLException e){
			System.out.print("FAIL addthongbao USERDAO");
		}
		
		return dbm.add(pre);
	}

}
