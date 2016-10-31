
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
					<form class="form-signin">
						<h2 class="form-signin-heading">
							<p align="center">
								<font size="6">Quên mật khẩu?</font>
						</h2>
						</p>
						<label for="inputUser" class="sr-only">User</label> <input
							type="text" id="inputUser" class="form-control"
							placeholder="User" required> <label for="inputEmail"
							class="sr-only">Email address</label> <input type="email"
							id="inputEmail" class="form-control" placeholder="Email address"
							required autofocus><br>
									<button class="btn btn-lg btn-primary btn-block" type="submit">Send</button>
					</form>
				</div>
			</div>
			<!--  FOOTER -->
			<%@ include file="//includes/footer.jsp"%>
			<!--END FOOTER -->
		</div>
	</div>
	<!-- End wrapper -->

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>