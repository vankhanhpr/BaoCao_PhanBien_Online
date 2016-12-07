package com.phanbien.baocao.online.controls.XemKetQuas;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.phanbien.baocao.online.models.XemKetQua.XemKQGiangVienControl;
import com.phanbien.baocao.online.models.XemKetQua.XemKQSinhVienControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.User;
import com.phanbien.baocao.online.utils.objectdatabase.XemKetQuaSV;
import com.sun.org.apache.regexp.internal.recompile;

@WebServlet("/xem-ket-qua")
public class XemKetQuaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public XemKetQuaController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();

		User currentUser = (User) session.getAttribute("user");

		String maso = currentUser.getMaSo();
		int chucvu =Integer.parseInt( currentUser.getChucVu());

		switch (chucvu) {
		case 1:
			doXemKetQua_SV(maso, request, response);
			break;
		case 2:
		case 3:
			doXemKetQua_GV(maso, request, response);
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
		if(xemkq==null){
			request.getRequestDispatcher("pages/xem-ket-qua-error.jsp").forward(request, response);
			return;
		}
		request.setAttribute("xemketqua", xemkq);
		request.getRequestDispatcher("pages/xem-ket-qua.jsp").forward(request, response);
	}

	private void doXemKetQua_GV(String MaSo, HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		XemKQGiangVienControl xkqControl = new XemKQGiangVienControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", xkqControl.getConnectionPool());
		}

		ArrayList<XemKetQuaSV> xemkq = null;
		try {
			xemkq = xkqControl.getKetQuaGiangVien(MaSo);

		} catch (SQLException e) {

		}
		xkqControl.releaseConnection();
		request.setAttribute("xemketquagv", xemkq);
		request.getRequestDispatcher("pages/xem-ket-qua.jsp").forward(request, response);
	}
}
