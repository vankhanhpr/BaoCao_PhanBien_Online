package com.phanbien.baocao.online.controls;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import com.phanbien.baocao.online.models.Users.UserControl;
import com.phanbien.baocao.online.utils.DB.ConnectionPool;
import com.phanbien.baocao.online.utils.objectdatabase.User;

/**
 * A Java servlet that handles file upload from client.
 *
 * @author www.codejava.net
 */
@WebServlet("/uploadfile")
public class UploadFile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String UPLOAD_DIRECTORY = "fileUpload";
	//private static final String UPLOAD_DIRECTORY = "D:\\PROGRAMING\\Eclipse_Project_2\\BaoCao_PhanBien_Online\\WebContent\\users\\avatar";

	// upload settings                                                   
	private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3; // 3MB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("404page.jsp").forward(req, resp);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
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

		/* Ä�á»ƒ upload lÃªn host internet */
		 String uploadPath = getServletContext().getRealPath("")
		 + File.separator + UPLOAD_DIRECTORY;                         
		/* MÃ¡y tráº¡m */
		//String uploadPath = UPLOAD_DIRECTORY;

		// creates the directory if it does not exist
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		String fileName = "";
		
		try {
			// parses the request's content to extract file data
			@SuppressWarnings("unchecked")
			List<FileItem> formItems = upload.parseRequest(request);
			System.out.println(formItems.size());
			System.out.println(formItems.size());
			if (formItems != null && formItems.size() > 0) {
				// iterates over form's fields
				for (FileItem item : formItems) {
					// processes only fields that are not form fields
					if (!item.isFormField()) {
						fileName = new File(item.getName()).getName();
						String filePath = uploadPath + File.separator + fileName;
						File storeFile = new File(filePath);
						// saves the file on disk
						item.write(storeFile);
					}
				}
			}
		} catch (Exception ex) {
			request.setAttribute("message", "There was an error: " + ex.getMessage());
		}

		request.getRequestDispatcher("/thong-tin-ca-nhan/edit").forward(request, response);

	}
}