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

import com.beans.Item;
import com.beans.Jiebao;
import com.beans.Team;
import com.db.DataProcess;

/**
 * Servlet implementation class TeamDetailServlet
 */
@WebServlet("/TeamDetailServlet")
public class TeamDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeamDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String strid=request.getParameter("id");
		System.out.println(strid);
		int id=Integer.parseInt(strid);
		
		String sql="select *from team where id="+id+"";
		DataProcess db =new DataProcess();
		Vector vector =db.getData(sql);
		Vector v =(Vector)vector.get(0);
		Team team =new Team();
		team.setId(Integer.parseInt((String)v.get(0)));
		team.setName((String)v.get(1));
		team.setIntroduction((String)v.get(2));
		team.setMemberid((String)v.get(3));
		team.setMembermun(Integer.parseInt((String)v.get(4)));
		team.setProjectid((String)v.get(5));
		team.setProjectmun(Integer.parseInt((String)v.get(6)));
		team.setFoundtime((String)v.get(7));
		team.setCaptainid(Integer.parseInt((String)v.get(8)));
		request.setAttribute("team",team);
		
		
		//队长信息
		int captainid =Integer.parseInt((String)v.get(8));
		String sql1="select * from jiebao where id="+captainid+"";
		DataProcess captaindb =new DataProcess();
		Vector captains=captaindb.getData(sql1);
		Vector captain=(Vector)captains.get(0);
		System.out.println(captain);
		Jiebao captainjiebao =new Jiebao();
		captainjiebao.setId(Integer.parseInt((String)captain.get(0)));
		captainjiebao.setName((String)captain.get(1));
		request.setAttribute("captainjiebao", captainjiebao);
		
		//队员信息
		String strmemberid=(String)v.get(3);
		System.out.println(strmemberid);
		String []ids=strmemberid.split(";");
		List<Jiebao> memlist =new ArrayList<Jiebao>();
		for(int i=0;i<ids.length;i++) {
			Jiebao mem =new Jiebao();
			int memberid=Integer.parseInt(ids[i]);
			String sql2="select * from jiebao where id="+memberid+"";
			DataProcess memberdb =new DataProcess();
			Vector members =memberdb.getData(sql2);
			Vector member =(Vector)members.get(0);
			mem.setId(Integer.parseInt((String)member.get(0)));
			mem.setName((String)member.get(1));
			
			memlist.add(mem);
			
		}
		request.setAttribute("members", memlist);
		
		
		//接包信息
		String strprojectid=(String)v.get(5);
		System.out.println(strprojectid);
		String []pids=strprojectid.split(";");
		List<Item> prolist =new ArrayList<Item>();
		for(int j=0;j<pids.length;j++) {
			Item item =new Item();
			int itemid=Integer.parseInt(pids[j]);
			String sql2="select * from item where id="+itemid+"";
			DataProcess itemdb =new DataProcess();
			Vector items =itemdb.getData(sql2);
			Vector item1 =(Vector)items.get(0);
			item.setId(Integer.parseInt((String)item1.get(0)));
			item.setXmname((String)item1.get(1));
			item.setMiaoshu((String)item1.get(11));
			
			prolist.add(item);
			
		}
		request.setAttribute("items", prolist);
		
		
		request.getRequestDispatcher("Team.jsp").forward(request, response);
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
