<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.classes.Function"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Trang chủ</title>
<%@include file="//includes/header.jsp"%>
<link
	href="<%=request.getContextPath()%>/public/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">
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
			<div id="wrapper">
				<div class="container">
					<div class="row">
						<!-- 			LEFT MENU 		-->
						<%@include file="//includes/menu-desktop.jsp"%>

						<!-- 		    END LEFT MENU -->

						<!-- 		      MAINVIEW -->
						<div class="col-md-9">
							<ol class="breadcrumb">
								<li><a href="trang-chu">Home</a></li>
								<li class="active">Thông báo</li>
								<span style="float: right;" id="glyphicon glyphicon-time">
									<span id="time" class="label label-primary pull-right"><i
										class="icon-time"></i><%=Function.getDate()%></span><br>
								</span>
							</ol>

							<div class="well-sm"></div>
							<div class="panel panel-default">
								<div style="color: rgb(7, 132, 163);" class="panel-heading">
									<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Thông
										báo</h4>
								</div>
								<div class="panel-body" id="tb-content">
									<ul class="list-unstyled" id="">
										<c:forEach var="tb" items="${requestScope.thongbaos}">
											<li class="article-area">
												<p>
													<span class="btn btn-primary btn-sm">${tb.getNgay()}</span>
													${tb.getTieuDe()}
													<c:if test="${tb.getMaThongBao() == requestScope.numoftb}">
														<img
															src="<%=request.getContextPath()%>/public/images/new1.gif">
													</c:if>
												</p>
												<p style="display: none" class='content-tb'>${tb.getNoiDung()}</p>
											</li>
										</c:forEach>
									</ul>

									<div class="pagination pagination-centered"
										>
										<ul class="pagination">
											<c:forEach begin="1" end="${requestScope.numOfPage}" var="i">
												<c:choose>
													<c:when test="${requestScope.curPage == i }">
														<li class="active"><a href="trang-chu?page=${i}">${i}</a>

														</li>
													</c:when>
													<c:otherwise>
														<li><a class="pagination_link" id='${i}'
															href="trang-chu?page=${i}">${i}</a></li>
													</c:otherwise>
												</c:choose>
											</c:forEach>
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
	<script type="text/javascript">
		$(document).ready(function() {
			$('.article-area').click(function(event) {
				$(this).children(".content-tb").toggle();
			})
		})
	</script>

</body>
</html>
