<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page import="demo.Constraint.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>Thông Tin Cá Nhân</title>
<%@include file="//includes/header.jsp"%>
</head>
<body>
	<div>
		<!--BANNER -->
		<div id="container">
			<div id="navigation">
				<%@include file="//includes/banner-loginGV.jsp"%>
			</div>
			<!-- start wrapper -->
			<div id="wrapper">
				<div class="container">
					<div class="row">
						<!-- 	        LEFT MENU -->
						<%
							BodyHTML.outLeftMenu(out, "PROFILE", BodyHTML.ACTOR_GV);
						%>
						<!-- 		    END LEFT MENU -->
						<!--Khung hiển thị chính-->
						<div class="col-md-9">
							<ol class="breadcrumb">
								<!--HOme/thông báo-->
								<li><a href="trang-chu-login-GV.jsp">Home</a></li>
								<li class="active">Thông Tin Cá Nhân</li>
							</ol>

							<div class="panel panel-default">
								<div style="color: rgb(7, 132, 163);" class="panel-heading">
									<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Thông
										Tin</h4>
								</div>
								<div class="panel-body">
									<!--Các bản tin-->
									<div>
										<table class="table">
											<tr>
												<td>Hình:</td>
												<td><img id="target"
													src="public/images/user-icon-6.png" width="100"
													height="100"></td>

											</tr>
											<tr>
												<td>ID:</td>
												<td>1330000</td>

											</tr>
											<tr>
												<td>Họ Tên:</td>
												<td>Nông Đức Mạnh</td>
											</tr>
											<tr>
												<td>Email:</td>
												<td>nongducmanh96@gmail.com</td>
											</tr>
											<tr>
												<td>Ngày Sinh:</td>
												<td>16/04/1996</td>
											</tr>
											<tr>
												<td>Địa Chỉ:</td>
												<td>Quận 10</td>
											</tr>
											<tr>
												<td>Điện Thoại:</td>
												<td>099999999</td>
											</tr>
											<tr>
												<td>Chức Vụ:</td>
												<td>Sinh Viên</td>
											</tr>
											<tr>
												<td>Khoa:</td>
												<td>Công Nghệ Thông Tin</td>
											</tr>
										</table>
										<p align="center">
											<a type="button" class="btnThayDoi btn btn-success" href="chinh-sua-thong-tin-ca-nhan.jsp"
												id="thayDoi">Thay Đổi</a>
										</p>
									</div>
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