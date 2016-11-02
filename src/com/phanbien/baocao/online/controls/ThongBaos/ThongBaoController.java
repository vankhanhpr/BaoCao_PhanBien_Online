package com.phanbien.baocao.online.controls.ThongBaos;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phanbien.baocao.online.models.ThongBao.ThongBaoControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.ThongBao;

/**
 * Servlet implementation class ThongBaoController
 */
@WebServlet("/trang-chu")
public class ThongBaoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ThongBaoController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		showThongBao(request, response);
	}
		//Add ThongBao
//		Function f=new Function();
//
//		ThongBao tt=new ThongBao();
//		tt.setNgay(f.toDate2AddDatabase(new Date()));
//		tt.setTieuDe("Tiêu đề mới");
//		tt.setNoiDung("nội dụng mới");
//		
//		if(tbControl.addThongBao(tt)){
//			System.out.println("success");
//		}else System.out.println("fails");
	

	private void showThongBao(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		ThongBaoControl tbControl = new ThongBaoControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", tbControl.getConnectionPool());
		}
		ArrayList<ThongBao> thongbaos = null;
		try {
			thongbaos = tbControl.getAllThongBao();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		request.setAttribute("thongbaos", thongbaos);
		request.setAttribute("newestTB", thongbaos.get(0).getMaThongBao());
		request.getRequestDispatcher("pages/trang-chu.jsp").forward(request, response);
	}
}
