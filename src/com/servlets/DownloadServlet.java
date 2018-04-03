package com.servlets;

import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;

import sun.misc.BASE64Encoder;

/**
 * Servlet implementation class DownloadServlet
 */
@WebServlet("/DownloadServlet")
public class DownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request.setCharacterEncoding("utf-8");
		//response.setCharacterEncoding("utf-8");
		
		String f=request.getParameter("name");
		String xiangxi=request.getParameter("xiangxi");
		System.out.println(f);
		System.out.println(xiangxi);
		String file="";
		
		String path="";
		if(xiangxi==null) {
			path="D:/upload/steps/";
			file=f;
			
		}else {
			path="D:/upload/";
			file = xiangxi;
			
		}
		String filename=path+file;
		
		filename= new String(filename.getBytes("iso-8859-1"),"utf-8");
		System.out.println(filename);
		//filename = URLEncoder.encode(filename,"UTF-8");
		//String filename = "F:浮夸.mp3";
		

		

        //根据文件名获取 MIME 类型
        String contentType = this.getServletContext().getMimeType(filename);

        String contentDisposition = "attachment;filename="+file;

        // 输入流
        FileInputStream input = new FileInputStream(filename);

        // 设置头
        response.setHeader("Content-Type",contentType);
        response.setHeader("Content-Disposition",contentDisposition);

        // 获取绑定了客户端的流
        ServletOutputStream output = response.getOutputStream();

        // 把输入流中的数据写入到输出流中
        IOUtils.copy(input,output);
        input.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
