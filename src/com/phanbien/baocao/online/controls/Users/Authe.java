package com.phanbien.baocao.online.controls.Users;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.phanbien.baocao.online.IPagePath;
import com.phanbien.baocao.online.models.Users.UserControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.classes.Page;
import com.phanbien.baocao.online.utils.objectdatabase.User;
import com.sun.net.httpserver.HttpContext;

@WebServlet("/login")


public class Authe extends HttpServlet  implements IPagePath{
	private static final long serialVersionUID = 1L;

	public Authe() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("404page.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String chucvu = request.getParameter("chucvu");
		
		

		System.out.print(username + password + chucvu);
		// Lấy Connectionpool có sẵn trong context: nếu có thì dùng ko có tạo  mới
		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		UserControl uControl = new UserControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", uControl.getConnectionPool());
		}

		User curUser = null;
		try {
			curUser = uControl.CheckLogin(username, password, chucvu);
		} catch (SQLException e) {

			e.printStackTrace();
		}

		uControl.releaseConnection();

		if (curUser == null) {
			response.getWriter().write("error");
		} else {
			response.getWriter().write("trang-chu");
			HttpSession session = request.getSession();
			 
			
			Page page = new Page();
			
			page.setHomepage(HOMEPAGE);
			page.setListtopic(LISTOPIC);
			page.setProfile(PROFILE);
			page.setReport(REPORT);
			page.setViewresult(VIEWRESULT);
			
			session.setAttribute("pages", page);
			
			session.setAttribute("user", curUser);
			
			
		}
	}
}
