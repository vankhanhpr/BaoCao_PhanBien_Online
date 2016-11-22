package com.phanbien.baocao.online;


public interface IPagePath {
	/*Cần đặt đường dẫn trong web.xml trước*/
	public final String HOMEPAGE="trang-chu";
	public final String PROFILE="thong-tin-ca-nhan";
	public final String EDIT_PROFILE="thong-tin-ca-nhan/edit";
	//Dùng chung cho 3 actor
	public final String LISTOPIC="danh-sach-de-tai";
	public final String REPORT="bao-cao";
	public final String VIEWRESULT="xem-ket-qua";
	
	
	public final String GUIDE="huong-dan";
	public final String LOGOUT="logout";
}
