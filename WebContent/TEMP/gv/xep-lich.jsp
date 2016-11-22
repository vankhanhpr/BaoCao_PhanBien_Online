<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.classes.*"%>
<head>
<%@include file="//includes/header.jsp"%>
<title>Xếp lịch</title>
<link
	href="<%=request.getContextPath()%>/public/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">
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

						<!-- End wrapper -->

						<!--  FOOTER -->
						<div class="col-md-9">
							<ol class="breadcrumb">
								<!--Home/thông báo-->

								<li><a href="<%=request.getContextPath()%>/trang-chu">Home</a></li>
								<li class="active">Danh sách đề tài</li>
								<span style="float: right;" id="time_bar"> <span
									id="time" class="label label-primary pull-right"><i
										class="icon-time"></i><%=Function.getDate()%></span><br></span>
							</ol>
							<div class="panel panel-default">


								<div style="color: rgb(7, 132, 163);" class="panel-heading">
									<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Xếp
										lịch</h4>
								</div>

								<div class="panel-body">
									<div id="detail">
										<table class="table table-hover">
											<tr>
												<td>Tên đề tài</td>
												<td>Xây dựng ứng dụng di động bằng React Native</td>
											</tr>
											<tr>
												<td>Tóm tắt đề tài</td>
												<td><a data-toggle="modal" href="#tom_tat">Xem</a></td>
											</tr>
											<tr>
												<td>Thời gian báo cáo</td>
												<td>
													<div class="form-group">
														<div class="input-group date form_datetime col-md-9"
															data-date="" data-date-format="yyyy-mm-dd - HH:ii p"
															data-link-field="dtp_input1">
															<input class="form-control" size="16" type="text"
																value="" readonly> <span
																class="input-group-addon"><span
																	class="glyphicon glyphicon-remove"></span></span> <span
																class="input-group-addon"><span
																	class="glyphicon glyphicon-th"></span></span>
														</div>
														<input type="hidden" id="dtp_input1" value="" /><br />
													</div>

												</td>
											</tr>
											<tr>
												<td>Thời lượng báo cáo</td>
												<td>

													<div class="form-group">


														<div class="input-group date form_time col-md-9"
															data-date="" data-date-format="ii"
															data-link-field="dtp_input3" data-link-format="ii">
															<input class="form-control" size="16" type="text"
																value="" readonly> <span
																class="input-group-addon"><span
																	class="glyphicon glyphicon-remove"></span></span> <span
																class="input-group-addon"><span
																	class="glyphicon glyphicon-time"></span></span>
														</div>
														<input type="hidden" id="dtp_input3" value="" /><br />
													</div>

												</td>
											</tr>
											<tr>
												<td>SL sinh viên</td>
												<td>3</td>
											</tr>
											<tr>
												<td>Bài báo cáo</td>
												<td><a href="#taifile">Download file....</a></td>
											</tr>
											<tr>
												<td>Niên khóa</td>
												<td>2013</td>
											</tr>
											<tr>
												<td>Giáo viên hướng dẫn</td>
												<td>Nguyễn Văn A</td>
											</tr>
											<tr>
												<td>Chủ tịch hội đồng</td>
												<td>
													<div class="form-group">

														<select class="form-control" id="sel1" style="width: 50%">
															<option>Lê Văn C</option>
															<option>Lê Văn S</option>
															<option>3</option>
															<option>4</option>
														</select>
													</div>
												</td>
											</tr>
											<tr>
												<td>GV phản biện</td>
												<td>
													<div class="form-group">
														<select class="form-control" id="sel1" style="width: 50%">
															<option>Lê Văn C</option>
															<option>Lê Văn S</option>
															<option>3</option>
															<option>4</option>
														</select>
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="2" style="text-align: center;"><a
													href="kiem-tra-trung-lich.jsp" id="back" type="button"
													class="btn btn-info">Xác nhận</a></td>
											</tr>
										</table>
									</div>
									<!-- ========================== Info nhom truong ==========================-->
									<div class="modal fade" id="tom_tat">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h4 class="modal-title">Tóm tắt đề tài</h4>
												</div>
												<div class="modal-body">React Native là framework xây
													dựng ứng dụng di động native sử dụng Javascript do Facebook
													phát hành. Để hiểu rõ về React Native là gì, trước tiên
													chúng ta cần phân biệt sự khác nhau giữa ứng dụng Native và
													Hybrid.</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Close</button>
												</div>
											</div>
											<!-- /.modal-content -->
										</div>
										<!-- /.modal-dialog -->
									</div>
									<!-- /.modal -->
								</div>
								<!--Khung hiển thị chính-->


								<!-- 		    END MAINVIEW -->

							</div>
						</div>
					</div>
					<!--END FOOTER -->



				</div>
			</div>
			<!--  FOOTER -->
			<%@ include file="//includes/footer.jsp"%>
			<!--END FOOTER -->
		</div>


	</div>

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
			//language : 'fr',
			weekStart : 0,
			todayBtn : 0,
			autoclose : 1,
			todayHighlight : 1,
			startView : 0,
			minView : 0,
			forceParse : 0
		});
	</script>

</body>
</html>










