package com.phanbien.baocao.online.controls;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phanbien.baocao.online.models.ChiTietDeTai.ChiTietDeTaiControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.classes.Function;

@WebServlet("/Download")
public class Download extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Download() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		ServletContext context = getServletConfig().getServletContext();

		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");

		ChiTietDeTaiControl cthdControl = new ChiTietDeTaiControl(cp);

		if (cp == null) {
			context.setAttribute("c_pool", cthdControl.getConnectionPool());
		}

		String MaDeTai = request.getParameter("id") != null ? request.getParameter("id") : "";

		try {
			String FileName = cthdControl.getFileofTopic(MaDeTai);

			if (FileName.equals("")) {
				response.getWriter().println("File not found");
				return;
			}
			String filePath = new Function().getUploadPath() + File.separator + FileName;

			File urfile = new File(filePath);

			if (!urfile.exists()) {
				System.out.println("File not exist");
				return;
			}

			response.setContentType("application/octet-stream");
			response.setContentLength((int) urfile.length());
			response.setHeader( "Content-Disposition",
			         String.format("attachment; filename=\"%s\"", urfile.getName()));
			
			OutputStream out = null;
			FileInputStream in = null;
			try {
				out = response.getOutputStream();
				in = new FileInputStream(urfile);
				byte[] buffer = new byte[4096];
				int length;
				while ((length = in.read(buffer)) > 0) {
					out.write(buffer, 0, length);
				}
				
			} catch (Exception e) {

			} finally {
				in.close();

				out.flush();
			}

		} catch (Exception e) {

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
