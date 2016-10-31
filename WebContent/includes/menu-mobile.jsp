<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.phanbien.baocao.online.utils.classes.Function"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<div id="menu">
	<li class="list-group-item" id="time"
		style="font-size: 11px; background-color: #3b5998; font-weight: bold; color: rgb(250, 250, 250);"><%=Function.getDate()%></li>
	<li class="list-group-item"
		style="text-align: right; font-weight: bold; font-family: verdana; background-color: #efefef;">Danh
		Mục</li>


	<c:if test="${sessionScope.user==null }">
		<a href="trang-chu" class="list-group-item "><span
			class="pull-right"><i class="icon-chevron-right"></i></span>Trang Chủ</a>
		<a href="yeu-cau-dang-nhap" class="list-group-item "><span
			class="pull-right"><i class="icon-chevron-right"></i></span>Danh sách
			đề tài</a>
		<a href="yeu-cau-dang-nhap" class="list-group-item "><span
			class="pull-right"><i class="icon-chevron-right"></i></span>Báo cáo</a>
		<a href="yeu-cau-dang-nhap" class="list-group-item "><span
			class="pull-right"><i class="icon-chevron-right"></i></span>Thông tin
			cá nhân</a>
		<a href="yeu-cau-dang-nhap" class="list-group-item "><span
			class="pull-right"><i class="icon-chevron-right"></i></span>Xem kết
			quả</a>
		<a data-toggle="modal" href="yeu-cau-dang-nhap"
			class="list-group-item"><span class="pull-right"><i
				class="icon-chevron-right"></i></span>Hướng dẫn</a>
	</c:if>
	<c:if test="${sessionScope.user !=null }">
		<a href="<%=request.getContextPath() %>/${sessionScope.pages.getHomepage()}"
			class="list-group-item "><span class="pull-right"><i
				class="icon-chevron-right"></i></span>Trang Chủ</a>
		<a href="<%=request.getContextPath() %>/${sessionScope.pages.getListtopic()}"
			class="list-group-item "><span class="pull-right"><i
				class="icon-chevron-right"></i></span>Danh sách đề tài</a>
		<a href="<%=request.getContextPath() %>/${sessionScope.pages.getReport()}" class="list-group-item "><span
			class="pull-right"><i class="icon-chevron-right"></i></span>Báo cáo</a>
		<a href="<%=request.getContextPath() %>/${sessionScope.pages.getProfile()}" class="list-group-item "><span
			class="pull-right"><i class="icon-chevron-right"></i></span>Thông tin
			cá nhân</a>
		<a href="<%=request.getContextPath() %>/${sessionScope.pages.getViewresult()}"
			class="list-group-item "><span class="pull-right"><i
				class="icon-chevron-right"></i></span>Xem kết quả</a>
		<a data-toggle="modal" href="<%=request.getContextPath() %>/${sessionScope.pages.getGUIDE()}"
			class="list-group-item"><span class="pull-right"><i
				class="icon-chevron-right"></i></span>Hướng dẫn</a>
	</c:if>

	<hr />
</div>