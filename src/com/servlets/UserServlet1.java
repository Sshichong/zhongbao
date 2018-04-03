package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.db.DataProcess;

/**
 * Servlet implementation class UserServlet1
 */
@WebServlet("/UserServlet1")
public class UserServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	    this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		//��������
		//String id =request.getParameter("");
		String strid =request.getParameter("id");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String birthday = request.getParameter("birthday");
		String address = request.getParameter("address");
		//String autograph = request.getParameter("autograph");
		String email = request.getParameter("email");
		String MSN = request.getParameter("MSN");
		String QQ =request.getParameter("QQ");
		String phone= request.getParameter("phone");
		String occupation = request.getParameter("occupation");
		String worklife = request.getParameter("worklife");
		String state = request.getParameter("state");
		String workunit = request.getParameter("workunit");
		String platform = request.getParameter("platform");
		String intro = request.getParameter("intro");
		
		//��֤����
/*		if(name ==null|| name.equals("")){
			messinfo.setMess("please enter name");
			request.setAttribute("mess", messinfo);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin-UserModify.jsp");
			dispatcher.forward(request, response);
			return;
		}
		if(sex ==null|| sex.equals("")){
			messinfo.setMess("please enter sex");
			request.setAttribute("mess", messinfo);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin-UserModify.jsp");
			dispatcher.forward(request, response);
			return;
		}
		if(birthday==null|| birthday.equals("")){
			messinfo.setMess("please enter birthday");
			request.setAttribute("mess", messinfo);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin-UserModify.jsp");
			dispatcher.forward(request, response);
			return;
		}
		if(address==null|| address.equals("")){
			messinfo.setMess("please enter address");
			request.setAttribute("mess", messinfo);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin-UserModify.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		if(email==null|| email.equals("")){
			messinfo.setMess("please enter email");
			request.setAttribute("mess", messinfo);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin-UserModify.jsp");
			dispatcher.forward(request, response);
			return;
		}
		if(MSN ==null|| MSN.equals("")){
			messinfo.setMess("please enter msn");
			request.setAttribute("mess", messinfo);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin-UserModify.jsp");
			dispatcher.forward(request, response);
			return;
		}
		if(QQ==null|| QQ.equals("")){
			messinfo.setMess("please enter qq");
			request.setAttribute("mess", messinfo);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin-UserModify.jsp");
			dispatcher.forward(request, response);
			return;
		}
		if(phone==null|| phone.equals("")){
			messinfo.setMess("please enter phone");
			request.setAttribute("mess", messinfo);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin-UserModify.jsp");
			dispatcher.forward(request, response);
			return;
		}
		if(occupation==null|| occupation.equals("")){
			messinfo.setMess("please enter occupation");
			request.setAttribute("mess", messinfo);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin-UserModify.jsp");
			dispatcher.forward(request, response);
			return;
		}
		if(worklife==null|| worklife.equals("")){
			messinfo.setMess("please enter worklife");
			request.setAttribute("mess", messinfo);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin-UserModify.jsp");
			dispatcher.forward(request, response);
			return;
		}
		if(platform==null|| platform.equals("")){
			messinfo.setMess("please enter platform");
			request.setAttribute("mess", messinfo);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin-UserModify.jsp");
			dispatcher.forward(request, response);
			return;
		}
		if(intro==null|| intro.equals("")){
			messinfo.setMess("please enter intro");
			request.setAttribute("mess", messinfo);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin-UserModify.jsp");
			dispatcher.forward(request, response);
			return;
		}*/
		
		//��������
		int id=Integer.parseInt(strid);
		DataProcess dataProcess = new DataProcess();
		String sqlString = "update jiebao set name='"+name+"',sex='"+sex+"',birthday='"+birthday+"',address='"+address+"',phone='"+phone+"',email='"+email+"',msn='"+MSN+"',qq='"+QQ+"',occupation='"+occupation+"',worklife='"+worklife+"',state='"+state+"',workunit='"+workunit+"',platform='"+platform+"',expertise='"+intro+"'"
				+ "              where id="+id+"";
		dataProcess.update(sqlString);
		
		request.setAttribute("id", strid);
		request.getRequestDispatcher("userDetailServlet").forward(request, response);
		
		/*
		HttpSession session = request.getSession();
		session.setAttribute("name", userinfo);
		
		response.sendRedirect("user.jsp");*/
	}

}
