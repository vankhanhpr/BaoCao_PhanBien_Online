<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<%@ page import="com.phanbien.baocao.online.utils.classes.Function"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>Thông Tin Đề Tài</title>
<%@include file="//includes/header.jsp"%>
</head>
<body>
	<!-- ============================================================-->
	<%@include file="//includes/menu-mobile.jsp"%>
	<div>
		<!--BANNER -->
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
								<li><a href="<%=request.getContextPath() %>/trang-chu">Home</a></li>
								<li class="active">Danh sách đề tài</li>
								<span style="float: right;" id="time_bar"> <span id="time"
			class="label label-primary pull-right"><i class="icon-time"></i><%=Function.getDate() %></span><br></span>
							</ol>
							<!--Danh sách đề tài-->
							<div class="panel panel-default">
								<div style="color: rgb(7, 132, 163);" class="panel-heading">
									<h4 style="font-family: verdana; color: rgb(87, 87, 87);">
										Danh sách đề tài <a href="danh-sach-de-tai-can-xep-lich.jsp"
											class="btn btn-success btn-xs pull-right">Xếp lịch báo
											cáo</a>
									</h4>

								</div>
								<table class="table" data-page-size="5">
										<!--COLUMN-->
										<thead>
											<tr>
												<th>STT</th>
												<th>Tên đề tài</th>
												<th>Thời gian</th>
												<th>Chức vụ</th>
												<th data="phone,tablet">Xét duyệt</th>
												<th data-hide="phone,tablet">Số lượng SV</th>
												<th data-hide="phone,tablet">Trạng thái</th>
												<th data-hide="phone,tablet">Hội đồng</th>
												<th data-hide="phone,tablet">Chi tiết</th>

											</tr>
										</thead>
										<!--END COLUMN-->

										<!--ROW-->
										<tbody>
											<tr>
												<td><span class="text-info">1</span></td>
												<td>Xây dựng ứng dụng di động bằng React Native</td>
												<td>8h:30m 14/5</td>
												<td>Phản biện</td>
												<td><a target="_blank" href="#"
													class="btn btn-danger btn-xs disabled">Xét duyệt</a></td>
												<td>3</td>
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
																<td>Chủ tịch</td>
																<td>Nguyễn Văn A</td>
															</tr>
															<tr>
																<td>Giáo viên hướng dẫn</td>
																<td>Nguyễn Văn B</td>
															</tr>
															<tr>
																<td>Phản biện</td>
																<td>Lê Thị C</td>
															</tr>
														</tbody>
													</table>
												</td>
												<td><a target="_blank" href="chi-tiet-de-tai-1.jsp"
													class="btn btn-success btn-xs">Chi tiết</a></td>
											</tr>
										</tbody>
										<!--END ROW-->
										<!--ROW-->
										<tbody>
											<tr>
												<td><span class="text-info">1</span></td>
												<td>Xây dựng ứng dụng web bằng React Native</td>
												<td>8h:30m 19/5</td>
													<td>Hướng dẫn</td>
													<td><a target="_blank" href="xet-duyet-de-tai.jsp"
													class="btn btn-success btn-xs">Chưa xét duyệt</a></td>
													<td>2</td>
													<td>Chưa báo cáo</td>
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
																	<td>Chủ tịch</td>
																	<td>Nguyễn Văn A</td>
																</tr>
																<tr>
																	<td>Giáo viên hướng dẫn</td>
																	<td>Lê Thị C</td>
																</tr>
																<tr>
																	<td>Phản biện</td>
																	<td>Nguyễn Văn B</td>
																</tr>
															</tbody>
														</table>
												</td>
													<td><a target="_blank" href="chi-tiet-de-tai-2.jsp"
														class="btn btn-success btn-xs">Chi tiết</a></td>
											</tr>
										</tbody>
										<!--END ROW-->


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
							</div>
							<!--Danh sách đề tài-->

						</div>
						<!--Khung hiển thị chính-->

					</div>
				</div>
			</div>

		</div>
	</div>



	<!-- End wrapper -->
	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>