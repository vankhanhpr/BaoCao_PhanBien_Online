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
								<form action="XepLich2" method="get" id="xeplichbaocao">
									<div id="detail">
										<table class="table table-hover">
											<tr>
												<td>Mã DT</td>
												<td>
												<input class="form-control"
													readonly="readonly" type="textbox"
													style="width: 50%; margin-left: 17px;" name="maDT" value="${requestScope.xldt.getMaDT()}">
													
												</td>
											</tr>
											<tr>
												<td>Tên đề tài</td>
												<td>
												<input class="form-control"
													readonly="readonly" type="textbox"
													style="width: 80%; margin-left: 17px;" name="tenDT" value="${requestScope.xldt.getTenDT()}">
												</td>
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
															data-date="" data-date-format="yyyy-mm-dd / hh:ii" 
															data-link-field="dtp_input1">
															<input id="thoigianbaocao" name="thoigianBC" class="form-control" size="16"
																type="text" value="" readonly><span
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

													<div class="col-md-5">
														<input type="text" class="form-control" id="thoiluong" name="tluong"
															value="" onkeypress="return isNumber(event)" />
													</div>

												</td>
											</tr>
											<tr>
												<td>SL sinh viên</td>
												<td>${requestScope.xldt.getSoLuong()}</td>
											</tr>
											<tr>
												<td>Bài báo cáo</td>
												<td><a href="">${requestScope.xldt.getFileBaoCao()}</a></td>
											</tr>
										</table>
										<p align="center">
											<button id="" type="submit" class="btn btn-info">Chọn</button>
										</p>
									</div>
								</form>
								<!-- ========================== Info nhom truong ==========================-->
								<div class="modal fade" id="tom_tat">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title">Tóm tắt đề tài</h4>
											</div>
											<div class="modal-body">${requestScope.xldt.getTomTat()}</div>
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
			weekStart : 0,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			forceParse : 0,
			
		});

	</script>
	<script type="text/javascript">
	function isNumber(evt) {
	    evt = (evt) ? evt : window.event;
	    var charCode = (evt.which) ? evt.which : evt.keyCode;
	    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
	        return false;
	    }
	    return true;
	}
	</script>
	<script type="text/javascript">
$(document).ready(function(){
    $("#xeplichbaocao").submit(function(e){
    	if($("#thoigianbaocao").val() == ''){
    		$('#alert-modal-body').html("Chưa chọn thời gian báo cáo!");
    		$('#alert-modal').modal('show');
    		
    		return false;
    	}
    	if($("#thoiluong").val() == ''){
    		$('#alert-modal-body').html("Chưa điền thời lượng báo cáo!");
    		$('#alert-modal').modal('show');
    		return false;
    	}
    	if($("#thoigianbaocao").val() != ''){
			var gt=new Date($('#thoigianbaocao').val());
			
			if(gt <=new Date()){
				$('#alert-modal-body').html("Chọn thời gian báo cáo phải lớn hơn thời gian hiện tại!");
	    		$('#alert-modal').modal('show');
	    		return false;
			}else{
				if (confirm('Bạn chắc không?')) {
					return true;
				} else {
				    return false;
				}
			}		
    	}
    	
    	return false;
})});
</script>
</body>
</html>