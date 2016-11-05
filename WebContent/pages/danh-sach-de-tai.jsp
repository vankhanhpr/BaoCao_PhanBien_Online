<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.objectdatabase.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>Danh Sách Đề Tài</title>
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
							<li class="active">Danh Sách Đề Tài</li>
						</ol>
						<div class="panel panel-default">
							<div style="color: rgb(7, 132, 163);" class="panel-heading">
								<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Danh
									Sách Đề Tài</h4>
							</div>
							<div class="panel-body">
								<c:if test="${sessionScope.user != null}">
									<c:choose>
										<c:when test="${sessionScope.user.getChucVu() == '1'}">

											<!-- ############################ form bao cao ############################## -->
											<div class="modal fade" id="fbaocao">
												<div class="modal-dialog" style="width: 75%; height: 70%;">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"
																aria-hidden="true">&times;</button>
															<h2 class="form-signin-heading">
																<p align="center">
																	<font size="4">Form Báo Cáo</font>
																</p>
															</h2>
														</div>
														<form action="#">
															<table class="table">
																<tr>
																	<td>Tên đề tài:</td>
																	<td>${requestScope.detai.getTenDeTai()}</td>
																</tr>
																<tr>
																	<td>MSSV:</td>
																	<td class="sizeInput">${requestScope.detai.getMaSo()}</td>
																</tr>
																<tr>
																	<td>Sinh Viên:</td>
																	<td class="sizeInput">${requestScope.detai.getHoTen()}</td>
																</tr>
																<tr>
																	<td>Giáo Viên Hướng Dẫn:</td>
																	<td class="sizeInput"><input type="texbox"
																		name="GVHD"></td>
																</tr>
																<tr>
																	<td>Mô Tả Đề Tài:</td>
																	<td><textarea rows="6" cols="90"></textarea></td>
																</tr>
															</table>
															<p style="margin-left: 184px;">
																<input type="file" name="" value="" accept=".rar">
															</p>
															<p align="right">
																<button type="button" class="btnNop btn btn-success "
																	type="submit" style="background-color: gray;">Nộp
																	báo cáo</button>
															</p>
														</form>
													</div>
													<!-- /.modal-content -->
												</div>
												<!-- /.modal-dialog -->
											</div>
											<!-- /.modal -->


											<!--Các bản tin-->
											<table class="table" border="1">
												<tr>
													<td class="tt_detaiSV">Sinh viên báo cáo:</td>
													<td>${requestScope.detai.getHoTen()}</td>
												</tr>
												<tr>
													<td class="tt_detaiSV">Tên đề tài:</td>
													<td>${requestScope.detai.getTenDeTai()}</td>
												</tr>
												<tr>
													<td class="tt_detaiSV">Thời gian báo cáo:</td>
													<td>${requestScope.detai.getThoiLuongBaoCao()}</td>
												</tr>
												<tr>
													<td class="tt_detaiSV">Ngày báo cáo:</td>
													<td>${requestScope.detai.getNgayBaoCao()}</td>
												</tr>
												<tr>
													<td class="tt_detaiSV">Giờ báo cáo:</td>
													<td>${requestScope.detai.getThoiGianBaoCao()}</td>
												</tr>
												<tr>
													<td class="tt_detaiSV">Nộp báo cáo</td>
													<td>${requestScope.detai.getTrangThai()}</td>
												</tr>
											</table>
											<table class="table" border="1" align="center"
												style="width: 50%;">
												<caption>
													<font size="4" class=""> Hội Đồng Báo Cáo</font>
												</caption>
												<tr style="background-color: gray;">
													<th>Giảng Viên</th>
													<th>Vai trò</th>
												</tr>
												<tr>
													<td>${requestScope.gvhd.getGiangVienHD()}</td>
													<td>Giáo viên hướng dẫn</td>
												</tr>
												<tr>
													<td>${requestScope.gvpb.getPhanBien()}</td>
													<td>Giảng Viên Phản Biện</td>
												</tr>
												<tr>
													<td>${requestScope.uyvien.getUyVien()}</td>
													<td>Ủy Viên</td>
												</tr>
												<tr>
													<td>${requestScope.chutich.getChuTich()}</td>
													<td>Chủ Tịch</td>
												</tr>
											</table>
											<br> <a style="margin-left: 45%" type="button"
												class="btnNopBaoCao btn btn-primary <c:if test="${requestScope.detai.getTrangThai()==
												'Đã nộp'}">
													disabled
												</c:if>
												"
												id="btNopform">Nộp báo cáo</a>
							</div>
							<!--end bản tin-->

							</c:when>
							<c:when test="${sessionScope.user.getChucVu()== '2'}">
								<table class="table" data-page-size="5">
									<!--COLUMN-->
									<thead>
										<tr>
											<th>STT</th>
											<th>Tên Đề Tài</th>
											<th>Thời Gian</th>
											<th>Chức Vụ</th>
											<th data="phone,tablet">Xét duyệt</th>
											<th data-hide="phone,tablet">Số lượng SV</th>
											<th data-hide="phone,tablet">Trạng thái</th>
											<th data-hide="phone,tablet">Hội đồng</th>
											<th data-hide="phone,tablet">Chi tiết</th>

										</tr>
									</thead>
									<!--END COLUMN-->
									<%
										int i = 1;
									%>
									<c:forEach var="hd" items="${requestScope.gvhd}">
										<!--ROW-->
										<tbody>
											<tr>
												<td><span class="text-info"><%=i++%></span></td>
												<td>${hd.getTenDeTai()}</td>
												<td>${hd.getNgayBaoCao()}/${hd.getThoiGianBaoCao()}</td>
												<td>GVHD</td>
												<td><a target="_blank" href="#"
													class="btn <c:if test="${hd.getTrangThai()==
												'Xét duyệt'}">
													btn-danger btn-xs disabled">Xét
														duyệt </c:if> <c:if test="${hd.getTrangThai()=='Chưa xét duyệt'}">
													btn-success btn-xs">Chưa xét duyệt
												 </c:if>
												</a></td>
												<td>${hd.getSoLuongSV()}</td>
												<td>
													<table class="table" data-page-size="5">
														<thead>
															<tr>
																<th>Chức vụ</th>
																<th>Giảng viên</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>Ủy viên</td>
																<td>${hd.getUyVien()}</td>
															</tr>
															<tr>
																<td>Giáo viên hướng dẫn</td>
																<td>${hd.getGiangVienHD()}</td>
															</tr>
															<tr>
																<td>Phản biện</td>
																<td>${hd.getGiangVienPB()}</td>
															</tr>
															<tr>
																<td>Chủ Tịch</td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</td>
												<td><a target="_blank" href="chi-tiet-de-tai-1.jsp"
													class="btn btn-success btn-xs">Chi tiết</a></td>
											</tr>
										</tbody>
										<!--END ROW-->

									</c:forEach>

									<c:forEach var="uv" items="${requestScope.uyvien}">
										<!--ROW-->
										<tbody>
											<tr>
												<td><span class="text-info"><%=i++%></span></td>
												<td>${uv.getTenDeTai()}</td>
												<td>${uv.getNgayBaoCao()}/${uv.getThoiGianBaoCao()}</td>
												<td>Ủy Viên</td>
												<td><a target="_blank" href="#"
													class="btn <c:if test="${uv.getTrangThai()==
												'Xét duyệt'}">
													btn-danger btn-xs disabled">Xét
														duyệt </c:if> <c:if test="${uv.getTrangThai()=='Chưa xét duyệt'}">
													btn-success btn-xs">Chưa xét duyệt
												 </c:if>
												</a></td>
												<td>${uv.getSoLuongSV()}</td>
												<td>
													<table class="table" data-page-size="5">
														<thead>
															<tr>
																<th>Chức vụ</th>
																<th>Giảng viên</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>Ủy Viên</td>
																<td>${uv.getUyVien()}</td>
															</tr>
															<tr>
																<td>Giáo viên hướng dẫn</td>
																<td>${uv.getGiangVienHD()}</td>
															</tr>
															<tr>
																<td>Phản biện</td>
																<td>${uv.getGiangVienPB()}</td>
															</tr>
															<tr>
																<td>Chủ Tịch</td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</td>
												<td><a target="_blank" href="chi-tiet-de-tai-1.jsp"
													class="btn btn-success btn-xs">Chi tiết</a></td>
											</tr>
										</tbody>
										<!--END ROW-->

									</c:forEach>

									<c:forEach var="pb" items="${requestScope.gvpb}">
										<!--ROW-->
										<tbody>
											<tr>
												<td><span class="text-info"><%=i++%></span></td>
												<td>${pb.getTenDeTai()}</td>
												<td>${pb.getNgayBaoCao()}/${pb.getThoiGianBaoCao()}</td>
												<td>Phản Biện</td>
												<td><a target="_blank" href="#"
													class="btn <c:if test="${pb.getTrangThai()==
												'Xét duyệt'}">
													btn-danger btn-xs disabled">Xét
														duyệt </c:if> <c:if test="${pb.getTrangThai()=='Chưa xét duyệt'}">
													btn-success btn-xs">Chưa xét duyệt
												 </c:if>
												</a></td>
												<td>${pb.getSoLuongSV()}</td>
												<td>
													<table class="table" data-page-size="5">
														<thead>
															<tr>
																<th>Chức vụ</th>
																<th>Giảng viên</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>Ủy Viên</td>
																<td>${pb.getUyVien()}</td>
															</tr>
															<tr>
																<td>Giáo viên hướng dẫn</td>
																<td>${pb.getGiangVienHD()}</td>
															</tr>
															<tr>
																<td>Phản biện</td>
																<td>${pb.getGiangVienPB()}</td>
															</tr>
															<tr>
																<td>Chủ Tịch</td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</td>
												<td><a target="_blank" href="chi-tiet-de-tai-1.jsp"
													class="btn btn-success btn-xs">Chi tiết</a></td>
											</tr>
										</tbody>
										<!--END ROW-->

									</c:forEach>
									<!--PAGE NUMBER-->
									<tfoot>
										<tr>
											<td colspan="6">
												<div class="pagination pagination-centered">
													<ul class="pagination">
														<li class="active"><a>1</a></li>
														<li><a href="2.html">2</a></li>
														<li><a href="3.html">3</a></li>
														<li><a href="5.html">&raquo;</a></li>
													</ul>
												</div>
											</td>
										</tr>
									</tfoot>
									<!--END PAGE NUMBER-->
								</table>

							</c:when>

							<c:when test="${sessionScope.user.getChucVu() == '3'}">
								<a href="danh-sach-de-tai-can-xep-lich.jsp"
									class="btn btn-success btn-xs pull-right">Xếp lịch báo cáo</a>
								<table class="table" data-page-size="5">
									<!--COLUMN-->
									<thead>
										<tr>
											<th>STT</th>
											<th>Tên Đề Tài</th>
											<th>Thời Gian</th>
											<th>Chức Vụ</th>
											<th data="phone,tablet">Xét duyệt</th>
											<th data-hide="phone,tablet">Số lượng SV</th>
											<th data-hide="phone,tablet">Trạng thái</th>
											<th data-hide="phone,tablet">Hội đồng</th>
											<th data-hide="phone,tablet">Chi tiết</th>

										</tr>
									</thead>
									<!--END COLUMN-->
									<%
										int i = 1;
									%>
									<c:forEach var="hd" items="${requestScope.gvhd}">
										<!--ROW-->
										<tbody>
											<tr>
												<td><span class="text-info"><%=i++%></span></td>
												<td>${hd.getTenDeTai()}</td>
												<td>${hd.getNgayBaoCao()}/${hd.getThoiGianBaoCao()}</td>
												<td>GVHD</td>
												<td><a target="_blank" href="#"
													class="btn <c:if test="${hd.getTrangThai()==
												'Xét duyệt'}">
													btn-danger btn-xs disabled">Xét
														duyệt </c:if> <c:if test="${hd.getTrangThai()=='Chưa xét duyệt'}">
													btn-success btn-xs">Chưa xét duyệt
												 </c:if>
												</a></td>
												<td>${hd.getSoLuongSV()}</td>
												<td>
													<table class="table" data-page-size="5">
														<thead>
															<tr>
																<th>Chức vụ</th>
																<th>Giảng viên</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>Ủy viên</td>
																<td>${hd.getUyVien()}</td>
															</tr>
															<tr>
																<td>Giáo viên hướng dẫn</td>
																<td>${hd.getGiangVienHD()}</td>
															</tr>
															<tr>
																<td>Phản biện</td>
																<td>${hd.getGiangVienPB()}</td>
															</tr>
															<tr>
																<td>Chủ Tịch</td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</td>
												<td><a target="_blank" href="chi-tiet-de-tai-1.jsp"
													class="btn btn-success btn-xs">Chi tiết</a></td>
											</tr>
										</tbody>
										<!--END ROW-->

									</c:forEach>

									<c:forEach var="uv" items="${requestScope.uyvien}">
										<!--ROW-->
										<tbody>
											<tr>
												<td><span class="text-info"><%=i++%></span></td>
												<td>${uv.getTenDeTai()}</td>
												<td>${uv.getNgayBaoCao()}/${uv.getThoiGianBaoCao()}</td>
												<td>Ủy Viên</td>
												<td><a target="_blank" href="#"
													class="btn <c:if test="${uv.getTrangThai()==
												'Xét duyệt'}">
													btn-danger btn-xs disabled">Xét
														duyệt </c:if> <c:if test="${uv.getTrangThai()=='Chưa xét duyệt'}">
													btn-success btn-xs">Chưa xét duyệt
												 </c:if>
												</a></td>
												<td>${uv.getSoLuongSV()}</td>
												<td>
													<table class="table" data-page-size="5">
														<thead>
															<tr>
																<th>Chức vụ</th>
																<th>Giảng viên</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>Ủy Viên</td>
																<td>${uv.getUyVien()}</td>
															</tr>
															<tr>
																<td>Giáo viên hướng dẫn</td>
																<td>${uv.getGiangVienHD()}</td>
															</tr>
															<tr>
																<td>Phản biện</td>
																<td>${uv.getGiangVienPB()}</td>
															</tr>
															<tr>
																<td>Chủ Tịch</td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</td>
												<td><a target="_blank" href="chi-tiet-de-tai-1.jsp"
													class="btn btn-success btn-xs">Chi tiết</a></td>
											</tr>
										</tbody>
										<!--END ROW-->

									</c:forEach>

									<c:forEach var="pb" items="${requestScope.gvpb}">
										<!--ROW-->
										<tbody>
											<tr>
												<td><span class="text-info"><%=i++%></span></td>
												<td>${pb.getTenDeTai()}</td>
												<td>${pb.getNgayBaoCao()}/${pb.getThoiGianBaoCao()}</td>
												<td>Phản Biện</td>
												<td><a target="_blank" href="#"
													class="btn <c:if test="${pb.getTrangThai()==
												'Xét duyệt'}">
													btn-danger btn-xs disabled">Xét
														duyệt </c:if> <c:if test="${pb.getTrangThai()=='Chưa xét duyệt'}">
													btn-success btn-xs">Chưa xét duyệt
												 </c:if>
												</a></td>
												<td>${pb.getSoLuongSV()}</td>
												<td>
													<table class="table" data-page-size="5">
														<thead>
															<tr>
																<th>Chức vụ</th>
																<th>Giảng viên</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>Ủy Viên</td>
																<td>${pb.getUyVien()}</td>
															</tr>
															<tr>
																<td>Giáo viên hướng dẫn</td>
																<td>${pb.getGiangVienHD()}</td>
															</tr>
															<tr>
																<td>Phản biện</td>
																<td>${pb.getGiangVienPB()}</td>
															</tr>
															<tr>
																<td>Chủ Tịch</td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</td>
												<td><a target="_blank" href="chi-tiet-de-tai-1.jsp"
													class="btn btn-success btn-xs">Chi tiết</a></td>
											</tr>
										</tbody>
										<!--END ROW-->

									</c:forEach>
									<!--PAGE NUMBER-->
									<tfoot>
										<tr>
											<td colspan="6">
												<div class="pagination pagination-centered">
													<ul class="pagination">
														<li class="active"><a>1</a></li>
														<li><a href="2.html">2</a></li>
														<li><a href="3.html">3</a></li>
														<li><a href="5.html">&raquo;</a></li>
													</ul>
												</div>
											</td>
										</tr>
									</tfoot>
									<!--END PAGE NUMBER-->
								</table>
							</c:when>
							<c:otherwise>
								<a data-toggle="modal" href="#dang_nhap">Đăng nhập</a>
							</c:otherwise>
							</c:choose>
							</c:if>

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
	<script>
		$(document).ready(function() {
			$("#btNopform").click(function() {
				$("#fbaocao").modal();
			});
		});
	</script>
	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>