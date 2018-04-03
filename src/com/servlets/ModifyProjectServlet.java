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
 * Servlet implementation class ModifyProjectServlet
 */
@WebServlet("/ModifyProjectServlet")
public class ModifyProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyProjectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String strid =request.getParameter("id");
		System.out.println(strid);
		int id=Integer.parseInt(strid);
		
		String sql="select *from item where id="+id+"";
		DataProcess db =new DataProcess();
		Vector vector =db.getData(sql);
		Vector v=(Vector)vector.get(0);
		System.out.println(v.toString());
		
		Item item =new Item();
		item.setId(id);
		item.setXmname((String)v.get(1));
		item.setFbid(Integer.parseInt((String)v.get(2)));
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
		item.setJbfid(Integer.parseInt((String)v.get(13)));
		item.setCycle((String)v.get(14));
		item.setNeed((String)v.get(15));
		item.setPeoplecount(Integer.parseInt((String)v.get(17)));
		item.setTaskstep((String)v.get(18));
		item.setTaskcount(Integer.parseInt((String)v.get(19)));
		
		
		request.setAttribute("item",item );
		request.setAttribute("list", item);
		RequestDispatcher dispatcher =request.getRequestDispatcher("admin-ProjectModify.jsp");
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
