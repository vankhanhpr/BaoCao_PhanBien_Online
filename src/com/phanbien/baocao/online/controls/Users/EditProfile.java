package com.phanbien.baocao.online.controls.Users;

import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.phanbien.baocao.online.models.Users.UserControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.User;

@WebServlet("/editprofile")

public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EditProfile() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("pages/404page.jsp").forward(request, response);
	}

	String hoten;
	String ngaysinh;
	String diachi;
	String sdt;
	String oldpassword;
	String newpassword;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		oldpassword = request.getParameter("oldpassword");
		newpassword = request.getParameter("newpassword");

			System.out.print(oldpassword+newpassword);
		
		if (oldpassword == null && newpassword == null)
			ChangeProfile(request, response);
		if (oldpassword != null && newpassword != null) {
			ChangePassword(request, response);
		}

	}

	private void ChangePassword(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		UserControl uControl = new UserControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", uControl.getConnectionPool());
		}
		HttpSession session = request.getSession();
		User curUser = (User) session.getAttribute("user");

		String username = curUser.getUsername();

		boolean changePass = uControl.ChangePassword(username, oldpassword, newpassword);
		if (!changePass) {
			response.getWriter().write("error");
			return;
		}

		response.getWriter().write("edit?update=success");

		session.setAttribute("user", curUser);

		uControl.releaseConnection();
	}

	

	private void ChangeProfile(HttpServletRequest request, HttpServletResponse response) throws IOException {
		/* Ä�á»•i thÃ´ng tin cÆ¡ báº£n */
		hoten = request.getParameter("hoten");
		ngaysinh = request.getParameter("ngaysinh");
		diachi = request.getParameter("diachi");
		sdt = request.getParameter("sdt");

		System.out.print(hoten + ngaysinh + diachi);
		
		if (Validate()) {
			ServletContext context = getServletConfig().getServletContext();

			ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

			UserControl uControl = new UserControl(cp);

			if (cp == null) {
				context.setAttribute("c_pool", uControl.getConnectionPool());
			}
			HttpSession session = request.getSession();
			User curUser = (User) session.getAttribute("user");

			curUser.setHoTen(hoten);
			curUser.setNgaySinh(ngaysinh);
			curUser.setDiaChi(diachi);
			curUser.setSDT(sdt);

			boolean updateUser = uControl.UpdateUser(curUser);
			if (!updateUser) {
				//response.getWriter().write("edit?update=error");
				return;
			}

			session.setAttribute("user", curUser);

			response.getWriter().write("edit?update=success");

			uControl.releaseConnection();

		} else {
			response.getWriter().write("edit?update=error");
			return;
		}
	}

	private boolean Validate() {
		if (hoten.equals("") || ngaysinh.equals("") || diachi.equals("") || sdt.equals(""))
			return false;
		if (!sdt.matches("[0-9]+"))
			return false;
		try {
			Date ns = new SimpleDateFormat("yyyy-MM-dd").parse(ngaysinh);
			if (new Date().before(ns))
				return false;
		} catch (Exception e) {

		}

		return true;
	}

}
