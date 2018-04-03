package com.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Jiebao;
import com.beans.Team;
import com.db.DataProcess;

/**
 * Servlet implementation class selectUserServlet
 */
@WebServlet("/selectTeamServlet")
public class selectTeamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public selectTeamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String keyword  = request.getParameter("keyword");
//		String type=request.getParameter("type");
//		System.out.println(type);
		System.out.println(keyword);
		String sql ="select * from team where name like '%"+keyword+"%'";
		DataProcess db =new DataProcess();
		Vector lists =db.getData(sql);
		
		Vector list =new Vector();
		List<Team> teams = new ArrayList<Team>();
		for(int i=0;i<lists.size();i++) {
			list =(Vector)lists.get(i);
			Team team =new Team();
			team.setId(Integer.parseInt((String)list.get(0)));
			team.setName((String)list.get(1));
			team.setIntroduction((String)list.get(2));
			team.setMemberid((String)list.get(3));
			team.setMembermun(Integer.parseInt((String)list.get(4)));
			team.setProjectid((String)list.get(5));
			team.setProjectmun(Integer.parseInt((String)list.get(6)));
			team.setFoundtime((String)list.get(7));
			
			teams.add(team);
		}
		
		request.setAttribute("teams",teams);
		request.getRequestDispatcher("admin-TeamManagement.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
