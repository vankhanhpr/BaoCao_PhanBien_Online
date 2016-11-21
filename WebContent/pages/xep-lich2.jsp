<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.objectdatabase.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>Xếp Lịch</title>
<%@include file="//includes/header.jsp"%>
<link
	href="<%=request.getContextPath()%>/public/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">
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
								<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Xếp
									lịch</h4>
							</div>
							<div class="panel-body">
								<form method="post" id="xlbaocao">
									<div id="detail">
										<table class="table table-hover">
											<tr>
												<td>Mã DT</td>
												<td id="maDT">${requestScope.MaDT}</td>
											</tr>
											<tr>
												<td>Tên đề tài</td>
												<td id="tenDT">${requestScope.TenDT}</td>
											</tr>
											<tr>
												<td>Thời gian báo cáo</td>
												<td><input id="thoigianbaocao" class="form-control"
													readonly="readonly" type="textbox"
													style="width: 50%; margin-left: 17px;" name="sa"
													value="${requestScope.ThoiGianBC}"></td>
											</tr>
											<tr>
												<td>Thời lượng báo cáo</td>
												<td><input id="thoiluong" class="form-control" type="textbox"
													readonly="readonly" style="width: 50%; margin-left: 17px;"
													name="sa" value="${requestScope.ThoiLuong}"></td>
											</tr>
											<tr>
												<table class="table table-hover">
													<tr>
														<td><b>Chức vụ</b></td>
														<td><b>Họ tên</b></td>
														<td><b>Chủ tịch</b></td>
													</tr>
													<tr>
														<td>Giáo viên hướng dẫn</td>
														<td id="GVHD">${requestScope.xldt.getMaGVDH()}-${requestScope.xldt.getTenGVHD()}</td>
														<td>
															<div class="radio">
																<label><input type="radio" name="chucvu"
																	value="1" checked="checked"></label>
															</div>
														</td>
													</tr>
													<tr>
														<td>Ủy Viên</td>
														<td>
															<div class="form-group">
																<select class="form-control" id="uyvien"
																	style="width: 70%">
																	<c:set var="hdan" scope="session"
																		value="${requestScope.xldt.getMaGVDH()}-${requestScope.xldt.getTenGVHD()}" />
																	<c:forEach var="gv" items="${requestScope.dsgv}">
																		<c:set var="uv" scope="session"
																			value="${gv.getMaGV()}-${gv.getTenGV()}" />
																		<c:if test="${hdan!=uv}">
																			<option>${gv.getMaGV()}-${gv.getTenGV()}</option>
																		</c:if>
																	</c:forEach>
																</select>
															</div>
														</td>
														<td>
															<div class="radio">
																<label><input type="radio" name="chucvu"
																	value="2"></label>
															</div>
														</td>
													</tr>
													<tr>
														<td>GV phản biện</td>
														<td>
															<div class="form-group">
																<select class="form-control" id="phanbien"
																	style="width: 70%">
																	<c:set var="hdan" scope="session"
																		value="${requestScope.xldt.getMaGVDH()}-${requestScope.xldt.getTenGVHD()}" />
																	<c:forEach var="gv" items="${requestScope.dsgv}">
																		<c:set var="uv" scope="session"
																			value="${gv.getMaGV()}-${gv.getTenGV()}" />
																		<c:if test="${hdan!=uv}">
																			<option>${gv.getMaGV()}-${gv.getTenGV()}</option>
																		</c:if>
																	</c:forEach>
																</select>
															</div>
														</td>
														<td>
															<div class="radio">
																<label><input type="radio" name="chucvu"
																	value="3"></label>
															</div>
														</td>
													</tr>
												</table>
											</tr>
										</table>
										<p align="center">
											<button id="" type="submit" class="btn btn-info">Xác
												nhận</button>
										</p>
									</div>
								</form>
								<!-- MODAL ERROR -->
								<div id="alert-modal" class="modal fade">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 id="alert-modal-title" class="modal-title">Lỗi</h4>
											</div>
											<div id="alert-modal-body" class="modal-body"></div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal" id="btnmodalClose">Close</button>
											</div>
										</div>
									</div>
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

	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/js/ajax/xeplich.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>