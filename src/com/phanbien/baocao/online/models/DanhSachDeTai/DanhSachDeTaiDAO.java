package com.phanbien.baocao.online.models.DanhSachDeTai;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.DB.DBManager;
import com.phanbien.baocao.online.utils.objectdatabase.User;

public class DanhSachDeTaiDAO {

	DBManager dbm;

	public DBManager getDbm() {
		return dbm;
	}

	// khởi tạo kết nối -----------
	public DanhSachDeTaiDAO(ConnectionPool cp) {
		dbm = new DBManager(cp, "danhsachdetai");
	}

	public ConnectionPool getConnectionPool() {
		return dbm.getConnectPool();
	}

	public ResultSet ThongTinDeTaiSV(String MaSo) {
		String sql = "select * from viewdanhsachdetaisv where maso=?";
		PreparedStatement pre = null;
		try {

			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaSo);

		} catch (SQLException e) {
			System.out.print("FAIL DanhSachDeTai_SV");
		}

		return dbm.get(pre);
	}

	public ResultSet TenGVHD(String MaDT) {
		String sql = "select * from viewtengvhdcuasv where madt=?";
		PreparedStatement pre = null;
		try {

			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);

		} catch (SQLException e) {
			System.out.print("FAIL DanhSachDeTai_SV");
		}

		return dbm.get(pre);
	}

	public ResultSet TenUyVien(String MaDT) {
		String sql = "select * from viewtenuyviencuasv where madetai=?";
		PreparedStatement pre = null;
		try {

			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);

		} catch (SQLException e) {
			System.out.print("FAIL DanhSachDeTai_SV");
		}

		return dbm.get(pre);
	}

	public ResultSet TenGVPB(String MaDT) {
		String sql = "select * from viewtengvpbcuasv where madetai=?";
		PreparedStatement pre = null;
		try {

			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);

		} catch (SQLException e) {
			System.out.print("FAIL DanhSachDeTai_SV");
		}

		return dbm.get(pre);
	}

	public ResultSet TenChuTich(String MaDT) {
		String sql = "select * from viewtenchutichcuasv where madetai=?";
		PreparedStatement pre = null;
		try {

			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);

		} catch (SQLException e) {
			System.out.print("FAIL DanhSachDeTai_SV");
		}

		return dbm.get(pre);
	}

	public ResultSet DanhSachDeTaiChucVuUyVien(String MaSo) {
		String sql = "select * from view_dsdt_chucvu_uyvien where maso=?";
		PreparedStatement pre = null;
		try {

			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaSo);

		} catch (SQLException e) {
			System.out.print("FAIL DanhSachDeTai_SV");
		}

		return dbm.get(pre);
	}

	public ResultSet DanhSachDeTaiChucVuPhanBien(String MaSo) {
		String sql = "select * from view_dsdt_chucvu_phanbien where maso=?";
		PreparedStatement pre = null;
		try {

			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaSo);

		} catch (SQLException e) {
			System.out.print("FAIL DanhSachDeTai_SV");
		}

		return dbm.get(pre);
	}

	public ResultSet DanhSachDeTaiChucVuHuongDan(String MaSo) {
		String sql = "select * from view_dsdt_chucvu_huongdan where maso=?";
		PreparedStatement pre = null;
		try {

			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaSo);

		} catch (SQLException e) {
			System.out.print("FAIL DanhSachDeTai_SV");
		}

		return dbm.get(pre);
	}

	public ResultSet TenGVHD_DeTai(String MaDT) {
		String sql = "select * from view_chucvu_gvhd_detai where madt=?";
		PreparedStatement pre = null;
		try {

			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);

		} catch (SQLException e) {
			System.out.print("FAIL DanhSachDeTai_SV");
		}

		return dbm.get(pre);
	}

	public ResultSet TenChuTich_DeTai(String MaDT) {
		String sql = "select * from view_chucvu_chutich_detai where madetai=?";
		PreparedStatement pre = null;
		try {

			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);

		} catch (SQLException e) {
			System.out.print("FAIL DanhSachDeTai_SV");
		}

		return dbm.get(pre);
	}

	public ResultSet TenPhanBien_DeTai(String MaDT) {
		String sql = "select * from view_chucvu_phanbien_detai where madetai=?";
		PreparedStatement pre = null;
		try {

			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);

		} catch (SQLException e) {
			System.out.print("FAIL DanhSachDeTai_SV");
		}

		return dbm.get(pre);
	}

	public ResultSet TenUyVien_DeTai(String MaDT) {
		String sql = "select * from view_chucvu_uyvien_detai where madetai=?";
		PreparedStatement pre = null;
		try {

			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);

		} catch (SQLException e) {
			System.out.print("FAIL DanhSachDeTai_SV");
		}

		return dbm.get(pre);
	}

	public ResultSet SoLuong_SV(String MaDT) {
		String sql = "select * from view_soluongsv where madt=?";
		PreparedStatement pre = null;
		try {

			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);

		} catch (SQLException e) {
			System.out.print("FAIL DanhSachDeTai_SV");
		}

		return dbm.get(pre);
	}

	public boolean updateFormBaoCao(String MaDT, String tenFile, String tomTat, String TrangThai) {
		String sql = "update quatrinhbaocao set ";
		sql = sql + "filebainop=?, tomtatdt=?, trangthaisv=? where madt= ?";

		PreparedStatement pre = null;
		try {
			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, tenFile);
			pre.setString(2, tomTat);
			pre.setString(3, TrangThai);
			pre.setString(4, MaDT);
		} catch (SQLException e) {
			System.out.print("FAIL Form Bao Cao.");
		}

		return dbm.update(pre);

	}

	public ResultSet getDanhSachDeTaiXepLich() {
		String sql = "select * from `view_danh-sach-de-tai-xep-lich`";
		return dbm.get(sql);
	}

	public ResultSet getAllDanhSachDeTai() {
		return dbm.get("select * from viewdanhsachdetai");
	}

	public ResultSet getNhanXetTruocBC(String MaDT) {
		String sql = "	select nhanxettruocbc from quatrinhbaocao where madt=?";

		PreparedStatement pre = null;
		try {
			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);
		} catch (SQLException e) {
			System.out.print("FAIL Form Bao Cao.");
		}

		return dbm.get(pre);
	}
	public ResultSet getXepLoai(String MaDT) {
		String sql = "	select xeploai from quatrinhbaocao where madt=?";

		PreparedStatement pre = null;
		try {
			pre = dbm.getConnect().prepareStatement(sql);
			pre.setString(1, MaDT);
		} catch (SQLException e) {
			System.out.print("FAIL Form Bao Cao.");
		}

		return dbm.get(pre);
	}

}
