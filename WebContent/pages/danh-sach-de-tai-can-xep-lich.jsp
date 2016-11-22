<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.objectdatabase.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>Danh sách đề tài cần xếp lịch</title>
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
								<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Các
									đề tài cần xếp lịch</h4>
							</div>
							<div class="panel-body">
								<table class="table" data-page-size="5">
									<!--COLUMN-->
									<thead>
										<tr>
											<th>STT</th>
											<th>Tên đề tài</th>
											<th>Xếp lịch</th>
										</tr>
									</thead>
									<!--END COLUMN-->
									<!--ROW-->
									<% int i = 1;%>
									<c:forEach var="xl" items="${requestScope.xeplich}">
									<tbody>
										<tr>
											<td><span class="text-info"><%=i++%></span></td>
											<td>${xl.getTenDT()}</td>
											<td><a href="<%= request.getContextPath()%>/XepLich?id=${xl.getMaDT()}"
												class="btn btn-success btn-xs">Xếp lịch</a></td>
										</tr>
									</tbody>
									</c:forEach>
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