package com.phanbien.baocao.online.controls.DanhSachDeTaiCanXepLich;

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
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.User;
import com.phanbien.baocao.online.utils.objectdatabase.XD_DeTai;

@WebServlet("/DanhSachDeTaiCanXepLich")
public class DanhSachDeTaiCanXepLich extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DanhSachDeTaiCanXepLich() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		User curUser=((User)request.getSession().getAttribute("user"));
		
		if(curUser==null)
		{
			request.getRequestDispatcher("pages/404page.jsp").forward(request, response);
			return;
		}
		String cv=curUser.getChucVu();
		if(!cv.equals("3")){
			request.getRequestDispatcher("pages/404page.jsp").forward(request, response);
			return;
		}
		
		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		DanhSachDeTaiControl dsControl = new DanhSachDeTaiControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", dsControl.getConnectionPool());
		}
		
		ArrayList<XD_DeTai> xeplich=null;
		try {
			xeplich=dsControl.DanhSachDeTaiCanXepLich();	
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		dsControl.releaseConnection();
		request.setAttribute("xeplich", xeplich);
		request.getRequestDispatcher("pages/danh-sach-de-tai-can-xep-lich.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
