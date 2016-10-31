<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.classes.Function"%>
<head>
<%@include file="//includes/header.jsp"%>
<title>Home</title>
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
								<li><a href="trang-chu.jsp">Home</a></li>
								<li class="active">Thông báo</li>
								<span style="float: right;" id="time_bar"> <span
									id="time" class="label label-primary pull-right"><i
										class="icon-time"></i><%=Function.getDate()%></span><br></span>
							</ol>
							<div class="well-sm"></div>
							<div class="panel panel-default">
								<div style="color: rgb(7, 132, 163);" class="panel-heading">
									<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Thông
										báo</h4>
								</div>
								<div class="panel-body">
									<div class="alert alert-warning">
										Vui lòng <a class="label label-warning" href="#dang_nhap"
											data-toggle="modal">ĐĂNG NHẬP</a> vào hệ thống
									</div>
								</div>
							</div>

						</div>
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
