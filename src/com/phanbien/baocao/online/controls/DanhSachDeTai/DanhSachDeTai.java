package com.phanbien.baocao.online.controls.DanhSachDeTai;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.phanbien.baocao.online.models.DanhSachDeTai.DanhSachDeTaiControl;
import com.phanbien.baocao.online.models.ThongBao.ThongBaoControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.DeTaiSV;
import com.phanbien.baocao.online.utils.objectdatabase.ThongBao;
import com.phanbien.baocao.online.utils.objectdatabase.*;
@WebServlet("/danh-sach-de-tai")
public class DanhSachDeTai extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DanhSachDeTai() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		HttpSession session=request.getSession();
		int chucvu=Integer.parseInt(((User)session.getAttribute("user")).getChucVu());
		switch (chucvu) {
		case 1:
			doShowDanhSachDeTai_SV(request, response);
			break;
		case 2:
			doShowDanhSachDeTai_GV_TK(request, response);
			break;
		case 3:
			doShowDanhSachDeTai_GV_TK(request, response);
		default:
			break;
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}
	private void doShowDanhSachDeTai_SV(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		DanhSachDeTaiControl dsControl = new DanhSachDeTaiControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", dsControl.getConnectionPool());
		}
		DeTaiSV detai = null;
		
		DeTaiSV gvhd = null;
		DeTaiSV uyvien = null;
		DeTaiSV gvpb = null;
		DeTaiSV chutich = null;
		String nhanxet="";
		HttpSession session=request.getSession();
		
		String MaSo=((User)session.getAttribute("user")).getMaSo();
		try {
			detai = dsControl.ChiTietDeTaiSV(MaSo);
			gvhd = dsControl.TenGVHD(detai.getMaDT());
			uyvien = dsControl.TenUyVien(detai.getMaDT());
			gvpb = dsControl.TenGVPB(detai.getMaDT());
			chutich = dsControl.TenChuTich(detai.getMaDT());
			nhanxet=dsControl.getNhanXetTruocBC(detai.getMaDT());
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		dsControl.releaseConnection();
		request.setAttribute("detai", detai);
		request.setAttribute("gvhd", gvhd);
		request.setAttribute("uyvien", uyvien);
		request.setAttribute("gvpb", gvpb);
		request.setAttribute("chutich", chutich);	
		request.setAttribute("nhanxet", nhanxet);	
		request.getRequestDispatcher("pages/danh-sach-de-tai.jsp").forward(request, response);
	}
	private void doShowDanhSachDeTai_GV_TK(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		DanhSachDeTaiControl dsControl = new DanhSachDeTaiControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", dsControl.getConnectionPool());
		}
		
		ArrayList<DeTaiGV_TK>  gvhd = null;
		ArrayList<DeTaiGV_TK> uyvien = null;
		ArrayList<DeTaiGV_TK> gvpb = null;
		
		HttpSession session=request.getSession();
		
		String MaSo=((User)session.getAttribute("user")).getMaSo();
		try {
			gvhd=dsControl.DanhSachDeTaiChucVuHuongDan(MaSo);
			uyvien=dsControl.DanhSachDeTaiChucVuUyvien(MaSo);
			gvpb=dsControl.DanhSachDeTaiChucVuPhanBien(MaSo);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		//------------------
		dsControl.releaseConnection();
		request.setAttribute("gvhd", gvhd);
		request.setAttribute("uyvien", uyvien);
		request.setAttribute("gvpb", gvpb);
		request.getRequestDispatcher("pages/danh-sach-de-tai.jsp").forward(request, response);
	}
}
