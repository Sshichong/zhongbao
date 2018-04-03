package com.servlets;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.Login;
import com.db.DataProcess;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String username=request.getParameter("username");
		String password =request.getParameter("password");
		String identity =request.getParameter("identity");
		System.out.println("用户名："+username+";密码："+password+";身份："+identity);
		
		int i=Integer.parseInt(identity);
		System.out.println(i);
		String sql ="select * from login where username='"+username+"' and password='"+password+"' and identity="+i+"";
		DataProcess db =new DataProcess();
		Vector users =db.getData(sql);
		
		if(users.size()==0) {
			response.sendRedirect("login.jsp");
			return;
		}
		
		Vector user=(Vector)users.get(0);
		
		Login login =new Login();
		HttpSession session =request.getSession();
		login.setId(Integer.parseInt((String)user.get(0)));
		login.setUsername(username);
		login.setIdentity(Integer.parseInt(identity));
		if(identity.equals("1")||identity.equals("2")) {
			login.setUserid(Integer.parseInt((String)user.get(4)));
		}
		
		session.setAttribute("login", login);
		
		if(identity.equals("0")) {
			response.sendRedirect("admin-Navigation.jsp");
			return;
		}else if(identity.equals("1")) {
			response.sendRedirect("JB-Navigation.jsp");
			return;
		}else {
			response.sendRedirect("FB-Navigation.jsp");
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
