<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.classes.*"%>
<head>
<%@ include file="//includes/header.jsp"%>
<title>Kết quả</title>
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

			<div id="wrapper">
				<div class="container">
					<div class="row">
						<!-- 	        LEFT MENU -->
						<%@include file="//includes/menu-desktop.jsp"%>
						<!-- 		    END LEFT MENU -->

						<!-- 		      MAINVIEW -->
						<div class="col-md-9">
							<ol class="breadcrumb">
								<!--HOme/thông báo-->
								<li><a href="<%=request.getContextPath()%>/trang-chu">Home</a>
								</li>
								<li class="active">Xem kết quả</li>
								<span style="float: right;" id="time_bar"> <span
									id="time" class="label label-primary pull-right"><i
										class="glyphicon glyphicon-time"></i><%=Function.getDate()%></span><br></span>
							</ol>

							<div class="panel panel-default">
								<div style="color: rgb(7, 132, 163);" class="panel-heading">
									<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Thông
										Tin</h4>
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
												<th>Chức vụ</th>
												<th data-hide="phone,tablet">Điểm</th>
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
																<td>Chủ tịch</td>
																<td>Nguyễn Văn A</td>
																<td>9</td>
															</tr>
															<tr>
																<td>Giáo viên hướng dẫn</td>
																<td>Nguyễn Văn B</td>
																<td>9</td>
															</tr>
															<tr>
																<td>Phản biện</td>
																<td>Lê Thị C</td>
																<td>9</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
										<!--END ROW-->
										<!--ROW-->
										<tbody>
											<tr>
												<td><span class="text-info">2</span></td>
												<td>Xây dựng ứng dụng web React Native</td>
												<td>8h:30m 19/5</td>
												<td>GVHD</td>
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
																<td>Chủ tịch</td>
																<td>Nguyễn Văn A</td>
																<td>9</td>
															</tr>
															<tr>
																<td>Giáo viên hướng dẫn</td>
																<td>Nguyễn Văn B</td>
																<td>9</td>
															</tr>
															<tr>
																<td>Phản biện</td>
																<td>Lê Thị C</td>
																<td>9</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
										<!--END ROW-->

									</table>

								</div>
								<!--end bản tin-->
							</div>

						</div>
						<!--Khung hiển thị chính-->
						<!-- 		    END MAINVIEW -->

					</div>
				</div>
			</div>
			<!-- End wrapper -->

			<!--  FOOTER -->
			<%@ include file="//includes/footer.jsp"%>
			<!--END FOOTER -->

		</div>
	</div>
</body>
</html>
