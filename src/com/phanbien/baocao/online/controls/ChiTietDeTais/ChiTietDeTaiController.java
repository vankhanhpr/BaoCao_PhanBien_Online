package com.phanbien.baocao.online.controls.ChiTietDeTais;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.phanbien.baocao.online.models.ChiTietDeTai.ChiTietDeTaiControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.ChiTietDeTai;

/**
 * Servlet implementation class ChiTietDeTaiController
 */
@WebServlet("/show-chi-tiet")
public class ChiTietDeTaiController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ChiTietDeTaiController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		ChiTietDeTaiControl ctdtControl = new ChiTietDeTaiControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", ctdtControl.getConnectionPool());
		}
		
		
		String MaDeTai=(request.getParameter("id")) != null ? request.getParameter("id"):"";
		
		ChiTietDeTai ctdt=null;
		
		try {
			ctdt=ctdtControl.getChiTietDeTai(MaDeTai);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ctdtControl.releaseConnection();
		
		Gson gson=new Gson();
		String json=gson.toJson(ctdt);
		
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(json);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
