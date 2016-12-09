package com.phanbien.baocao.online.controls.DanhSachDeTai;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phanbien.baocao.online.models.DanhSachDeTai.DanhSachDeTaiControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.DeTaiGV_TK;
import com.phanbien.baocao.online.utils.objectdatabase.User;


@WebServlet("/danh-sach-tat-ca-de-tai")
public class AllDanhSachDeTai extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AllDanhSachDeTai() {
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

		DanhSachDeTaiControl dsdtControl = new DanhSachDeTaiControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", dsdtControl.getConnectionPool());
		}
		
		ArrayList<DeTaiGV_TK>  dsdt = null;
		try{
			
			dsdt=dsdtControl.getAllDanhSachDeTai();
		}catch(Exception ex){
			
		}
		
		request.setAttribute("dsdt", dsdt);
		request.getRequestDispatcher("pages/danh-sach-tat-ca-de-tai.jsp").forward(request, response);
			
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
