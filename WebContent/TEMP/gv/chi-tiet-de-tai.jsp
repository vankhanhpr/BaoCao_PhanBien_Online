<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.classes.Function" %>
<head>
<%@include file="//includes/header.jsp"%>
<title>Chi tiết đề tài</title>
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
              <ol class="breadcrumb"> <!--HOme/thông báo-->
                <li><a href="<%=request.getContextPath() %>/trang-chu">Home</a>
                </li><li class="active">Danh sách đề tài</li>
                <span style="float: right;" id="time_bar"> <span id="time"
			class="label label-primary pull-right"><i class="glyphicon glyphicon-time"></i><%=Function.getDate() %></span><br></span>
              </ol>    
              
                 <div class="panel panel-default">
                   
                 </div>
                        <div  style="color: rgb(7, 132, 163);" class="panel-heading">
                            <h4 style="font-family: verdana;color:rgb(87,87,87);">Chi tiết đề tài</h4>
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
<!--                     <tr>      -->
<!--                         <td>Xét duyệt</td> -->
<!--                         <td> <a target="_blank" id="mybtn" href="xet-duyet-de-tai.jsp" class="btn btn-danger btn-xs">Chưa Xét duyệt</a></td> -->
<!--                     </tr> -->
                    <tr>   
                        <td>Thời gian báo cáo</td>
                        <td>8h:30p 14/5/2016</td>
                    </tr> 
                    <tr>       
                        <td>Thời lượng báo cáo</td>
                        <td>30 phút</td>
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
                        <td>Trạng thái</td>
                        <td>Chưa báo cáo</td>
                    </tr>    
                    <tr>     
                        <td>Niên khóa</td>
                        <td>2013</td>
                    </tr>   
                    <tr>       
                        <td>Trưởng nhóm</td>
                        <td>
                        <a data-toggle="modal" href="#truong_nhom">Lê Anh Tuấn</a></td>
                    </tr> 
                    <tr>        
                        <td>Thành viên</td>
                        <td><a data-toggle="modal" href="#thanh_vien1">Nguyễn Phi Hùng </a><br />
                               <!-- ========================== Info thanh vien ==========================-->
                                    <div class="modal fade" id="thanh_vien1">
                                      <div class="modal-dialog">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title">Thông tin thành viên</h4>
                                          </div>
                                          <div class="modal-body">         
                                                    <label>MSSV : <span class="text-info">13111111</span></label><br />
                                                    <label>Chuyên ngành : <span class="text-info">Công Nghệ Phần Mềm</span></label><br />
                                                    <label>Số điện thoại : 111112222333<span class="text-info"></span></label><br />
                                                    <label>Email : <span class="text-info">13111111@student.hcmute.edu.vn</span></label><br />  
                                                                                  </div>
                                          <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                          </div>
                                        </div><!-- /.modal-content -->
                                      </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->
                          </td>
                    </tr>
                     <tr>        
                        <td>Thành viên</td>
                        <td><a data-toggle="modal" href="#thanh_vien2" >Nguyễn Hà</a><br/>
                                    <!-- ========================== Info thanh vien ==========================-->
                                    <div class="modal fade" id="thanh_vien2">
                                      <div class="modal-dialog">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title">Thông tin thành viên</h4>
                                          </div>
                                          <div class="modal-body">
                                                                                  <label>MSSV : <span class="text-info">132222</span></label><br />
                                                    <label>Chuyên ngành : <span class="text-info">Công Nghệ Phần Mềm</span></label><br />
                                                    <label>Số điện thoại : 1111123453<span class="text-info"></span></label><br />
                                                    <label>Email : <span class="text-info">132222@student.hcmute.edu.vn</span></label><br />  
                                                                                  </div>
                                                                                
                                          <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                          </div>
                                        </div><!-- /.modal-content -->
                                      </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->

                        </td>
                    </tr>
                    <tr class="danger">   
                        <td>Chủ tịch hội đồng</td>
                        <td>
                        <a data-toggle="modal" href="#GV_CT">Nguyễn Văn A</a>
                        </td>
                    </tr>    
                    <tr class="warning">       
                        <td>GV hướng dẫn</td>
                        <td>
                        <a data-toggle="modal" href="#GV_HD">Nguyễn Văn B</a>
                                    </td>   
                    </tr>
                    <tr class="danger">       
                        <td>GV phản biện</td>
                        <td>
                        <a data-toggle="modal" href="#GV_PB">Lê Thị C</a>
                                    </td>   
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;"><button id="back" type="button" class="btn btn-info">Quay về</button></td>
                    </tr>
                </table>
                            </div>
        <!-- ========================== Info nhom truong ==========================-->
        <div class="modal fade" id="tom_tat">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Tóm tắt đề tài</h4>
              </div>
              <div class="modal-body">
                                React Native là framework xây dựng ứng dụng di động native sử dụng Javascript do Facebook phát hành. Để hiểu rõ về React Native là gì, trước tiên chúng ta cần phân biệt sự khác nhau giữa ứng dụng Native và Hybrid.
                              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->                    
        <!-- ========================== Info nhom truong ==========================-->
        <div class="modal fade" id="truong_nhom">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Thông tin nhóm trưởng</h4>
              </div>
              <div class="modal-body">
                                <img style="width: 92px;height:102px;" class="pull-right img-thumbnail" src="http://online.hcmute.edu.vn/HinhSV/12110223.jpg" />
                        <label>Họ tên : <span class="text-info">Lê Anh Tuấn</span></label><br />
                        <label>MSSV : <span class="text-info">12110223</span></label><br />
                        <label>Chuyên ngành : <span class="text-info">Công Nghệ Phần Mềm</span></label><br />
                        <label>Số điện thoại : <span class="text-info"></span></label><br />
                        <label>Email : <span class="text-info">12110223@student.hcmute.edu.vn</span></label><br />  
                              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <!-- ========================== Info ChuTich ==========================-->
        <div class="modal fade" id="GV_CT">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Thông tin Chủ tịch hội đồng</h4>
              </div>
              <div class="modal-body">
                                <label>Họ tên : <span class="text-info">Nguyễn Văn A</span></label><br />
                        <label>Chuyên ngành : <span class="text-info">Công Nghệ Phần Mềm</span></label><br />
                        <label>Số điện thoại : <span class="text-info">123456789</span></label><br />
                        <label>Email : <span class="text-info">anguyeee@fit.hcmute.edu.vn</span></label><br />  
                              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <!-- ========================== Info GVHD ==========================-->
        <div class="modal fade" id="GV_HD">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Thông tin GVHD</h4>
              </div>
              <div class="modal-body">
                                <label>Họ tên : <span class="text-info">Nguyễn Văn B</span></label><br />
                        <label>Chuyên ngành : <span class="text-info">Công Nghệ Phần Mềm</span></label><br />
                        <label>Số điện thoại : <span class="text-info">123456789</span></label><br />
                        <label>Email : <span class="text-info">gfdgfdgfd@fit.hcmute.edu.vn</span></label><br />  
                              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <!-- ========================== Info GVPB ==========================-->
        <div class="modal fade" id="GV_PB">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Thông tin GVPB</h4>
              </div>
              <div class="modal-body">
                  <label>Họ tên : <span class="text-info">Lê Thị C</span></label><br />
                        <label>Chuyên ngành : <span class="text-info">Công Nghệ Phần Mềm</span></label><br />
                        <label>Số điện thoại : <span class="text-info">123123456</span></label><br />
                        <label>Email : <span class="text-info">1234ss2@fit.hcmute.edu.vn</span></label><br />  
                      </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->                        

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
</body>
</html>
