package com.servlets;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Item;
import com.db.DataProcess;

/**
 * Servlet implementation class itemDetailServlet
 */
@WebServlet("/itemDetailServlet")
public class itemDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public itemDetailServlet() {
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
		String id =request.getParameter("id");
		String state =request.getParameter("state");
		String strprojectid=(String)request.getAttribute("projectid");
		System.out.println("projectid:"+strprojectid);
		System.out.println("state:"+state);
		System.out.println(id);
		String sql="";
		if(strprojectid==null) {
			if(state!=null) {
				sql ="select * from item where id="+id+"";
				DataProcess db =new DataProcess();
				Vector vector =db.getData(sql);
				Item item =new Item();
				Vector v=(Vector)vector.get(0);
				
				item.setId(Integer.parseInt((String)v.get(0)));
				item.setXmname((String)v.get(1));
				item.setSort((String)v.get(3));
				item.setType((String)v.get(4));
				item.setAddress((String)v.get(5));
				item.setAbility((String)v.get(6));
				item.setFunction((String)v.get(7));
				item.setState((String)v.get(8));
				item.setPrice((String)v.get(9));
				item.setPreferjbf((String)v.get(10));
				item.setMiaoshu((String)v.get(11));
				item.setEnclosure((String)v.get(12));
				item.setCycle((String)v.get(14));
				item.setNeed((String)v.get(15));
				item.setSttime((String)v.get(16));
				item.setPeoplecount(Integer.parseInt((String)v.get(17)));
				item.setTaskstep((String)v.get(18));
				item.setTaskcount(Integer.parseInt((String)v.get(19)));
				item.setTaskenclosure((String)v.get(20));
				
				request.setAttribute("item", item);
				RequestDispatcher dispatcher =request.getRequestDispatcher("project.jsp");
				dispatcher.forward(request, response);
				return ;
			}
			sql ="select * from item where id="+id+"";
		}else {
			int projectid=Integer.parseInt(strprojectid);
			sql="select * from item where id="+projectid+"";
		}
		 
		DataProcess db =new DataProcess();
		Vector vector =db.getData(sql);
		Item item =new Item();
		Vector v=(Vector)vector.get(0);
		
		item.setId(Integer.parseInt((String)v.get(0)));
		item.setXmname((String)v.get(1));
		item.setSort((String)v.get(3));
		item.setType((String)v.get(4));
		item.setAddress((String)v.get(5));
		item.setAbility((String)v.get(6));
		item.setFunction((String)v.get(7));
		item.setState((String)v.get(8));
		item.setPrice((String)v.get(9));
		item.setPreferjbf((String)v.get(10));
		item.setMiaoshu((String)v.get(11));
		item.setEnclosure((String)v.get(12));
		item.setCycle((String)v.get(14));
		item.setNeed((String)v.get(15));
		item.setSttime((String)v.get(16));
		item.setPeoplecount(Integer.parseInt((String)v.get(17)));
		item.setTaskstep((String)v.get(18));
		item.setTaskcount(Integer.parseInt((String)v.get(19)));
		item.setTaskenclosure((String)v.get(20));
		
		request.setAttribute("item", item);
		RequestDispatcher dispatcher =request.getRequestDispatcher("admin-Project.jsp");
		dispatcher.forward(request, response);
		return ;
		
		
		
	}

}
