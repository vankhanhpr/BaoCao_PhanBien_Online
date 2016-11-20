<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<%@ page import="com.phanbien.baocao.online.utils.classes.*"%>
<%@ page
	import="com.phanbien.baocao.online.utils.objectdatabase.XemKetQuaSV"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>Xem Kết Quả Sinh Viên</title>
<%@include file="//includes/header.jsp"%>
</head>
<body>
	<%@include file="//includes/menu-mobile.jsp"%>
	<div>
		<div id="container">
			<div id="navigation">
				<%@include file="//includes/banner-mobile.jsp"%>
				<%@include file="//includes/banner-desktop.jsp"%>
			</div>
			<!-- start wrapper -->
			<div id="wrapper">
				<div class="container">
					<div class="row">
						<!-- 	        LEFT MENU -->
						<%@include file="//includes/menu-desktop.jsp"%>
						<!-- 		    END LEFT MENU -->

						<!--Khung hiển thị chính-->
						<div class="col-md-9">
							<ol class="breadcrumb">
								<!--HOme/thông báo-->
								<li><a href="<%=request.getContextPath()%>/trang-chu">Home</a></li>
								<li class="active">Xem Kết Quả</li>
								<span style="float: right;" id="time_bar"> <span
									id="time" class="label label-primary pull-right"><i
										class="icon-time"></i><%=Function.getDate()%></span><br></span>
							</ol>

							<div class="panel panel-default">
								<div style="color: rgb(7, 132, 163);" class="panel-heading">
									<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Thông
										Tin</h4>
								</div>
								<div class="panel-body">
									<!--Các bản tin-->
									<form>
										<table class="table">
											<tr style="background-color: gray">
												<td>Tên Đề Tài</td>
												<td>Ngày Báo Cáo</td>
												<td>Giờ</td>
											</tr>
											<tr>
												<td>${requestScope.xemketqua.getTenDeTai()}</td>
												<td>${requestScope.xemketqua.getNgayBaoCao()}</td>
												<td>${requestScope.xemketqua.getThoiGianBaoCao()}</td>
											</tr>
										</table>

										<table class="table" border="1" align="center"
											style="width: 75%;">
											<tr>
												<td><font size="4" style="font-weight: bold;"><p
															align="center">Chi Tiết</p></font></td>
											</tr>
											<tr>
												<td>
													<table class="table">
														<tr style="background-color: gray">
															<th>Giáo Viên</th>
															<th>Chức Vụ</th>
															<th>Điểm</th>
															<th>Nhận Xét</th>
														</tr>
														<tr>
															<td>${ requestScope.xemketqua.getHoiDong().getGVHD().getHoTen()}</td>
															<td>Giáo viên hướng dẫn</td>
															<td>${ requestScope.xemketqua.getHoiDong().getDiemGVHD()}</td>
															<td><a href="#nxgvhd" data-toggle="modal">Xem</a></td>
														</tr>
														<tr>
															<td>${ requestScope.xemketqua.getHoiDong().getGVPB().getHoTen()}<</td>
															<td>Giáo viên phản biện</td>
															<td>${ requestScope.xemketqua.getHoiDong().getDiemGVPB()}</td>
															<td><a href="#nxgvpb" data-toggle="modal">Xem</a></td>
														</tr>
														<tr>
															<td>${ requestScope.xemketqua.getHoiDong().getUyVien().getHoTen()}</td>
															<td>Ủy viên hội đồng</td>
															<td>${ requestScope.xemketqua.getHoiDong().getDiemUyVien()}</td>
															<td><a href="#nxuv" data-toggle="modal">Xem</a></td>
														</tr>
													</table>
												</td>
											</tr>

										</table>
										<br>
									</form>
								</div>
								<!--end bản tin-->
							</div>
						</div>
						<!--Khung hiển thị chính-->
					</div>
				</div>
			</div>
			<!-- End wrapper -->
		</div>
	</div>

	<div class="modal fade" id="nxgvhd">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Nhận xét của giáo viên hướng dẫn</h4>
				</div>
				<div class="modal-body">
					${requestScope.xemketqua.getHoiDong().getNhanXetGVHD()}
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

<div class="modal fade" id="nxgvpb">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Nhận xét của giảng viên phản biện</h4>
				</div>
				<div class="modal-body">
					${requestScope.xemketqua.getHoiDong().getNhanXetGVPB()}
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
	<div class="modal fade" id="nxuv">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Nhận xét của Ủy Viên</h4>
				</div>
				<div class="modal-body">
					${requestScope.xemketqua.getHoiDong().getNhanXetUyVien()}
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
	
	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>