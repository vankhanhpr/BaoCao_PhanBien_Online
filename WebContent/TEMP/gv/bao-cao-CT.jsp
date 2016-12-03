<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<%@ page import="demo.Constraint.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.phanbien.baocao.online.utils.classes.Function" %>
<head>
<title>Báo cáo</title>
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
								<li><a href="<%=request.getContextPath() %>/trang-chu">Home</a></li>
								<li class="active">Báo Cáo</li>
								<span style="float: right;" id="time_bar"> <span id="time"
			class="label label-primary pull-right"><i class="glyphicon glyphicon-time"></i><%=Function.getDate() %></span><br></span>
							</ol>
							<div class="videoPro">
								<video width="856" height="405" controls> </video>
							</div>						
						</div>
						<!--Khung hiển thị chính-->
					</div>
				</div>
			</div>
				

		</div>

	</div>

		<!-- ############################ Cho điểm ############################## -->
			<div class="modal fade" id="chodiem">
				<div class="modal-dialog" id='aa'>
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h2 class="form-signin-heading">
								<p align="center">
									<font size="4">Cho Điểm</font>
								</p>
							</h2>
						</div>
						<form action="#">
							<fieldset>
								<table class="table">
									<tr>
										<td>Tên Đề Tài:</td>
										<td>Thi Công và thiết kết máy bay bốn cánh</td>
									</tr>
									<tr>
										<td>Ngày Báo Cáo:</td>
										<td>20/9/2013</td>
									</tr>
									<tr>
										<td>Giờ:</td>
										<td>8:30p</td>
									</tr>
									<tr>
										<td>Điểm:</td>
										<td><input type="textbox" name="txtDiem"></td>
									</tr>
									<tr>
										<td>Nhận Xét:</td>
										<td><textarea rows="6" cols="80"></textarea></td>
									</tr>
								</table>
								<a href=""><p align="center">
										<button type="button" class="btnXacNhan btn btn-success"
											type="submit">Xác Nhận</button>
									</p></a>
							</fieldset>
						</form>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
	
	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>