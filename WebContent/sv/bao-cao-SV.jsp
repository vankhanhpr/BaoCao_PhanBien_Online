<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.objectdatabase.User"%>
<head>
<title>Báo Cáo</title>
<%@include file="//includes/header.jsp"%>

</head>
<body>
<%@include file="//includes/menu-mobile.jsp" %>
	<div>
		<div id="container">
			<div id="navigation">
				<%@include file="//includes/banner-mobile.jsp" %>
				<%@include file="//includes/banner.jsp"%>
			</div>

			<div id="wrapper">
				<div class="container">
					<div class="row">
						<!-- 	        LEFT MENU -->
						<%
							BodyHTML.outLeftMenu(out, "REPORT", BodyHTML.ACTOR_SV);
						%>
						<!-- 		    END LEFT MENU -->
						<!--Khung hiển thị chính-->
						<div class="col-md-9">
							<ol class="breadcrumb">
								<!--HOme/thông báo-->
								<li><a href="trang-chu-login-SV.jsp">Home</a></li>
								<li class="active">Báo Cáo</li>
								<span style="float: right;" id="time_bar"> <span id="time"
			class="label label-primary pull-right"><i class="icon-time"></i><%=BodyHTML.getDate() %></span><br></span>
							</ol>
							<div class="videoPro">
								<video width="660" height="400" controls> <source src=""
									type="video/mp4"> <source src="" type="video/ogg"></video>
							</div>
							<div class="gh">
								<video width="130" height="120" controls> <source src=""
									type="video/mp4"> <source src="" type="video/ogg"></video>

							</div>
							<div class="gh">
								<video width="130" height="120" controls> <source src=""
									type="video/mp4"> <source src="" type="video/ogg"></video>
							</div>
							<div class="gh">
								<video width="130" height="120" controls> <source src=""
									type="video/mp4"> <source src="" type="video/ogg"></video>
							</div>
						</div>
						<!--Khung hiển thị chính-->

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- start wrapper -->

	<!-- End wrapper -->
	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>