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
 * Servlet implementation class SelectProjectServlet
 */
@WebServlet("/SelectProjectServlet")
public class SelectProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectProjectServlet() {
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
		String userkeyword  = request.getParameter("keyword1");
		/*String type=request.getParameter("type");
		System.out.println(type);*/
		System.out.println(keyword);
		System.out.println(userkeyword);
		if(userkeyword==null) {
			String sql ="select * from item where xmname like '%"+keyword+"%' or sort like '%"+keyword+"%' or type like '%"+keyword+"%' or address like '%"+keyword+"%' or ability like '%"+keyword+"%' or price like '%"+keyword+"%' or cycle like '%"+keyword+"%' or need like '%"+keyword+"%'";
			DataProcess db =new DataProcess();
			Vector lists =db.getData(sql);
			
			Vector list =new Vector();
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
			
			request.setAttribute("items",items);
			request.getRequestDispatcher("admin-ProjectManagement.jsp").forward(request, response);
			return;
		}
		else {
			System.out.println("1111");
			HttpSession session =request.getSession();
			Login login =new Login();
			login =(Login)session.getAttribute("login");
			
			System.out.println("login-userid:"+login.getUserid());
			String sql ="select * from item where jbfid='"+String.valueOf(login.getUserid())+"' and ( xmname like '%"+userkeyword+"%' or sort like '%"+userkeyword+"%' or type like '%"+userkeyword+"%' or address like '%"+userkeyword+"%' or ability like '%"+userkeyword+"%' or price like '%"+userkeyword+"%' or cycle like '%"+userkeyword+"%' or need like '%"+userkeyword+"%')";
			DataProcess db =new DataProcess();
			Vector lists =db.getData(sql);
			
			Vector list =new Vector();
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
			
			request.setAttribute("items",items);
			request.getRequestDispatcher("projectManagement.jsp").forward(request, response);
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
