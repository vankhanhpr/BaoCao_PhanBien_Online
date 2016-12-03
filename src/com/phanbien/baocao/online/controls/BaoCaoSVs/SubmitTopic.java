package com.phanbien.baocao.online.controls.BaoCaoSVs;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.phanbien.baocao.online.models.DanhSachDeTai.DanhSachDeTaiControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.classes.Function;
import com.phanbien.baocao.online.utils.objectdatabase.DeTaiSV;
import com.phanbien.baocao.online.utils.objectdatabase.User;

/**
 * Servlet implementation class SubmitTopic
 */
@WebServlet("/SubmitTopic")
@MultipartConfig(maxFileSize = 16177215)
public class SubmitTopic extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static String UPLOAD_DIRECTORY;
	// private static final String UPLOAD_DIRECTORY =
	// "D:\\PROGRAMING\\Eclipse_Project_2\\BaoCao_PhanBien_Online\\WebContent\\users\\avatar";

	// upload settings
	private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3; // 3MB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB

	public SubmitTopic() {
		super();

		UPLOAD_DIRECTORY =new Function().getUploadPath();
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("404page.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		if (!ServletFileUpload.isMultipartContent(request)) {
			// if not, we stop here
			PrintWriter writer = response.getWriter();
			writer.println("Error: Form must has enctype=multipart/form-data.");
			writer.flush();
			return;
		}

		// configures upload settings
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// sets memory threshold - beyond which files are stored in disk
		factory.setSizeThreshold(MEMORY_THRESHOLD);
		// sets temporary location to store files
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

		ServletFileUpload upload = new ServletFileUpload(factory);

		// sets maximum size of upload file
		upload.setFileSizeMax(MAX_FILE_SIZE);

		// sets maximum size of request (include file + form data)
		upload.setSizeMax(MAX_REQUEST_SIZE);

		// constructs the directory path to store upload file
		// this path is relative to application's directory

		// String uploadPath = getServletContext().getRealPath("")
		// + File.separator + UPLOAD_DIRECTORY;
		String uploadPath = UPLOAD_DIRECTORY;


		// creates the directory if it does not exist
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		String fileName = "";
		String tomTat="";
		try {
			// parses the request's content to extract file data
			@SuppressWarnings("unchecked")
			List<FileItem> formItems = upload.parseRequest(request);

			if (formItems != null && formItems.size() > 0) {
				// iterates over form's fields
				for (FileItem item : formItems) {
					// processes only fields that are not form fields
					if (!item.isFormField()) {
						///Type File
						fileName = new File(item.getName()).getName();
						String filePath = uploadPath + File.separator + fileName;
						File storeFile = new File(filePath);

						System.out.println(filePath);
						// saves the file on disk
						item.write(storeFile);
					} else {
						//Type # file
						
						String fieldvalue = item.getString();

						tomTat=new String (fieldvalue.getBytes ("iso-8859-1"), "UTF-8");
					}
				}
			}
		} catch (Exception ex) {
			request.setAttribute("message", "There was an error: " + ex.getMessage());
		}

		HttpSession session = request.getSession();
		String MaSV = ((User) session.getAttribute("user")).getMaSo();

		String MaDT=null;
		
		ServletContext context = getServletConfig().getServletContext();
		ConnectionPool cp = (ConnectionPool) context.getAttribute("c_pool");
		
		DanhSachDeTaiControl dsControl = new DanhSachDeTaiControl(cp);
		if (cp == null) {
			context.setAttribute("c_pool", dsControl.getConnectionPool());
		}
		
		DeTaiSV detai = null;
		try {
			detai = dsControl.ChiTietDeTaiSV(MaSV);
			MaDT=detai.getMaDT();
			boolean trangthai=dsControl.SaveFormBaoCao(MaDT, fileName, tomTat, "Đã nộp");
			if(trangthai){
				response.getWriter().write("danh-sach-de-tai?submit=success");
			}
			else{
				response.getWriter().write("error");
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		// request.getRequestDispatcher("/thong-tin-ca-nhan/edit").forward(request,
		// response);
	}

}
