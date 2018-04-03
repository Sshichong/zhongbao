package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.Login;

/**
 * Servlet implementation class adminShuntServlet
 */
@WebServlet("/adminShuntServlet")
public class adminShuntServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminShuntServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String shunt =request.getParameter("shunt");
		
		/*HttpSession session=request.getSession();
		
		Login login = (Login)session.getAttribute("login");
		System.out.println(login.getUsername());*/
		
		if(shunt.equals("1")) {
			response.sendRedirect("admin-ProjectManagement.jsp");
			return;
		}else {
			response.sendRedirect("admin-UserManagement.jsp");
			return;
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
