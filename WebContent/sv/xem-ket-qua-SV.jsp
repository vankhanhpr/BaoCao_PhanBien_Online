<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<%@ page import="com.phanbien.baocao.online.utils.classes.*"%>
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
								<span style="float: right;" id="time_bar"> <span id="time"
			class="label label-primary pull-right"><i class="icon-time"></i><%=Function.getDate() %></span><br></span>
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
												<td>Thi Công và thiết kết máy bay bốn cánh</td>
												<td>20/9/2013</td>
												<td>8:30p</td>
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
															<td>Ngyễn thị A</td>
															<td>Giáo viên hướng dẫn</td>
															<td>9</td>
															<td></td>
														</tr>
														<tr>
															<td>B</td>
															<td>GH</td>
															<td>9</td>
															<td></td>
														</tr>
														<tr>
															<td>C</td>
															<td>GH</td>
															<td>7</td>
															<td></td>
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

	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>