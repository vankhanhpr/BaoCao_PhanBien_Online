<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.classes.Function"%>
<head>
<%@include file="//includes/header.jsp"%>
<title>Chi tiết đề tài</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/public/js/angularjs/angular.min.js"></script>
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
						<!--Khung hiển thị chính-->
						<div class="col-md-9">
							<ol class="breadcrumb">
								<!--HOme/thông báo-->
								<li><a href="<%=request.getContextPath()%>/trang-chu">Home</a>
								</li>
								<li class="active">Danh sách đề tài</li>
								<span style="float: right;" id="time_bar"> <span
									id="time" class="label label-primary pull-right"><i
										class="glyphicon glyphicon-time"></i><%=Function.getDate()%></span><br></span>
							</ol>

							<div class="panel panel-default"></div>
							<div style="color: rgb(7, 132, 163);" class="panel-heading">
								<h4 style="font-family: verdana; color: rgb(87, 87, 87);">Chi
									tiết đề tài</h4>
							</div>
							<div class="panel-body" ng-app="myApp"
										ng-controller="ctdtController">
								<div id="detail">
									<table class="table table-hover">
										<tr>
											<td>Tên đề tài</td>
											<td>{{myData.TenDeTai}}</td>
										</tr>
										<tr>
											<td>Tóm tắt đề tài</td>
											<td><a data-toggle="modal" href="#tom_tat">Xem</a></td>
										</tr>
										<!--                     <tr>      -->
										<!--                         <td>Xét duyệt</td> -->
										<!--                         <td> <a target="_blank" id="mybtn" href="xet-duyet-de-tai.jsp" class="btn btn-danger btn-xs">Chưa Xét duyệt</a></td> -->
										<!--                     </tr> -->
										<tr>
											<td>Thời gian báo cáo</td>
											<td>  {{ myData.ThoiGianBC + ' ; ' + myData.NgayBC }} </td>
										</tr>
										<tr>
											<td>Thời lượng báo cáo</td>
											<td>{{myData.ThoiLuongBC}} phút</td>
										</tr>
										<tr>
											<td>Bài báo cáo</td>
											<td><a href="<%=request.getContextPath()%>/Download?id={{myData.MaDeTai}}">Download file....</a></td>
										</tr>
										<%
											for(int i=0;i<3;i++)
											{
												out.print("<tr>");
												out.print("<td>Thành viên</td>");
												out.print("<td><a data-toggle='modal' href='#thanh_vien"+(i+1)+"'>{{myData.Nhom.SV["+i+"].HoTen }}</a></td>");
												out.print("</tr>");
												
												out.println("<div class='modal fade' id='thanh_vien"+(i+1)+"'>");
												out.println("<div class='modal-dialog'>");

												out.println("<div class='modal-content'>");		
												out.println("<div class='modal-header'>");
												out.println("<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button> ");				
																
												out.println("<h4 class='modal-title'>Thông tin thành viên</h4>");		
												out.println("</div>");
												out.println("<div class='modal-body'>");
												out.println("<label>MSSV : <span class='text-info'>{{myData.Nhom.SV["+i+"].MaSo}}</span></label><br/>");
												out.println("<label>Họ tên : <span class='text-info'>{{myData.Nhom.SV["+i+"].HoTen}}</span></label><br /> ");
												out.println("<label>Chuyên ngành : <span class='text-info'>{{myData.Nhom.SV["+i+"].ChuyenNganh}}</span></label><br />");
												out.println("<label>Số điện thoại : <span class='text-info'>{{myData.Nhom.SV["+i+"].SDT}}</span></label><br />");
												out.println("<label>Email : <span class='text-info'>{{myData.Nhom.SV["+i+"].Email}}</span></label><br />");
												out.println("</div>");
												out.println("<div class='modal-footer'>");
												out.println("<button type='button' class='btn btn-default' data-dismiss='modal'>Close</button>");
												out.println("</div>");
												out.println("</div>");
												out.println("</div>");
												out.println("</div>");
												out.println("</div>");		
											}
										%>

										<tr class="warning">
											<td>GV hướng dẫn</td>
											<td><a data-toggle="modal" href="#GV_HD">{{myData.HoiDong.GVHD.HoTen}}</a></td>
										</tr>
										<tr class="danger">
											<td>GV phản biện</td>
											<td><a data-toggle="modal" href="#GV_PB">{{myData.HoiDong.GVPB.HoTen}}</a></td>
										</tr>
										<tr class="danger">
											<td>Uỷ viên</td>
											<td><a data-toggle="modal" href="#GV_UV">{{myData.HoiDong.UyVien.HoTen}}</a></td>
										</tr>
																				<tr class="danger">
											<td>Chủ tịch hội đồng</td>
											<td ng-if="myData.HoiDong.MaChuTich==myData.HoiDong.GVHD.MaSo">
												<a data-toggle="modal" href="#GV_CT">{{myData.HoiDong.GVHD.HoTen}}</a>
											</td>
											<td ng-if="myData.HoiDong.MaChuTich==myData.HoiDong.GVPB.MaSo">
												<a data-toggle="modal" href="#GV_CT">{{myData.HoiDong.GVPB.HoTen}}</a>
											</td>
											<td ng-if="myData.HoiDong.MaChuTich==myData.HoiDong.UyVien.MaSo">
												<a data-toggle="modal" href="#GV_CT">{{myData.HoiDong.UyVien.HoTen}}</a>
											</td>
										</tr>
										
										<tr>
											<td colspan="2" style="text-align: center;"><a href="<%=request.getContextPath() %>/danh-sach-de-tai"
													id="back" type="button" class="btn btn-info">Quay
													về</a></td>
										</tr>
									</table>
								</div>
								<!-- ========================== Tóm tắt ==========================-->
								<div class="modal fade" id="tom_tat">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title">Tóm tắt đề tài</h4>
											</div>
											<div class="modal-body">{{myData.TomTat}}</div>
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
								<!-- ========================== Info ChuTich ==========================-->				
								<div class="modal fade" id="GV_HD">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title">Thông tin Giáo viên hướng dẫn</h4>
											</div>
											<div class="modal-body">
												<label>Họ tên :<span class="text-info"> {{myData.HoiDong.GVHD.HoTen}}</span></label><br /> <label>Chuyên ngành : 
												<span
													class="text-info">{{myData.HoiDong.GVHD.ChuyenNganh}}</span></label><br /> <label>Số
													điện thoại : <span class="text-info">{{myData.HoiDong.GVHD.SDT}}</span>
												</label><br /> <label>Email : <span class="text-info">{{myData.HoiDong.GVHD.Email}}</span></label><br />
											</div>
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
								<!-- ========================== Info GVHD ==========================-->
								<div class="modal fade" id="GV_PB">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title">Thông tin Giáo viên phản biên</h4>
											</div>
											<div class="modal-body">
												<label>Họ tên : <span class="text-info">{{myData.HoiDong.GVPB.HoTen}}</span></label><br /> <label>Chuyên ngành : <span
													class="text-info">{{myData.HoiDong.GVPB.ChuyenNganh}}</span></label><br /> <label>Số
													điện thoại : <span class="text-info">{{myData.HoiDong.GVPB.SDT}}</span>
												</label><br /> <label>Email : <span class="text-info">{{myData.HoiDong.GVPB.Email}}</span></label><br />
											</div>
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
								<!-- ========================== Info GVPB ==========================-->
								<div class="modal fade" id="GV_UV">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title">Thông tin Uỷ viên hội đồng</h4>
											</div>
											<div class="modal-body">
												<label>Họ tên : <span class="text-info">{{myData.HoiDong.UyVien.HoTen}}</span></label><br /> <label>Chuyên ngành : <span
													class="text-info">{{myData.HoiDong.UyVien.ChuyenNganh}}</span></label><br /> <label>Số
													điện thoại : <span class="text-info">{{myData.HoiDong.UyVien.SDT}}</span>
												</label><br /> <label>Email : <span class="text-info">{{myData.HoiDong.UyVien.Email}}</span></label><br />
											</div>
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
			$.urlParam = function(name) {
				var results = new RegExp('[\?&]' + name + '=([^&#]*)')
						.exec(window.location.href);
				if (results == null) {
					return null;
				} else {
					return results[1] || 0;
				}
			}
			var getUrl ='../show-chi-tiet?id='+ $.urlParam('id');
			console.log(getUrl);
			var app = angular.module('myApp', []);
			app.controller('ctdtController', function($scope, $http) {
				$http({
					url : getUrl,
					method : "GET"
				}).then(function(response) {
					$scope.myData = response.data;
					console.log(response);
				});
			});
		</script>
</body>
</html>
