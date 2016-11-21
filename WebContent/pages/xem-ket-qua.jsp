<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<%@ page import="com.phanbien.baocao.online.utils.classes.*"%>
<%@ page
	import="com.phanbien.baocao.online.utils.objectdatabase.XemKetQuaSV"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
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
							<c:if test="${sessionScope.user.getChucVu()==1}">
								<div class="panel panel-default">
									<div style="color: rgb(7, 132, 163);" class="panel-heading">
										<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Thông
											Tin</h4>
									</div>
									<div class="panel-body">
										<!--Các bản tin-->
										<form>
											<table class="table">
												<tr style="background-color: white">
													<td><font size="3" style="font-weight: bold;"><p
																align="center">Tên Đề Tài</p></font></td>
													<td><font size="3" style="font-weight: bold;"><p
																align="center">Ngày Báo Cáo</p></font></td>
													<td><font size="3" style="font-weight: bold;"><p
																align="center">Giờ</p></font></td>
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
															<tr style="background-color: white">
																<td><font size="3" style="font-weight: bold;"><p
																			align="center">Giáo Viên</p></font></td>
																<td><font size="3" style="font-weight: bold;"><p
																			align="center">Chức Vụ</p></font></td>
																<td><font size="3" style="font-weight: bold;"><p
																			align="center">Điểm</p></font></td>
																<td><font size="3" style="font-weight: bold;"><p
																			align="center">Nhận Xét</p></font></td>
															</tr>
															<tr>
																<td>${ requestScope.xemketqua.getHoiDong().getGVHD().getHoTen()}</td>
																<td>Giáo viên hướng dẫn</td>
																<td>${ requestScope.xemketqua.getHoiDong().getDiemGVHD()}</td>
																<td><a href="#nxgvhd" data-toggle="modal">Xem</a></td>
															</tr>
															<tr>
																<td>${ requestScope.xemketqua.getHoiDong().getGVPB().getHoTen()}</td>
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

									<div class="modal fade" id="nxgvhd">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h4 class="modal-title">Nhận xét của giáo viên hướng
														dẫn</h4>
												</div>
												<div class="modal-body">
													${requestScope.xemketqua.getHoiDong().getNhanXetGVHD()}</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Đóng</button>
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
													<h4 class="modal-title">Nhận xét của giảng viên phản
														biện</h4>
												</div>
												<div class="modal-body">
													${requestScope.xemketqua.getHoiDong().getNhanXetGVPB()}</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Đóng</button>
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
													${requestScope.xemketqua.getHoiDong().getNhanXetUyVien()}</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Đóng</button>
												</div>
											</div>
											<!-- /.modal-content -->
										</div>
										<!-- /.modal-dialog -->
									</div>
									<!-- /.modal -->

								</div>
							</c:if>
							<c:if test="${sessionScope.user.getChucVu()!=1 }">
								<div class="panel panel-default">
									<div style="color: rgb(7, 132, 163);" class="panel-heading">
										<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Kết quả</h4>
									</div>
									<div class="panel-body">
										<!--Các bản tin-->

										<table class="table" data-page-size="5">
											<!--COLUMN-->
											<thead>
												<tr>
													<th>STT</th>
													<th>Tên đề tài</th>
													<th>Thời gian</th>
													<th data-hide="phone,tablet">Điểm</th>
												</tr>
											</thead>
											<!--END COLUMN-->
											<%
												int i = 1;
											%>
											<c:forEach var="kq" items="${requestScope.xemketquagv}">
												
										<!--ROW-->
											<tbody>
											<tr>
												<td><span class="text-info"><%=i++ %></span></td>
												<td>${kq.getTenDeTai()}</td>
												<td>${kq.getNgayBaoCao()} / ${kq.getThoiGianBaoCao()}</td>
												<td>
													<table class="table" data-page-size="5">
														<thead>
															<tr>
																<th>Chức vụ</th>
																<th>Giảng viên</th>
																<th>Điểm</th>
															</tr>
														</thead>
														<tbody>
															
															<tr>
																<td>Giáo viên hướng dẫn</td>
																<td>${kq.getHoiDong().getGVHD().getHoTen()}</td>
																<td>${kq.getHoiDong().getDiemGVHD()}</td>
															</tr>
															<tr>
																<td>Phản biện</td>
																<td>${kq.getHoiDong().getGVPB().getHoTen()}</td>
																<td>${kq.getHoiDong().getDiemGVPB()}</td>
															</tr>
															<tr>
																<td>Ủy viên</td>
																<td>${kq.getHoiDong().getUyVien().getHoTen()}/td>
																<td>${kq.getHoiDong().getDiemUyVien()}</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
										<!--END ROW-->
										</c:forEach>
										
										
									</table>

								</div>
								<!--end bản tin-->
							</div>
							</c:if>
						</div>
						<!--Khung hiển thị chính-->
					</div>
				</div>
			</div>
			<!-- End wrapper -->
		</div>
	</div>



	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>