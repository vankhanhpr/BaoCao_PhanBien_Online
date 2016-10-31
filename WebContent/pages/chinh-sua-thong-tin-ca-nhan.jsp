<%@ page import="demo.Constraint.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Chỉnh Sữa Thông Tin Cá Nhân</title>
<%@include file="//includes/header.jsp"%>
<link
	href="<%=request.getContextPath()%>/public/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">

</head>
<body>

	<!-- ############################ Đổi Mật Khẩu ############################## -->
	<div class="modal fade" id="doimatkhau">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h2 class="form-signin-heading">
						<p align="center">
							<font size="4">Đổi Mật Khẩu</font>
						</p>
					</h2>
				</div>
				<form class="form-signin" id="frm-changepassword">
					<div id="err_login"></div>
					<label for="inputMatKhauCu" class="sr-only">MatKhauCu</label> <input
						type="password" id="oldpassword" class="form-control"
						placeholder="Mật Khẩu Cũ" required> <label
						for="inputMatKhauMoi" class="sr-only">MatKhauMoi</label> <input
						type="password" id="newpassword" class="form-control"
						placeholder="Gõ Mật Khẩu Mới" required autofocus> <label
						for="inputNhapLaiMatKhau" class="sr-only">NhapLaiMatKhau</label> <input
						type="password" id="retypepassword" class="form-control"
						placeholder="Nhập Lại Mật Khẩu" required autofocus><br>
					<button class="btn btn-lg btn-primary btn-block" id="dongY"
						type="submit">Đồng Ý</button>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<%@include file="//includes/menu-mobile.jsp"%>
	<div>
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

						<!--Khung hiển thị chính-->
						<div class="col-md-9">
							<ol class="breadcrumb">
								<li><a href="<%=request.getContextPath()%>/trang-chu">Home</a></li>
								<li class="active">Chỉnh sửa thông tin cá nhân</li>

								<span style="float: right;" id="time_bar"> <span
									id="time" class="label label-primary pull-right"><i
										class="icon-time"></i><%=Function.getDate()%></span><br>
								</span>
							</ol>

							<div class="well-sm"></div>
							<div class="panel panel-default">
								<div style="color: rgb(7, 132, 163);" class="panel-heading">
									<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Thông
										báo</h4>
								</div>
								<div class="panel-body" id="#content">
									<table class="table" data-page-size="5">
										<thead>
											<tr>
												<th style="width: 50px">
													<div class="cuibap">
														<form method="post" action="<%=request.getContextPath() %>/editavatar" enctype="multipart/form-data">
															<p align="center">
																<c:if test="${sessionScope.user.getAvatar() !=null }">
																	<img width="100" height="100" id="myavatar"
																		src="<%=request.getContextPath() %>/avatar?id=${sessionScope.user.getMaSo()}">
																</c:if>
																<c:if test="${sessionScope.user.getAvatar() ==null }">
																	<img width="100" height="100" id="myavatar"
																		src="<%=request.getContextPath()%>/public/images/avatar-default.png">
																</c:if>
															</p>
															
																    <input type="file" id="my_file"
																	name="photo" style="display: none;" accept="image/jpeg"
																	onchange="onFileSelected(event)" /> 
																	
																	<p align="center">
																	<input
																	type="submit" value="Lưu" id="btnLuuAvatar"
																	class="btn btn-success disabled" />   
																	</p>
														</form>
														<p align="center">
															<button type="submit" class="btnMatKhau btn btn-success"
																id="btDoiMatKhau" type="submit">Đổi Mật Khẩu</button>
														</p>


													</div>
												</th>
												<th>
													<form id="frm-profile" action="" method="post">
														<table class="table">
															<tr>
																<td class="tt_canhan">ID:</td>
																<td>${sessionScope.user.getMaSo()}</td>
															</tr>
															<tr>
																<td class="tt_canhan">Email:</td>
																<td>${sessionScope.user.getEmail()}</td>
															</tr>
															<tr>
																<td class="tt_canhan">Họ Tên:</td>
																<td><input type="text" class="form-control"
																	id="hoten" name="n_hoten"
																	value="${sessionScope.user.getHoTen()}"></td>
															</tr>
															<tr>
																<td class="tt_canhan">Ngày Sinh:</td>
																<td>

																	<div class="form-group">
																		<div class="input-group date form_datetime col-md-10"
																			data-date="yyyy-mm-dd" data-date-format="yyyy-mm-dd"
																			data-link-field="dtp_input1">
																			<input class="form-control" size="16" type="text"
																				value="${sessionScope.user.getNgaySinh().toString()}"
																				readonly id="ngaysinh"> <span
																				class="input-group-addon"><span
																				class="glyphicon glyphicon-remove"></span></span> <span
																				class="input-group-addon"><span
																				class="glyphicon glyphicon-th"></span></span>
																		</div>

																	</div>

																</td>
															</tr>
															<tr>
																<td class="tt_canhan">Địa Chỉ:</td>
																<td><input type="text" class="form-control"
																	id="diachi" name="n_diachi"
																	value="${sessionScope.user.getDiaChi()}"></td>
															</tr>
															<tr>
																<td class="tt_canhan">Số Điện Thoại:</td>
																<td><input type="text" id="sdt"
																	class="form-control" name="n_sdt"
																	value="${sessionScope.user.getSDT()}"></td>
															</tr>
														</table>
														<button id="btnLuu" class="btnLuu btn btn-success"
															type="submit" style="margin-left: 50%">Lưu</button>

													</form>

												</th>
											</tr>
										</thead>
									</table>
								</div>
							</div>
						</div>

						<!-- 						End khung hiển thị chính -->
					</div>
				</div>
			</div>
			<!--  FOOTER -->
			<%@ include file="//includes/footer.jsp"%>
			<!--END FOOTER -->
		</div>
	</div>
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
					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="btnmodalClose">Close</button>
				</div>
			</div>
		</div>
	</div>

	<script>
		$(document).ready(function() {
			$("#btDoiMatKhau").click(function() {
				$("#doimatkhau").modal();
			});

		});
	</script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/js/bootstrap-datetimepicker.js"
		charset="UTF-8"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/js/locales/bootstrap-datetimepicker.uk.js"
		charset="UTF-8"></script>
	<script type="text/javascript">
		$('.form_datetime').datetimepicker({
			weekStart : 0,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			forceParse : 0,
			minView : 2
		});
	</script>
	<!-- End wrapper -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/js/ajax/editprofile.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#myavatar").on("click", function() {
				$("#my_file").click();
			});
		});
		function onFileSelected(event) {
			var selectedFile = event.target.files[0];
			var reader = new FileReader();

			var imgtag = document.getElementById("myavatar");
			imgtag.title = selectedFile.name;

			reader.onload = function(event) {
				imgtag.src = event.target.result;
			};

			reader.readAsDataURL(selectedFile);

			if ($('#btnLuuAvatar').hasClass('disabled')) {
				$('#btnLuuAvatar').removeClass('disabled');
			}
		}
	</script>
</body>
</html>