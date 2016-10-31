package com.phanbien.baocao.online.controls;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.phanbien.baocao.online.utils.objectdatabase.User;


@WebServlet("/avatar")
public class Avatar extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Avatar() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User curUser = (User) session.getAttribute("user");
		
		
		String imageName = curUser.getMaSo();
		System.out.print(imageName);
		byte[] imgData = null;
		Blob avatar=curUser.getAvatar();
		try {
			imgData = avatar.getBytes(1, (int) avatar.length());
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		System.out.println(imgData.toString());
		
		String contentType = this.getServletContext().getMimeType(imageName);
		
		response.setHeader("Content-Type", contentType);
	       
        response.setHeader("Content-Length", String.valueOf(imgData.length));
            
        response.setHeader("Content-Disposition", "inline; filename=\"" + curUser.getMaSo() + "\"");
        
        response.getOutputStream().write(imgData);

	}

}
