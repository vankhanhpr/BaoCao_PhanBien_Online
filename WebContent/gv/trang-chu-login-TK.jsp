<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="demo.Constraint.*"%>
<head>
<%@include file="//includes/header.jsp"%>
<title>Home</title>
</head>
<body>
	<!-- ============================================================-->
	<div>
		<!--BANNER -->
		<div id="container">
			<div id="navigation">
				<%@include file="//includes/banner-loginTK.jsp"%>
			</div>

			<div id="wrapper">
				<div class="container">
					<div class="row">

						<!-- 	        LEFT MENU -->
						<%
							BodyHTML.outLeftMenu(out, "HOME", BodyHTML.ACTOR_TK);
						%>
						<!-- 		    END LEFT MENU -->

						<!-- 		      MAINVIEW -->
						<%@ include file="//includes/mainview-trangchu.jsp" %>
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
