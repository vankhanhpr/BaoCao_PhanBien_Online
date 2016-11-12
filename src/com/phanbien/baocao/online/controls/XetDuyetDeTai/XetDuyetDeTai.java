package com.phanbien.baocao.online.controls.XetDuyetDeTai;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phanbien.baocao.online.models.ChiTietDeTai.ChiTietDeTaiControl;
import com.phanbien.baocao.online.models.XetDuyetDeTai.XetDuyetDeTaiControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.NhomSV;
import com.phanbien.baocao.online.utils.objectdatabase.XD_DeTai;

@WebServlet("/XetDuyetDeTai")
public class XetDuyetDeTai extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public XetDuyetDeTai() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		XetDuyetDeTaiControl ctdtControl = new XetDuyetDeTaiControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", ctdtControl.getConnectionPool());
		}
		
		XetDuyetDeTaiControl xddt=new XetDuyetDeTaiControl(cp);
		String MaDeTai=(request.getParameter("id")) != null ? request.getParameter("id"):"";
		//Lưu mã đề tài để qua bên sevrlet XuLyXetDuyet dùng
		context.setAttribute("maDT", MaDeTai);
		XD_DeTai xd=null;
		ArrayList<NhomSV> nsv=null;
		try{
			xd=ctdtControl.getDeTaiXetDuyet(MaDeTai);
			nsv=ctdtControl.getNhomSV(MaDeTai);
			
		}catch (SQLException e) {
			
			e.printStackTrace();
		}
		ctdtControl.releaseConnection();
		request.setAttribute("xd", xd);
		request.setAttribute("nsv", nsv);
		request.getRequestDispatcher("pages/xet-duyet-de-tai.jsp").forward(request, response);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
