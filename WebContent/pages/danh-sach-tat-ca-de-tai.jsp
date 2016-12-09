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
									Sách Tất Cả Các Đề Tài</h4>
							</div>
							<div class="panel-body">
								<table class="table" data-page-size="5">
	<!--COLUMN-->
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên Đề Tài</th>
			<th>Thời Gian</th>
			<th>Chức Vụ</th>
			<th data="phone,tablet">Xét duyệt</th>
			<th data-hide="phone,tablet">Trạng thái</th>
			<th data-hide="phone,tablet">Hội đồng</th>
			<th data-hide="phone,tablet">Chi tiết</th>

		</tr>
	</thead>
	<!--END COLUMN-->
	<%
		int i = 1;
	%>
	<c:forEach var="hd" items="${requestScope.dsdt}">
		<!--ROW-->
		<tbody>
			<tr>
				<td><span class="text-info"><%=i++%></span></td>
				<td>${hd.getTenDeTai()}</td>
				<td>${hd.getNgayBaoCao()}/${hd.getThoiGianBaoCao()}</td>
				<td>GVHD</td>
				<td>
					<c:choose>
						<c:when test="${hd.getTrangThai()=='Xét duyệt'}">
							<a target="_blank" href="#"class="btn btn-danger btn-xs disabled">Đã Xét duyệt </a>
						</c:when>
						<c:otherwise>
							<a class="btn btn-success btn-xs disable">Chưa xét duyệt</a>
						</c:otherwise>
					</c:choose>
					
				</td>
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
								<td>${hd.getChuTich()}</td>
							</tr>
						</tbody>
					</table>
				</td>
				<td><a target="_blank" href="<%= request.getContextPath()%>/danh-sach-de-tai/chi-tiet?id=${hd.getMaDT()}"
					class="btn btn-success btn-xs">Chi tiết </a></td>
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