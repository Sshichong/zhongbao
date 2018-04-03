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
import javax.servlet.http.HttpSession;

import com.beans.Item;
import com.beans.Login;
import com.db.DataProcess;

/**
 * Servlet implementation class userSelectProjectServlet
 */
@WebServlet("/userSelectProjectServlet")
public class userSelectProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userSelectProjectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String userkeyword =request.getParameter("keyword1");
		System.out.println(userkeyword);
		HttpSession session =request.getSession();
		Login login =new Login();
		login =(Login)session.getAttribute("login");
		System.out.println("userid"+login.getUserid());
		System.out.println("111");
		System.out.println(String.valueOf(login.getUserid()));
		String sql ="select * from item where xmname like '%"+userkeyword+"%' or sort like '%"+userkeyword+"%' or type like '%"+userkeyword+"%' or address like '%"+userkeyword+"%' or ability like '%"+userkeyword+"%' or price like '%"+userkeyword+"%' or cycle like '%"+userkeyword+"%' or need like '%"+userkeyword+"%'";
		//String sql ="select * from item where ( xmname like '%"+userkeyword+"%' or sort like '%"+userkeyword+"%' or type like '%"+userkeyword+"%' or address like '%"+userkeyword+"%' or ability like '%"+userkeyword+"%' or price like '%"+userkeyword+"%' or cycle like '%"+userkeyword+"%' or need like '%"+userkeyword+"%') and jbfid='"+String.valueOf(login.getUserid())+"'";
		DataProcess db =new DataProcess();
		Vector lists =db.getData(sql);
		
		System.out.println(lists);
		List<Item> items =new ArrayList<Item>();
		for(int j=0;j<lists.size();j++) {
			Vector v =(Vector)lists.get(j);
			Item item =new Item();
			if(v.get(13).equals(String.valueOf(login.getUserid()))) {
				item.setXmname((String)v.get(1));
				item.setId(Integer.parseInt((String)v.get(0)));
				item.setSort((String)v.get(3));
				item.setAbility((String)v.get(6));
				item.setType((String)v.get(4));
				item.setAddress((String)v.get(5));
				item.setSttime((String)v.get(16));
				items.add(item);
			}
			
		}
		/*Vector list =new Vector();
		List<Item> items = new ArrayList<Item>();
		for(int i=0;i<lists.size();i++) {
			list =(Vector)lists.get(i);
			Item item =new Item();
			item.setXmname((String)list.get(1));
			item.setId(Integer.parseInt((String)list.get(0)));
			item.setSort((String)list.get(3));
			item.setAbility((String)list.get(6));
			item.setType((String)list.get(4));
			item.setAddress((String)list.get(5));
			item.setSttime((String)list.get(16));
			items.add(item);
		}
		*/
		request.setAttribute("items",items);
		request.getRequestDispatcher("projectManagement.jsp").forward(request, response);
		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
