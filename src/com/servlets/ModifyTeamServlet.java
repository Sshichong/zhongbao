package com.servlets;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Team;
import com.db.DataProcess;

/**
 * Servlet implementation class ModifyTeamServlet
 */
@WebServlet("/ModifyTeamServlet")
public class ModifyTeamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyTeamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String strid =request.getParameter("id");
		int id =Integer.parseInt(strid);
		System.out.println(id);
		
		//查找团队
		String sql = "select * from team where id ="+id+"";
		DataProcess db =new DataProcess();
		Vector teams =db.getData(sql);
		Vector team =(Vector)teams.get(0);
		
		Team t= new Team();
		t.setId(Integer.parseInt((String)team.get(0)));
		t.setName((String)team.get(1));
		t.setIntroduction((String)team.get(2));
		t.setMemberid((String)team.get(3));
		t.setMembermun(Integer.parseInt((String)team.get(4)));
		t.setProjectid((String)team.get(5));
		t.setProjectmun(Integer.parseInt((String)team.get(6)));
		t.setFoundtime((String)team.get(7));
		t.setCaptainid(Integer.parseInt((String)team.get(8)));
		
		request.setAttribute("team", t);
		request.getRequestDispatcher("admin-TeamModify.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
