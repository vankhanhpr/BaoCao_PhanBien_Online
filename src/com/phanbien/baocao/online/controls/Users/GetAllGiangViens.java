package com.phanbien.baocao.online.controls.Users;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phanbien.baocao.online.models.DanhSachDeTai.DanhSachDeTaiControl;
import com.phanbien.baocao.online.models.Users.UserControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.DeTaiGV_TK;
import com.phanbien.baocao.online.utils.objectdatabase.User;

/**
 * Servlet implementation class GetAllGiangViens
 */
@WebServlet("/danh-sach-giang-vien")
public class GetAllGiangViens extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetAllGiangViens() {
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

		UserControl uControl = new UserControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", uControl.getConnectionPool());
		}
		
		ArrayList<User>  dsu = null;
		try{
			
			dsu=uControl.getListGiangVien();
		}catch(Exception ex){
			
		}
		
		request.setAttribute("dsu", dsu);
		request.getRequestDispatcher("pages/danh-sach-giang-vien.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
