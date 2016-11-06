<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<table class="table" data-page-size="5">
	<!--COLUMN-->
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên Đề Tài</th>
			<th>Thời Gian</th>
			<th>Chức Vụ</th>
			<th data="phone,tablet">Xét duyệt</th>
			<th data-hide="phone,tablet">Số lượng SV</th>
			<th data-hide="phone,tablet">Trạng thái</th>
			<th data-hide="phone,tablet">Hội đồng</th>
			<th data-hide="phone,tablet">Chi tiết</th>

		</tr>
	</thead>
	<!--END COLUMN-->
	<%
		int i = 1;
	%>
	<c:forEach var="hd" items="${requestScope.gvhd}">
		<!--ROW-->
		<tbody>
			<tr>
				<td><span class="text-info"><%=i++%></span></td>
				<td>${hd.getTenDeTai()}</td>
				<td>${hd.getNgayBaoCao()}/${hd.getThoiGianBaoCao()}</td>
				<td>GVHD</td>
				<td>
					<c:choose>
						<c:when test="${hd.getTrangThai()=='Xét duyệt'}">
							<a target="_blank" href="#"class="btn btn-danger btn-xs disabled">Xét duyệt </a>
						</c:when>
						<c:otherwise>
							<a target="_blank" href="#"class="btn btn-success btn-xs">Chưa xét duyệt</a>
						</c:otherwise>
					</c:choose>
					
				</td>
				<td>${hd.getSoLuongSV()}</td>
				<td>
					<table class="table" data-page-size="5">
						<thead>
							<tr>
								<th>Chức vụ</th>
								<th>Giảng viên</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Ủy viên</td>
								<td>${hd.getUyVien()}</td>
							</tr>
							<tr>
								<td>Giáo viên hướng dẫn</td>
								<td>${hd.getGiangVienHD()}</td>
							</tr>
							<tr>
								<td>Phản biện</td>
								<td>${hd.getGiangVienPB()}</td>
							</tr>
							<tr>
								<td>Chủ Tịch</td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</td>
				<td><a target="_blank" href="chi-tiet-de-tai-1.jsp"
					class="btn btn-success btn-xs">Chi tiết</a></td>
			</tr>
		</tbody>
		<!--END ROW-->

	</c:forEach>

	<c:forEach var="uv" items="${requestScope.uyvien}">
		<!--ROW-->
		<tbody>
			<tr>
				<td><span class="text-info"><%=i++%></span></td>
				<td>${uv.getTenDeTai()}</td>
				<td>${uv.getNgayBaoCao()}/${uv.getThoiGianBaoCao()}</td>
				<td>Ủy Viên</td>
				<td>
					<c:choose>
						<c:when test="${uv.getTrangThai()=='Xét duyệt'}">
							<a target="_blank" href="#"class="btn btn-danger btn-xs disabled">Xét duyệt </a>
						</c:when>
						<c:otherwise>
							<a target="_blank" href="#"class="btn btn-success btn-xs">Chưa xét duyệt</a>
						</c:otherwise>
					</c:choose>
				</td>
				<td>${uv.getSoLuongSV()}</td>
				<td>
					<table class="table" data-page-size="5">
						<thead>
							<tr>
								<th>Chức vụ</th>
								<th>Giảng viên</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Ủy Viên</td>
								<td>${uv.getUyVien()}</td>
							</tr>
							<tr>
								<td>Giáo viên hướng dẫn</td>
								<td>${uv.getGiangVienHD()}</td>
							</tr>
							<tr>
								<td>Phản biện</td>
								<td>${uv.getGiangVienPB()}</td>
							</tr>
							<tr>
								<td>Chủ Tịch</td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</td>
				<td><a target="_blank" href="chi-tiet-de-tai-1.jsp"
					class="btn btn-success btn-xs">Chi tiết</a></td>
			</tr>
		</tbody>
		<!--END ROW-->

	</c:forEach>

	<c:forEach var="pb" items="${requestScope.gvpb}">
		<!--ROW-->
		<tbody>
			<tr>
				<td><span class="text-info"><%=i++%></span></td>
				<td>${pb.getTenDeTai()}</td>
				<td>${pb.getNgayBaoCao()}/${pb.getThoiGianBaoCao()}</td>
				<td>Phản Biện</td>
				<td>
					<c:choose>
						<c:when test="${pb.getTrangThai()=='Xét duyệt'}">
							<a target="_blank" href="#"class="btn btn-danger btn-xs disabled">Xét duyệt </a>
						</c:when>
						<c:otherwise>
							<a target="_blank" href="#"class="btn btn-success btn-xs">Chưa xét duyệt</a>
						</c:otherwise>
					</c:choose>				
				</td>
				
				<td>${pb.getSoLuongSV()}</td>
				<td>
					<table class="table" data-page-size="5">
						<thead>
							<tr>
								<th>Chức vụ</th>
								<th>Giảng viên</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Ủy Viên</td>
								<td>${pb.getUyVien()}</td>
							</tr>
							<tr>
								<td>Giáo viên hướng dẫn</td>
								<td>${pb.getGiangVienHD()}</td>
							</tr>
							<tr>
								<td>Phản biện</td>
								<td>${pb.getGiangVienPB()}</td>
							</tr>
							<tr>
								<td>Chủ Tịch</td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</td>
				<td><a target="_blank" href="chi-tiet-de-tai-1.jsp"
					class="btn btn-success btn-xs">Chi tiết</a></td>
			</tr>
		</tbody>
		<!--END ROW-->

	</c:forEach>
	<!--PAGE NUMBER-->
	<tfoot>
		<tr>
			<td colspan="6">
				<div class="pagination pagination-centered">
					<ul class="pagination">
						<li class="active"><a>1</a></li>
						<li><a href="2.html">2</a></li>
						<li><a href="3.html">3</a></li>
						<li><a href="5.html">&raquo;</a></li>
					</ul>
				</div>
			</td>
		</tr>
	</tfoot>
	<!--END PAGE NUMBER-->
</table>