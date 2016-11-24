package com.phanbien.baocao.online.controls.Users;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phanbien.baocao.online.models.Users.UserControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.User;
import com.phanbien.baocao.online.utils.classes.*;

@WebServlet("/ForgotPassword")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ForgotPassword() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=request.getParameter("username");
		String email=request.getParameter("email");
		
		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		UserControl uControl = new UserControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", uControl.getConnectionPool());
		}
		User currentUser=null;
		try {
			currentUser=uControl.InfoUser(user);
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
		if(currentUser==null){
			response.getWriter().write("error");
			return;
		}
		if(currentUser.getEmail().equals(email)){
			//SendMail
			System.out.print("Email OK");
			Function f=new Function();
			if(!f.SendMail(email,currentUser.getUsername(),currentUser.getPassword())){
				response.getWriter().write("error");
				return;
			}
			response.getWriter().write("trang-chu");
		}else{
			response.getWriter().write("error");
			return;
		}
		
		
		
	}

}
