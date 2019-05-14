/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fileupload;

import DAL.DBConnect;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadFile extends HttpServlet {
        private static final long serialVersionUID = 1L;
        private final String UPLOAD_DIRECTORY = "C:/Files/";

        protected void doPost(HttpServletRequest request,
                HttpServletResponse response) throws ServletException, IOException {
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);

        // process only if its multipart content
        if (isMultipart) {
                // Create a factory for disk-based file items
                FileItemFactory factory = new DiskFileItemFactory();

                // Create a new file upload handler
                ServletFileUpload upload = new ServletFileUpload(factory);
                try {
                    // Parse the request
                    List<FileItem> multiparts = upload.parseRequest(request);

                   for (FileItem item : multiparts) {
                   if (!item.isFormField()) {
                   String name = new File(item.getName()).getName();
                   DAL.DBConnect.ExecuteQuery("update course set datafile='"+name+"' where c_id='"+DBConnect.c_id+"'");
                   item.write(new File(UPLOAD_DIRECTORY + File.separator + DBConnect.c_id + name));
                   }
                }
                        
                // File uploaded successfully
                request.setAttribute("message", "Your file has been uploaded!");
                } 
                catch (Exception e) 
                {
                 request.setAttribute("message", "File Upload Failed due to " + e);
                }
        } else 
        {
        request.setAttribute("message", "This Servlet only handles file upload request");
        }
        request.getRequestDispatcher("/i_viewcourses.jsp").forward(request, response);
}
}