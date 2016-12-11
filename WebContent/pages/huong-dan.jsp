<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.classes.Function"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Hướng dẫn</title>
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
								<li class="active">Hướng dẫn</li>
								<span style="float: right;" id="glyphicon glyphicon-time">
									<span id="time" class="label label-primary pull-right"><i
										class="icon-time"></i><%=Function.getDate()%></span><br>
								</span>
							</ol>

							<div class="well-sm"></div>
							<div class="panel panel-default">
								<div class="panel-body">
									<h3>
										<strong>Hướng dẫn đăng nhập :</strong>
									</h3>

									<p style="text-align: center;">
										<img
											src="<%=request.getContextPath()%>/public/images/Login.png"
											width="670" height="320">
									</p>

									<p>&nbsp;</p>

									<p>
										Username : <strong>MSSV</strong>
									</p>

									<p>
										Password : <strong>nếu lần đầu đăng nhập th&igrave;
											password cũng ch&iacute;nh l&agrave; m&atilde; số sinh
											vi&ecirc;n (nếu kh&ocirc;ng th&agrave;nh c&ocirc;ng
											th&igrave; vui l&ograve;ng sử dụng chức năng Nhắc mật khẩu
											hoặc li&ecirc;n hệ supporter để được reset mật khẩu).</strong>
									</p>

									<hr />
									<p>
										Nếu quên mật khẩu, bạn click vào dòng quên mật khẩu!
									</p>

									<p style="text-align: center;">
										<img
											src="<%=request.getContextPath()%>/public/images/quenMatKhau.png"
											width="670" height="320">
									</p>

									<p>&nbsp;</p>

									<p>
										<strong>Quản trị t&agrave;i khoản : </strong>Sinh vi&ecirc;n
										xem th&ocirc;ng b&aacute;o về ph&eacute;p được đăng k&yacute;
										đề t&agrave;i trong lần n&agrave;y kh&ocirc;ng, <strong>thay
											đổi th&ocirc;ng tin</strong> hoặc <strong>mật khẩu</strong>.
									</p>

									<p>
										<strong>Đăng k&yacute; đề t&agrave;i : </strong>
									</p>

									<ul>
										<li>Nếu bạn chưa đăng k&yacute; đề t&agrave;i n&agrave;o
											th&igrave; hệ thống hiện ra danh s&aacute;ch c&aacute;c đề
											t&agrave;i m&agrave; bạn c&oacute; thể đăng k&yacute;, bạn
											chọn đề t&agrave;i n&agrave;o th&igrave; nhấp v&agrave;o
											link&nbsp;<strong>Đăng k&yacute;</strong>&nbsp;đề t&agrave;i
											đ&oacute;
										</li>
									</ul>

									<p>&nbsp;</p>

									<ul>
										<li>Nếu đề t&agrave;i bạn muốn đăng k&yacute; đ&atilde;
											c&oacute; người đăng k&yacute; trước rồi th&igrave; bạn chọn
											v&agrave;o link&nbsp;<strong>XVN (xin v&agrave;o
												nh&oacute;m: </strong>để th&ecirc;m m&igrave;nh v&agrave;o danh
											s&aacute;ch &ldquo;<strong>Quan t&acirc;m đề
												t&agrave;i</strong>&rdquo;<strong>) </strong>hoặc click<strong>
												gửi mail </strong>để gửi y&ecirc;u cầu trực tiếp đến email trưởng
											nh&oacute;m đề t&agrave;i. Ngo&agrave;i ra bạn c&oacute; thể
											xem th&ocirc;ng tin li&ecirc;n lạc của nh&oacute;m trưởng
											th&ocirc;ng qua &ldquo;<strong>Chi tiết đề
												t&agrave;i</strong>&rdquo;.
										</li>
									</ul>

									<p>&nbsp;</p>

									<ul>
										<li>Nếu bạn đăng k&yacute; đề t&agrave;i v&agrave;
											l&agrave; trưởng nh&oacute;m th&igrave; bạn được quyền xem
											danh s&aacute;ch c&aacute;c sinh vi&ecirc;n &ldquo;<strong>Quan
												t&acirc;m đề t&agrave;i</strong>&rdquo; v&agrave; c&oacute; thể
											th&ecirc;m c&aacute;c th&agrave;nh vi&ecirc;n n&agrave;y
											(hoặc bất cứ sinh vi&ecirc;n n&agrave;o được ph&eacute;p đăng
											k&yacute; đề t&agrave;i) v&agrave;o nh&oacute;m với điều kiện
											đề t&agrave;i của bạn c&ograve;n chỗ trống.
										</li>
									</ul>

									<p>&nbsp;</p>

									<ul>
										<li>Đề t&agrave;i c&oacute; r&agrave;ng buộc chuy&ecirc;n
											ng&agrave;nh th&igrave; Nh&oacute;m trưởng phải th&ecirc;m
											c&aacute;c th&agrave;nh vi&ecirc;n theo đ&uacute;ng
											chuy&ecirc;n ng&agrave;nh của đề t&agrave;i.</li>
									</ul>

									<hr />
									<p>
										Mỗi đợt đăng k&yacute; đề t&agrave;i c&oacute; giới hạn thời
										gian bắt đầu v&agrave; thời gian kết th&uacute;c, khi hết thời
										gian đăng k&yacute; th&igrave; bạn kh&ocirc;ng thể v&agrave;o
										chức năng <strong>Đăng k&yacute; đề t&agrave;i </strong>nữa
										m&agrave; chỉ c&oacute; thể t&igrave;m kiếm c&aacute;c
										th&ocirc;ng tin chung của c&aacute;c đề t&agrave;i.
									</p>
								</div>
							</div>



							<!--Hướng dẫn báo cáo qua web-->
							<div class="panel panel-default">
								<div class="panel-body">
									<h3>
										<strong>Hướng dẫn báo cáo online :</strong>
									</h3>
									<div>
										<p style="text-align: center;">
											<img
												src="<%=request.getContextPath()%>/public/images/avatar-default.png"
												width="100" height="100">
										</p>
									</div>
									<div>
										<h5>
											<strong> Hướng dẫn báo cáo online</strong>
										</h5>
										<ul>
											<li>Để báo cáo qua mạng internet bằng hình thức live
												stream, bạn cần phải đăng nhập</li>
										</ul>
										<ul>
											<li>Nếu là sinh viên: bạn cần phải nộp bài báp cáo trước
												đó và phải được đồng ý cho báo cáo trước. Giao diện trang
												web sẽ có một màn hình thể hiện bài báo cáo của bạn ( chính
												là phần quay màn hình hiện tại của bạn). Bạn có thể nghe câu
												hỏi từ giảng viên và trả lời câu hỏi thông qua webcam.</li>
										</ul>
										<ul>
											<li>Nếu là giảng viên: bạn cần phải có vai trò trong
												phòng báo cáo đó. Bạn sẽ quan sát được bài báo cáo của sinh
												viên trên màn hình trang web, xem được sinh viên khi đang
												báo cáo bằng web, có thể đặt câu hỏi trực tiếp bằng webcam
												của chính bạn.</li>
										</ul>
										<ul>
											<li>Nếu là chủ tịch hội đồng: ngoài những chức năng
												giống giảng viên, bạn có quyền dừng phần báo cáo của sinh
												viên khi nhấn vào nút dừng báo cáo.</li>
										</ul>
										<ul>
											<li>Sau khi báo cáo xong, sẽ có giao diện chấm điểm hiện
												lên cho giảng viên.</li>
										</ul>
									</div>

								</div>
							</div>


							<ol class="breadcrumb">
								<li><a href="http://dkdt.fit.hcmute.edu.vn/">Home</a></li>
								<li class="active">Hướng dẫn đăng ký</li>
							</ol>
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
