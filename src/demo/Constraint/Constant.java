package demo.Constraint;

public interface Constant {

	
	public final String HOMEPAGE="trang-chu-nologin.jsp";
	public final String HOMEPAGE_SV="trang-chu-login-SV.jsp";
	public final String HOMEPAGE_GV="trang-chu-login-GV.jsp";
	public final String HOMEPAGE_TK="trang-chu-login-TK.jsp";
	public final String HELP="#";
	/*SV*/
	public final String LISTTOPIC_SV="thong-tin-de-tai-SV.jsp";
	public final String REPORT_SV="bao-cao-SV.jsp";
	public final String PROFILE_SV="thong-tin-ca-nhan.jsp";
	public final String VIEWRESULT_SV="xem-ket-qua-SV.jsp";
	
	public String[][] MATRIX_SV={
			{HOMEPAGE_SV,"Trang chủ","HOME"},
			{LISTTOPIC_SV,"Danh sách đề tài","LISTTOPIC"},
			{PROFILE_SV,"Thông tin cá nhân","PROFILE"},
			{REPORT_SV,"Báo cáo","REPORT"},
			{VIEWRESULT_SV,"Xem kết quả","VIEWRESULT"},
			{HELP,"Hướng dẫn","HELP"}};
	
	/*GV*/
	public final String LISTTOPIC_GV="danh-sach-de-tai-GV.jsp";
	public final String REPORT_GV="bao-cao-GV.jsp";
	public final String PROFILE_GV="thong-tin-ca-nhan.jsp";
	public final String VIEWRESULT_GV="xem-ket-qua-GV.jsp";
	public String[][] MATRIX_GV={
			{HOMEPAGE_GV,"Trang chủ","HOME"},
			{LISTTOPIC_GV,"Danh sách đề tài","LISTTOPIC"},
			{PROFILE_GV,"Thông tin cá nhân","PROFILE"},
			{REPORT_GV,"Báo cáo","REPORT"},
			{VIEWRESULT_GV,"Xem kết quả","VIEWRESULT"},
			{HELP,"Hướng dẫn","HELP"}};
	
	/*TK*/
	public final String LISTTOPIC_TK="danh-sach-de-tai-TK.jsp";
	public String[][] MATRIX_TK={
			{HOMEPAGE_TK,"Trang chủ","HOME"},
			{LISTTOPIC_TK,"Danh sách đề tài","LISTTOPIC"},
			{PROFILE_GV,"Thông tin cá nhân","PROFILE"},
			{REPORT_GV,"Báo cáo","REPORT"},
			{VIEWRESULT_GV,"Xem kết quả","VIEWRESULT"},
			{HELP,"Hướng dẫn","HELP"}};
	
	/*CTich*/
	public final String REPORT_CT="bao-cao-CT.jsp";
	public String[][] MATRIX_CT={
			{HOMEPAGE,"Trang chủ","HOME"},
			{LISTTOPIC_GV,"Danh sách đề tài","LISTTOPIC"},
			{PROFILE_GV,"Thông tin cá nhân","PROFILE"},
			{REPORT_CT,"Báo cáo","REPORT"},
			{VIEWRESULT_GV,"Xem kết quả","VIEWRESULT"},
			{HELP,"Hướng dẫn","HELP"}};
	/*GUEST*/
	public final String REQUEST_LOGIN="yeu-cau-dang-nhap.jsp";

	public String[][] MATRIX_G={
			{HOMEPAGE,"Trang chủ","HOME"},
			{REQUEST_LOGIN,"Danh sách đề tài","LISTTOPIC"},
			{REQUEST_LOGIN,"Thông tin cá nhân","PROFILE"},
			{REQUEST_LOGIN,"Báo cáo","REPORT"},
			{REQUEST_LOGIN,"Xem kết quả","VIEWRESULT"},
			{HELP,"Hướng dẫn","HELP"}};
	

}
