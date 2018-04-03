package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.DataProcess;

/**
 * Servlet implementation class ChangeStateServlet
 */
@WebServlet("/ChangeStateServlet")
public class ChangeStateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeStateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String struserid =request.getParameter("userid");
		String state = request.getParameter("state");
		String strprojectid =request.getParameter("projectid");
		System.out.println("id:"+struserid);
		System.out.println("state:"+state);
		System.out.println("projectid:"+strprojectid);
		int userid =Integer.parseInt(struserid);
		int projectid =Integer.parseInt(strprojectid);
		
		String sql="";
		if(state.equals("0")) {
			sql="update feedback set state="+1+" where userid="+userid+" and projectid="+projectid+"";
			System.out.println("111");
			
		}else {
			sql ="update feedback set state="+0+" where userid="+userid+" and projectid="+projectid+"";
		}
		DataProcess db =new DataProcess();
		int num =db.update(sql);
		System.out.println(num);
		
		request.setAttribute("projectid", strprojectid);
		request.getRequestDispatcher("itemDetailServlet").forward(request, response);
		//response.sendRedirect("project.jsp");
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
