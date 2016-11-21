package com.phanbien.baocao.online.controls.XepLich;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phanbien.baocao.online.models.DanhSachDeTai.DanhSachDeTaiControl;
import com.phanbien.baocao.online.models.XepLich.XepLichControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.DS_GiangVien;
import com.phanbien.baocao.online.utils.objectdatabase.XepLich_DT;


@WebServlet("/xep-lich")
public class XepLich extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public XepLich() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		XepLichControl xlControl = new XepLichControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", xlControl.getConnectionPool());
		}
		String MaDT=(request.getParameter("id")) != null ? request.getParameter("id"):"";
		XepLich_DT xldt=null;
		
		try {
			xldt=xlControl.getChiTietXepLich(MaDT);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		xlControl.releaseConnection();
		
		request.setAttribute("xldt", xldt);
		
		request.getRequestDispatcher("pages/xep-lich1.jsp").forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
