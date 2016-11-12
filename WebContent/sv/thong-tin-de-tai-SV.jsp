<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<%@ page import="com.phanbien.baocao.online.utils.classes.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>Thông Tin Đề Tài Sinh Viên</title>
<%@include file="//includes/header.jsp"%>
<style type="text/css">
	#aa  {width:75%;height: 70%;}
</style>
</head>
<body>
<!-- 	<!-- ############################ form bao cao ############################## --> -->
<!-- 	<div class="modal fade" id="fbaocao"> -->
<!-- 		<div class="modal-dialog" id='aa' > -->
<!-- 			<div class="modal-content"> -->
<!-- 				<div class="modal-header"> -->
<!-- 					<button type="button" class="close" data-dismiss="modal" -->
<!-- 						aria-hidden="true">&times;</button> -->
<!-- 					<h2 class="form-signin-heading"> -->
<!-- 						<p align="center"> -->
<!-- 							<font size="4">Form Báo Cáo</font></p> -->
<!-- 					</h2> -->
<!-- 				</div> -->
<!-- 				<form action="#"> -->
<!-- 						<table class="table"> -->
<!-- 								<tr> -->
<!-- 									<td>Tên đề tài:</td> -->
<!-- 									<td>Thi Công và thiết kết máy bay bốn cánh</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>MSSV:</td> -->
<!-- 									<td class="sizeInput"><input type="textbox" name="MaSV"></td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>Sinh Viên:</td> -->
<!-- 									<td class="sizeInput"><input type="textbox" name="tenSV"></td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>Giáo Viên Hướng Dẫn:</td> -->
<!-- 									<td class="sizeInput"><input type="texbox" name="GVHD"></td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td>Mô Tả Đề Tài:</td> -->
<!-- 									<td ><textarea rows="6" cols="90"></textarea></td> -->
<!-- 								</tr> -->
<!-- 						</table> -->
<!-- 						<p style="margin-left: 184px;"><input type="file" name="" value="" accept=".rar"></p>		 -->
<!-- 						<p align="right"><button  type="button" class="btnNop btn btn-success" type="submit" style="background-color: gray;">Nộp báo cáo</button></p> -->
<!-- 			     </form> -->
<!-- 			</div> -->
<!-- 			<!-- /.modal-content --> 
<!-- 		</div> -->
<!-- 		<!-- /.modal-dialog --> 
<!-- 	</div> -->
<!-- 	<!-- /.modal --> 
<div class="modal fade" id="dang_nhap11">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title">Đăng nhập</h4>
			</div>
			<!-- action='login' -->
			fsdfsdfsdsfds
			
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
						<!--Home/thông báo-->
						<li><a href="<%=request.getContextPath()%>/trang-chu">Home</a></li>
						<li class="active">Thông Tin Đề Tài Sinh Viên</li>
						<span style="float: right;" id="time_bar"> <span id="time"
			class="label label-primary pull-right"><i class="icon-time"></i><%=Function.getDate() %></span><br></span>
					</ol>
					<!--end hot new-->
					<div class="panel panel-default">
						<div style="color: rgb(7, 132, 163);" class="panel-heading">
							<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Thông
								Tin Đề tài</h4>
						</div>
						<div class="panel-body">
							<!--Các bản tin-->
							<table class="table" border="1">
								  	<tr>
								  		<td class="tt_detaiSV">Sinh viên báo cáo:</td>
								  		<td>Nông Đức Mạnh</td>    
								  	</tr>
								  	<tr>
								  		<td class="tt_detaiSV">Tên đề tài:</td>
								  		<td>Thi Công và thiết kết máy bay bốn cánh</td>
								  	</tr>
								  	<tr>
								 		<td class="tt_detaiSV">Thời gian báo cáo:</td>
								  		<td>45 phút</td>
								 	</tr>
								 	<tr>
								 		<td class="tt_detaiSV">Ngày báo cáo:</td>
								 		<td>20/9/2013</td>
								 	</tr>
								 	<tr>
								 		<td class="tt_detaiSV">Giờ báo cáo:</td>
								 		<td>8:30 am</td>
								 	</tr>
								 	<tr>
								 		<td class="tt_detaiSV">Nộp báo cáo </td>
										<td><input type="checkbox" name="trangthainop" align="right"></td>									
									</tr>
							</table>
							<table class="table" border="1" align="center" style="width: 50%;" >
									<caption>
										<font size="4" class=""> Hội Đồng Báo Cáo</font>
									</caption>
									<tr style=" background-color: gray;">
										<th>Giảng Viên</th>
										<th>Vai trò</th>
									</tr>
									<tr>
										<td>Ngyễn thị A</td>
										<td>Giáo viên hướng dẫn</td>
									</tr>
									<tr>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
									</tr>
									
							</table> <br> 
							<a data-toggle="modal" style="margin-left: 45%" href="#dang_nhap11" type="button" class="btnNopBaoCao btn btn-primary" id="btNopform">Nộp báo cáo</a>
						</div>
						<!--end bản tin-->
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
		src="<%= request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>