package com.phanbien.baocao.online.controls.XetDuyetDeTai;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phanbien.baocao.online.models.XetDuyetDeTai.XetDuyetDeTaiControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.User;
import com.phanbien.baocao.online.utils.objectdatabase.XD_DeTai;

import javafx.scene.control.Alert;

@WebServlet("/XuLyXetDuyet")
public class XuLyXetDuyet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public XuLyXetDuyet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		ServletContext context = getServletConfig().getServletContext();
		String MaDT = (String) context.getAttribute("maDT");
		
		boolean check=request.getParameterValues("nopbaocao")!=null;
		
		String nhanXet=request.getParameter("nhanxetDT");
		
		System.out.println(nhanXet);
		PrintWriter writer = response.getWriter();
		if(nhanXet.equals("")){
			
			writer.println("Hãy điền tóm tắt vào!");	
			return;
		}
		String TrangThaiSV="";
		if(check){
			TrangThaiSV="Được báo cáo";
		}
		else{
			TrangThaiSV="Không được báo cáo";
		}
		
		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");
		XetDuyetDeTaiControl ctdtControl = new XetDuyetDeTaiControl(cp);
		if (cp == null) {
			context.setAttribute("c_pool", ctdtControl.getConnectionPool());
		}
		XetDuyetDeTaiControl xddt=new XetDuyetDeTaiControl(cp);
		
		boolean trangthai=xddt.updateKhiXetDuyet_DeTai(MaDT, nhanXet, "Xét duyệt", TrangThaiSV);
		if(trangthai){
			response.sendRedirect("danh-sach-de-tai");
		}
		else{
			writer.println("Không thể xét duyệt!");
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
