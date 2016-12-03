<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.objectdatabase.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>Thông Tin Cá Nhân</title>
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
							<li class="active">Thông Tin Cá Nhân</li>
						</ol>
						<div class="panel panel-default">
							<div style="color: rgb(7, 132, 163);" class="panel-heading">
								<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Thông
									Tin Cá Nhân</h4>
							</div>
							<div class="panel-body">
								<!--Các bản tin-->
								<div>
									<table class="table">
										<tr>
											<td>Avatar:</td>
											<td><c:if
													test="${sessionScope.user.getAvatar() !=null }">
													<img
														src="<%=request.getContextPath() %>/avatar?id=${sessionScope.user.getMaSo()}" width="100" height="100">
												</c:if> 
												<c:if test="${sessionScope.user.getAvatar() ==null }">
													<img
														src="<%=request.getContextPath()%>/public/images/avatar-default.png" width="100" height="100">
												</c:if></td>

										</tr>
										<tr>
											<td>ID:</td>
											<td>${sessionScope.user.getMaSo()}</td>

										</tr>
										<tr>
											<td>Họ Tên:</td>
											<td>${sessionScope.user.getHoTen()}</td>
										</tr>
										<tr>
											<td>Email:</td>
											<td>${sessionScope.user.getEmail()}</td>
										</tr>
										<tr>
											<td>Ngày Sinh:</td>
											<td>${sessionScope.user.getNgaySinh()}</td>
										</tr>
										<tr>
											<td>Địa Chỉ:</td>
											<td>${sessionScope.user.getDiaChi()}</td>
										</tr>
										<tr>
											<td>Điện Thoại:</td>
											<td>${sessionScope.user.getSDT()}</td>
										</tr>
										<tr>
											<td>Chức Vụ:</td>
											<%
												int temp =Integer.parseInt(( ((User) session.getAttribute("user")).getChucVu()));

												String result = "";

												switch (temp) {
												case 1:
													result = "Sinh Viên";
													break;
												case 2:
													result = "Giảng viên";
													break;
												case 3:
													result = "Trưởng khoa";
													break;
												default:
													result = "";
													break;
												}
											%>
											<td><%=result%></td>
										</tr>
										<tr>
											<td>Khoa:</td>
											<td>${sessionScope.user.getKhoa()}</td>
										</tr>
									</table>
									<p align="center">
										<a class="btnThayDoi btn btn-success"
											href="<%=request.getContextPath()%>/thong-tin-ca-nhan/edit"
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
		</div>
		<!-- End wrapper -->
	</div>


	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>