<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<%@ page import="com.phanbien.baocao.online.utils.classes.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>Kiểm tra trùng lịch</title>
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
								<li class="active">Kiểm Tra Trùng Lịch</li>
								<span style="float: right;" id="time_bar"> <span id="time"
			class="label label-primary pull-right"><i class="icon-time"></i><%=Function.getDate() %></span><br></span>
							</ol>

							<div class="ngudon">
								<table class="table">
									<tr>
										<td>Tên Đề Tài:</td>
										<td><input class="form-control" type="textbox"
											style="width: 70%; margin-left: 17px;" name="sa"></td>
									</tr>
									<tr>
										<td>Thời Gian Báo Cáo:</td>
										<td>
											<div class="form-group">
												<div class="input-group date form_datetime col-md-10"
													data-date="" data-date-format="dd MM yyyy - HH:ii p"
													data-link-field="dtp_input1">
													<input class="form-control" size="16" type="text" value=""
														readonly> <span class="input-group-addon"><span
															class="glyphicon glyphicon-remove"></span></span> <span
														class="input-group-addon"><span
															class="glyphicon glyphicon-th"></span></span>
												</div>
												<input type="hidden" id="dtp_input1" value="" /><br />
											</div>
										</td>
									</tr>
									<tr>
										<td>Thời lượng báo cáo:</td>
										<td><input class="form-control" type="textbox"
											style="width: 30%; margin-left: 17px;" name="sa"></td>
									</tr>
									<tr>
										<td>Giảng Viên Phản Biện:</td>
										<td><select class="form-control"
											style="width: 30%; margin-left: 17px;"><option
													value="volo">Nguyễn Văn A</option></select></td>
									</tr>
									<tr>
										<td>Chủ Tịch Hội Đồng:</td>
										<td><select class="form-control"
											style="width: 30%; margin-left: 17px;"><option
													value="volo">Nguyễn Văn A</option></select></td>
									</tr>
								</table>
							</div>
							<div class="buonngu">
								<table class="table" align="center">
									<tr>
										<td style="background-color: #6699ff"><font size="5"><p
													align="center">Lịch Bị Trùng</p></font></td>
									</tr>
									<tr>
										<td>
											<table class="table">
												<tr>
													<th>Giảng viên</th>
													<th>Tên đề tài</th>
													<th>Thời gian báo cáp</th>
												</tr>
												<tr>
													<td>Ngyễn thị A</td>
													<td>Thiết kế và thi công robot bay 4 cánh</td>
													<td>8:00 am 20/9/2016</td>
												</tr>
												<tr>
													<td>Ngyễn Văn A</td>
													<td>Công nghệ tiết kiệm xăng</td>
													<td>8:30 am 20/9/2016</td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
												</tr>
											</table>
										</td>

									</tr>
								</table>
								</br>
								<p align="center">
									<a href="xep-lich.jsp"><button class="button_h btn btn-success"
											type="submit"" >Quay lại trang xếp lịch</button></a> <a href=""><button
											class="button_h btn btn-success" type="submit"" >Xác
											nhận</button></a>
								</p>
							</div>


						</div>
						<!--Khung hiển thị chính-->
					</div>
				</div>
			</div>

		</div>
	</div>


	<!-- End wrapper -->
	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/js/bootstrap-datetimepicker.js"
		charset="UTF-8"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/js/locales/bootstrap-datetimepicker.uk.js"
		charset="UTF-8"></script>
	<script type="text/javascript">
		$('.form_datetime').datetimepicker({
			//language:  'fr',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			forceParse : 0,
			showMeridian : 1
		});
		$('.form_time').datetimepicker({
			language : 'fr',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 1,
			minView : 0,
			maxView : 1,
			forceParse : 0
		});
	</script>
</body>
</html>