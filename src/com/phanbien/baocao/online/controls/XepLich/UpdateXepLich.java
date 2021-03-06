package com.phanbien.baocao.online.controls.XepLich;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phanbien.baocao.online.models.ThongBao.ThongBaoControl;
import com.phanbien.baocao.online.models.XepLich.XepLichControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.classes.Function;
import com.phanbien.baocao.online.utils.objectdatabase.*;

@WebServlet("/UpdateXepLich")
public class UpdateXepLich extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateXepLich() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			request.getRequestDispatcher("pages/404page.jsp").forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().write(request.getParameter("MaDT"));
		String MaDT=request.getParameter("MaDT");
		String TenDT=request.getParameter("TenDT");
		String NgayBaoCao=request.getParameter("ThoiGianBaoCao").split("/")[0];
		//response.getWriter().write(ThoiGianBaoCao);
		String ThoiGianBaoCao=request.getParameter("ThoiGianBaoCao").split("/")[1];
		String ThoiLuong=request.getParameter("ThoiLuong");
		String GVHD=request.getParameter("GVHD").split("-")[0];
		if(request.getParameter("PhanBien")==null){
			response.getWriter().write("error");
			return;
		}
		if(request.getParameter("UyVien")==null){
			response.getWriter().write("error");
			return;
		}
		String PhanBien=request.getParameter("PhanBien").split("-")[0];
		String UyVien=request.getParameter("UyVien").split("-")[0];
		
		
		
		int temp=Integer.parseInt(request.getParameter("ChuTich"));
		
		String ChuTich="";
		
		switch (temp) {
		case 1:
			ChuTich=GVHD;
			break;
		case 2:
			ChuTich=UyVien;
			break;
		case 3:
			ChuTich=PhanBien;
			break;
		default:
			break;
		}
		
		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		XepLichControl xlControl = new XepLichControl(cp);
		
		
		
		if (cp == null) {
			context.setAttribute("c_pool", xlControl.getConnectionPool());
		}
			
		boolean trangthai = xlControl.updateXepLich(MaDT, UyVien, PhanBien, ChuTich, NgayBaoCao, ThoiGianBaoCao, ThoiLuong);
		
		if(trangthai){
			response.getWriter().write("DanhSachDeTaiCanXepLich");
			
			ThongBaoControl tbControl=new ThongBaoControl(cp);
			
			 Function f=new Function();
			
			 ThongBao tb=new ThongBao();
			 tb.setNgay(f.toDate2AddDatabase(new Date()));
			 
			 System.out.print(TenDT);
			 
			 String TieuDe="Đề tài "+TenDT+" đã được xếp lịch";
			 tb.setTieuDe(TieuDe);
			 
			 String NoiDung="Ngày Báo Cáo: "+NgayBaoCao+"\n\n"+"Lúc: "+ThoiGianBaoCao+"\n\n"+"Thời lượng: "+ThoiLuong+"\n\n";
			 tb.setNoiDung(NoiDung);
			 
			 if(!tbControl.addThongBao(tb))
				 return;
			
		}else{
			response.getWriter().write("error");
		}
		xlControl.releaseConnection();
	}

}
