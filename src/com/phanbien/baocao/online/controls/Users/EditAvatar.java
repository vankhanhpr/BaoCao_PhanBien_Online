package com.phanbien.baocao.online.controls.Users;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

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

/**
 * Servlet implementation class EditAvatar
 */
@WebServlet("/editavatar")
@MultipartConfig(maxFileSize = 16177215)
public class EditAvatar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditAvatar() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("404page.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		InputStream inputStream = null;
		Part filePart = request.getPart("photo");
		if (filePart != null) {
			// prints out some information for debugging
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());

			// obtains input stream of the upload file
			inputStream = filePart.getInputStream();
		}

		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		UserControl uControl = new UserControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", uControl.getConnectionPool());
		}
		
		HttpSession session = request.getSession();
		
		User curUser = (User) session.getAttribute("user");

		String username = curUser.getUsername();

		boolean changePass = uControl.ChangeAvatar(username, inputStream);
		if (!changePass) {
			response.getWriter().write("error");
			return;
		}

		try {
			curUser=uControl.InfoUser(username);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		session.setAttribute("user", curUser);

//		request.getRequestDispatcher("/thong-tin-ca-nhan/edit?update=success").Re(request, response);
			
		response.sendRedirect("/thong-tin-ca-nhan/edit?update=success");
		
		uControl.releaseConnection();

	}

}
