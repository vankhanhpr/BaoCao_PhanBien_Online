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
											<%@include file="//includes/body/ds-de-tai-sv.jsp"%>
										</c:when>

										<c:when test="${sessionScope.user.getChucVu()== '2'}">
											<%@include file="//includes/body/ds-de-tai-gv-tk.jsp"%>
										</c:when>

										<c:when test="${sessionScope.user.getChucVu() == '3'}">
											<a href="danh-sach-de-tai-can-xep-lich.jsp"
												class="btn btn-success btn-xs pull-right">Xếp lịch báo
												cáo</a>
											<%@include file="//includes/body/ds-de-tai-gv-tk.jsp"%>
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
	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>