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
<style type="text/css">
.videoPro {
	width: 660px;
	min-height: 400px;
	margin-left: 10px;
	border: 1px solid #CDCDCD;
	float: left;
	background-color: gray;
	margin-bottom: 5px;
}

.gh {
	width: 130px;
	min-height: 40px;
	margin-left: 30px;
	margin-top: 5px;
	border: 1px solid black;
	float: left;
	background-color: white;
	margin-bottom: 5px;
}

.nutbam {
	width: 170px;
	min-height: 40px;
	margin-left: 800px border: 2px solid black;
	float: left;
	background-color: white;
	margin-bottom: 5px;
}

#aa {
	width: 75%;
	height: 70%;
}
</style>
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
								<video width="660" height="400" controls> <source
									src="forrest_gump.mp4" type="video/mp4"> <source
									src="forrest_gump.ogg" type="video/ogg"> <track
									src="subtitles_en.vtt" kind="subtitles" srclang="en"
									label="English"> <track src="subtitles_no.vtt"
									kind="subtitles" srclang="no" label="Norwegian"></video>
							</div>
							<div class="gh">
								<img src="../public/images/user-icon-6.png" width="120"
									height="120">
							</div>
							<div class="gh">
								<img src="../public/images/user-icon-6.png" width="120"
									height="120">
							</div>
							<div class="gh">
								<img src="../public/images/user-icon-6.png" width="120"
									height="120">
							</div>

							<div class="nutbam">
								<p align="right">
									<a href=""><button type="button"
											class="btnKick btn btn-danger" type="submit">Kích</button></a> <a
										href="#"><button type="button" id="chamdiem"
											class="btnDiem btn btn-success">Chấm Điểm</button>
								</p>
							</div>
						</div>
						<!--Khung hiển thị chính-->
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
			<!-- ============================================================-->

		</div>

	</div>


	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#chamdiem").click(function() {
				$("#chodiem").modal();
			});
		});
	</script>
</body>
</html>