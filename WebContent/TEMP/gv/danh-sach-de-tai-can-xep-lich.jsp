<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.classes.Function" %>
<head>
<%@include file="//includes/header.jsp"%>
<title>Danh sách đề tài cần xếp lịch</title>
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
								<li><a href="<%=request.getContextPath() %>/trang-chu">Home</a></li>
								<li class="active">Danh sách đề tài</li>


								<span style="float: right;" id="time_bar"> <span
									id="time" class="label label-primary pull-right"><i
										class="icon-time"></i><%=Function.getDate()%></span><br></span>
							</ol>
							<div class="well-sm">



								<!--Danh sách đề tài-->
								<div class="panel panel-default">
									<div style="color: rgb(7, 132, 163);" class="panel-heading">
										<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Danh
											sách đề tài</h4>
									</div>
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
										<tbody>
											<tr>
												<td><span class="text-info">1</span></td>
												<td>Xây dựng ứng dụng di động bằng React Native</td>
												<td><a target="_blank" href="xep-lich.jsp"
													class="btn btn-success btn-xs">Xếp lịch</a></td>
											</tr>
										</tbody>
										<!--END ROW-->
										<!--ROW-->
										<tbody>
											<tr>
												<td><span class="text-info">1</span></td>
												<td>Xây dựng ứng dụng web bằng React Native</td>
												<td><a target="_blank" href="#"
													class="btn btn-success btn-xs">Xếp lịch</a></td>
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
