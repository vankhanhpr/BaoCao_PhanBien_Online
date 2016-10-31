<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page import="com.phanbien.baocao.online.utils.classes.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>Xét Duyệt Đề Tài</title>
<%@include file="//includes/header.jsp"%>
</head>
<body>
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

						<!--Khung hiển thị chính-->
						<div class="col-md-9">
							<ol class="breadcrumb">
								<!--Home/thông báo-->

								<li><a href="<%=request.getContextPath()%>/trang-chu">Home</a></li>
								<li class="active">Xét duyệt đề tài</li>
								<span style="float: right;" id="time_bar"> <span
									id="time" class="label label-primary pull-right"><i
										class="icon-time"></i><%=Function.getDate()%></span><br></span>
							</ol>

							<div class="panel panel-default">
								<div style="color: rgb(7, 132, 163);" class="panel-heading">
									<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Xét
										duyệt đề tài</h4>
								</div>
								<table class="table">
									<tr>
										<td>Tên đề tài:</td>
										<td>Xây dựng ứng dụng di động bằng React Native</td>
									</tr>
									<tr>
										<td>Giảng Viên Hướng Dẫn:</td>
										<td>Nguyễn Văn B</td>
									</tr>
									<tr>
										<td>Sinh Viên:</td>
										<td>
											<table class="table">
												<tr>
													<td>Trưởng nhóm</td>
													<td><a>Lê Anh Tuấn</a></td>
													<td><a>132222</a></td>
												</tr>
												<tr>
													<td>Thành viên</td>
													<td><a>Nguyễn Phi Hùng</a></td>
													<td><a>132222</a></td>
												</tr>
												<tr>
													<td>Thành viên</td>
													<td><a>Nguyễn Hà</a></td>
													<td><a>132222</a></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td>Nhận Xét:</td>
										<td><textarea class="form-control" rows="4" cols="80"></textarea></td>

									</tr>
								</table>
								<p align="center">
									<label class="checkbox-inline"><input type="checkbox"
										value="">Đồng ý cho báo cáo</label>
								</p>
								<p align="center">
									<button type="button" class="btnNop btn btn-success"
										type="submit">Lưu</button>
								</p>
							</div>
							<!--end bản tin-->
						</div>

					</div>
					<!--Khung hiển thị chính-->

				</div>
			</div>

		</div>
	</div>


	<!-- start wrapper -->

	<!-- End wrapper -->
	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>