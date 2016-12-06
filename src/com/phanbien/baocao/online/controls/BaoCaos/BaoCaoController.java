package com.phanbien.baocao.online.controls.BaoCaos;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.phanbien.baocao.online.models.BaoCao.BaoCaoControl;

import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.User;


@WebServlet("/bao-cao")
public class BaoCaoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BaoCaoController() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		String MaSo = ((User) session.getAttribute("user")).getMaSo();
		String ChucVu=((User) session.getAttribute("user")).getChucVu();
		
		ServletContext context = getServletConfig().getServletContext();
		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");
		
		BaoCaoControl bcControl = new BaoCaoControl(cp);
		if (cp == null) {
			context.setAttribute("c_pool", bcControl.getConnectionPool());
		}
		String MaDeTai="";
		String TenDeTai="";
		String NgayBaoCao="";
		String ThoiGianBC="";
		String MaChuTich="";
		try{
			ResultSet rs= bcControl.Authentication(MaSo, ChucVu);
			if(rs==null){
				request.getRequestDispatcher("pages/bao-cao-error.jsp").forward(request, response);
				return;
			}
			if(rs.next()){
				MaDeTai=rs.getString("MaDeTai");
				TenDeTai=rs.getString("TenDeTai");
				NgayBaoCao=rs.getDate("NgayBaoCao").toString();
				ThoiGianBC=rs.getTime("ThoiGianBC").toString();
				MaChuTich=rs.getString("MaChuTich");		
			}
			else{
				request.getRequestDispatcher("pages/bao-cao-error.jsp").forward(request, response);
				return;
			}
			request.setAttribute("madetai",MaDeTai);
			request.setAttribute("tendetai", TenDeTai);
			request.setAttribute("ngaybaocao", NgayBaoCao);
			request.setAttribute("thoigianbaocao", ThoiGianBC);
			request.setAttribute("machutich", MaChuTich);	
			request.getRequestDispatcher("pages/bao-cao.jsp").forward(request, response);
			
		}catch(Exception ex){}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String madetai=request.getParameter("madetai");
		double diem=Double.parseDouble(request.getParameter("diem"));
		String nhanxet=request.getParameter("nhanxet");
		System.out.print(nhanxet);
		
		ServletContext context = getServletConfig().getServletContext();
		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");
		
		BaoCaoControl bcControl = new BaoCaoControl(cp);
		if (cp == null) {
			context.setAttribute("c_pool", bcControl.getConnectionPool());
		}
		HttpSession session = request.getSession();
		String MaSo = ((User) session.getAttribute("user")).getMaSo();
		
		String data=bcControl.ToMarK(madetai, MaSo, diem, nhanxet) ?"success":"error";
		
		response.getWriter().write(data);
		
	}
	
		
}
