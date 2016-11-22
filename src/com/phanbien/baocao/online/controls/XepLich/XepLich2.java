package com.phanbien.baocao.online.controls.XepLich;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phanbien.baocao.online.models.XepLich.XepLichControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.DS_GiangVien;
import com.phanbien.baocao.online.utils.objectdatabase.XepLich_DT;

@WebServlet("/XepLich2")
public class XepLich2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public XepLich2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String MaDT=request.getParameter("maDT");
		String TenDT=request.getParameter("tenDT");
		String ThoiGianBaoCao=request.getParameter("thoigianBC");
		String ThoiLuong=request.getParameter("tluong");
		
		
		String[] temp=ThoiGianBaoCao.split("/");
		
		//long ds=Conver(ThoiGianBaoCao);
		
		
		//response.getWriter().write(MaDT+TenDT+ThoiGianBaoCao+ThoiLuong);
		
		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		XepLichControl xlControl = new XepLichControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", xlControl.getConnectionPool());
		}
		ArrayList<DS_GiangVien> dsgv=null;
		XepLich_DT xldt =null;
		try {
			dsgv=xlControl.getDS_GiangVien(temp[0], temp[1], ThoiLuong);
			xldt=xlControl.getChiTietXepLich(MaDT);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("dsgv", dsgv);
		request.setAttribute("ThoiGianBC", ThoiGianBaoCao);
		request.setAttribute("ThoiLuong", ThoiLuong);
		request.setAttribute("MaDT", MaDT);
		request.setAttribute("TenDT", TenDT);
		request.setAttribute("xldt", xldt);
		request.getRequestDispatcher("pages/xep-lich2.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
