package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.db.DataProcess;

/**
 * Servlet implementation class DeleteProjectServlet
 */
@WebServlet("/DeleteProjectServlet")
public class DeleteProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteProjectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String strid =request.getParameter("id");
		System.out.println(strid);
		int id=Integer.parseInt(strid);
		
		String sql="delete from item where id="+id+"";
		DataProcess db =new DataProcess();
		int num=db.update(sql);
		
		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("utf-8");
		response.sendRedirect("admin-ProjectManagement.jsp");
		/*out.print("<script language='javascript'>alert('delete success!')</script>");*/
		/*response.sendRedirect("admin-ProjectManagement.jsp");*/
//		JOptionPane.showMessageDialog(null, "delete success!");
		
		
		
		
	}

}
