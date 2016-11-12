<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.objectdatabase.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>Xét duyệt đề tài</title>
<%@include file="//includes/header.jsp"%>
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
								<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Xét
									duyệt đề tài</h4>
							</div>
							<div class="panel-body">
								<form id="laca" action="XuLyXetDuyet" method="get">
									<table class="table">
										<tr>
											<td>Tên đề tài:</td>
											<td>${requestScope.xd.getTenDT()}</td>
										</tr>
										<tr>
											<td>Giảng Viên Hướng Dẫn:</td>
											<td>${sessionScope.user.getHoTen()}</td>
										</tr>
										<tr>
											<td>Sinh Viên:</td>
											<td>
												<table class="table">
													<tr>
														<td>Mã Số</td>
														<td>Họ Tên</td>
													</tr>

													<c:forEach var="sv" items="${requestScope.nsv}">
														<tr>
															<td>${sv.getMaSV()}</td>
															<td>${sv.getTenSV()}</td>
														</tr>
													</c:forEach>
												</table>
											</td>
										</tr>
										<tr>
											<td>Nhận Xét:</td>
											<td><textarea id="danhgia" name="nhanxetDT" class="form-control"
													rows="4" cols="80"></textarea></td>

										</tr>
									</table>
									<p align="center">
										<label class="checkbox-inline"><input type="checkbox"
											name="nopbaocao" value="true">Đồng ý cho báo cáo</label>
									</p>
									<p align="center">
										<button class="btnNop btn btn-success" type="submit">Lưu</button>
									</p>
								</form>

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
$(document).ready(function(){
    $("#laca").submit(function(e){
    	if($("#danhgia").val() == ''){
    		$('#alert-modal-body').html("Chưa điền nhận xét!");
    		$('#alert-modal').modal('show');
    		return false;
    	}
    	if($('input[type="checkbox"]:checked').val()=='true'){
    		return true;
    	}else{
    		if (confirm('Bạn chắc không cho báo không?')) {
    		    
    			return true;
    		} else {
    		    return false;
    		}
    	}
    	return false;
    })
})     
</script>
	<!--  FOOTER -->
	<%@ include file="//includes/footer.jsp"%>
	<!--END FOOTER -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>