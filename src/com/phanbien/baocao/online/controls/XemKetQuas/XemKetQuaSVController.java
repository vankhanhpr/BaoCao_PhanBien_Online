package com.phanbien.baocao.online.controls.XemKetQuas;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.phanbien.baocao.online.models.XemKetQua.XemKQSinhVienControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.User;
import com.phanbien.baocao.online.utils.objectdatabase.XemKetQuaSV;
import com.sun.org.apache.regexp.internal.recompile;

@WebServlet("/xem-ket-qua")
public class XemKetQuaSVController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public XemKetQuaSVController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		
		
		HttpSession session = request.getSession();

		User currentUser = (User) session.getAttribute("user");

		String maso = currentUser.getMaSo();
		String chucvu = currentUser.getChucVu();

		switch (chucvu) {
		case "1":
			doXemKetQua_SV(maso, request, response);
			break;
		case "2":
		case "3":
			// doXemKetQua_GV
			break;
		default:
			break;
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	private void doXemKetQua_SV(String MaSo, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		XemKQSinhVienControl xkqControl = new XemKQSinhVienControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", xkqControl.getConnectionPool());
		}

		XemKetQuaSV xemkq = null;
		try {
			xemkq = xkqControl.getKetQuaSinhVien(MaSo);

		} catch (SQLException e) {

		}
		xkqControl.releaseConnection();

		System.out.print(xemkq.getHoiDong().getDiemGVHD());
		request.setAttribute("xemketqua", xemkq);
		request.getRequestDispatcher("pages/xem-ket-qua.jsp").forward(request, response);
	}

}
