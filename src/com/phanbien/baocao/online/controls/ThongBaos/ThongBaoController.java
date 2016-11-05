package com.phanbien.baocao.online.controls.ThongBaos;

import java.io.IOException;
import java.io.PrintWriter;
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

import org.apache.catalina.connector.Request;

import com.phanbien.baocao.online.models.ThongBao.ThongBaoControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.classes.Function;
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

	// Add ThongBao
	// Function f=new Function();
	//
	// ThongBao tt=new ThongBao();
	// tt.setNgay(f.toDate2AddDatabase(new Date()));
	// tt.setTieuDe("TiÃªu Ä‘á»� má»›i");
	// tt.setNoiDung("ná»™i dá»¥ng má»›i");
	//
	// if(tbControl.addThongBao(tt)){
	// System.out.println("success");
	// }else System.out.println("fails");

	int newestTB=0;
	private void showThongBao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		ThongBaoControl tbControl = new ThongBaoControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", tbControl.getConnectionPool());
		}
//		for (int i = 0; i < 20; i++) {
//			Function f = new Function();
//
//			ThongBao tt = new ThongBao();
//			tt.setNgay(f.toDate2AddDatabase(new Date()));
//			tt.setTieuDe("Tiêu đề mới");
//			tt.setNoiDung("Nội dung mới");
//
//			if (tbControl.addThongBao(tt)) {
//				System.out.println("success");
//			} else
//				System.out.println("fails");
//		}

		int page = 1;
		int startFromPage = 1;
		int recordPerPage = 6;
		int numOfThongBao = -1;
		int numOfPage = -1;
		if (request.getParameter("page") != null) {

			page = Integer.parseInt(request.getParameter("page"));
			startFromPage = (page - 1) * recordPerPage;
		}
		ArrayList<ThongBao> thongbaos = null;

		try {
			thongbaos = tbControl.getThongBao(startFromPage, recordPerPage);

			numOfThongBao = tbControl.getCountThongBao();

			numOfPage = (int) Math.ceil(numOfThongBao * 1.0 / recordPerPage);
		} catch (SQLException e) {

			e.printStackTrace();
		}

		tbControl.releaseConnection();
		if(!thongbaos.isEmpty()){
			request.setAttribute("thongbaos", thongbaos);
			request.setAttribute("curPage", page);
			request.setAttribute("numOfPage", numOfPage);
			
			int temp=Integer.parseInt(thongbaos.get(0).getMaThongBao());
			if(temp>=newestTB){
				newestTB=temp;
			}
			request.getServletContext().setAttribute("newestTB",newestTB);
		}
		
		
		
		request.getRequestDispatcher("pages/trang-chu.jsp").forward(request, response);
	}
}
