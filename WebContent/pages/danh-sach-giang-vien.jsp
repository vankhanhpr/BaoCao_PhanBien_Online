<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.objectdatabase.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>Danh Sách Giảng viên</title>
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
							<li class="active">Danh Sách Giảng viên</li>
						</ol>
						<div class="panel panel-default">
							<div style="color: rgb(7, 132, 163);" class="panel-heading">
								<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Danh Sách Giảng viên</h4>
							</div>
							<div class="panel-body">
								<table class="table" data-page-size="5">
	<!--COLUMN-->
	<thead>
		<tr>
			<th>STT</th>
			<th>Họ tên</th>
			<th>Mã số</th>
			<th>SDT</th>
			<th>Email</th>
			<th>Chuyên ngành</th>

		</tr>
	</thead>
	<!--END COLUMN-->
	<%
		int i = 1;
	%>
	<c:forEach var="u" items="${requestScope.dsu}">
		<!--ROW-->
		<tbody>
			<tr>
				<td><span class="text-info"><%=i++%></span></td>
				<td>${u.getHoTen()}</td>
				<td>${u.getMaSo()}</td>
				<td>${u.getSDT()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getChuyenNganh()}</td>
			</tr>
		</tbody>
		<!--END ROW-->

	</c:forEach>
	</table>

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
	<script>

	</script>
	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
</body>
</html>