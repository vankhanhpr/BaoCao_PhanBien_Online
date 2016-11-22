
<%@ page import="demo.Constraint.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>Quên Mật Khẩu</title>
<%@include file="//includes/header.jsp"%>
</head>
<body>
	<div>
		<div id="container">
			<div id="navigation">
				<%@include file="//includes/banner-desktop.jsp"%>
			</div>
			<div id="wrapper">
				<div class="container">
					<div class="col-md-6" style="margin-left: 25%">
						<form id="form-forgotpass" method="POST">
							<h2 class="form-signin-heading">
								<p align="center">
									<font size="6">Quên mật khẩu</font>
								</p>
							</h2>
							<label for="inputUser" class="sr-only">Tên đăng nhập</label> <input
								type="text" id="user" class="form-control"
								placeholder="Tên đăng nhập" required> <label for="inputEmail"
								class="sr-only">Địa chỉ email:</label> <input type="email"
								id="email" class="form-control" placeholder="Địa chỉ email"
								required autofocus><br>
								<div id="waiting_forgotpass" style="display: none;">
						<div class="progress progress-striped active">
							<div class="progress-bar" role="progressbar" aria-valuenow="45"
								aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
						</div>
					</div>
							<div class="col-md-4 text-center">
								<button class="btn btn-primary center-block" type="submit">Gửi</button>
							</div>
							
						</form>
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
				</div>
			</div>
			<!--  FOOTER -->
			<%@ include file="//includes/footer.jsp"%>
			<!--END FOOTER -->
		</div>
	</div>
	<!-- End wrapper -->
	<script type="text/javascript">
	$(document).ready(function(){
	    $("#form-forgotpass").submit(function(e){
	        var form_data = {
	            username: $("#user").val(),
	            email: $("#email").val(),
	        };
	        $.ajax({
	            url:'ForgotPassword',
	            type:'POST',
	            async:true,
	            data: form_data,
	            success:function(msg_login){
	                if (msg_login == 'error')
	                {
	                	 $('#alert-modal-body').html("Thất bại! Vui lòng thử lại");
	            		 $('#alert-modal').modal('show');
	                    return false;
	                }
	                else
	                {
	                	 $('#alert-modal-body').html("Thành công ! Vui lòng kiểm tra mail");
	            		 $('#alert-modal').modal('show');
	                   setTimeout(function(){
	                	   window.location.href = ''+msg_login+'';

	                   },1000);
	                   return false;
	                }
	            }
	            });
	            return false;
	           
	    
	});
	})
	 $(document).ajaxStart(function () {
        $("#waiting_forgotpass").show();
    }).ajaxStop(function () {
        $("#waiting_forgotpass").hide();
        });
	</script>
</body>
</html>