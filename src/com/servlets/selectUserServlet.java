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
import com.db.DataProcess;

/**
 * Servlet implementation class selectUserServlet
 */
@WebServlet("/selectUserServlet")
public class selectUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public selectUserServlet() {
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
		String sql ="select * from jiebao where name like '%"+keyword+"%' or address like '%"+keyword+"%' or occupation like '%"+keyword+"%' or worklife like '%"+keyword+"%' or state like '%"+keyword+"%' or workunit like '%"+keyword+"%' or platform like '%"+keyword+"%' or sex like '%"+keyword+"%'";
		DataProcess db =new DataProcess();
		Vector lists =db.getData(sql);
		
		Vector list =new Vector();
		List<Jiebao> jiebaos = new ArrayList<Jiebao>();
		for(int i=0;i<lists.size();i++) {
			list =(Vector)lists.get(i);
			Jiebao jiebao =new Jiebao();
			jiebao.setId(Integer.parseInt((String)list.get(0)));
			jiebao.setName((String)list.get(1));
			jiebao.setPicture((String)list.get(2));
			jiebao.setSex((String)list.get(3));
			jiebao.setBirthday((String)list.get(4));
			jiebao.setAddress((String)list.get(5));
			jiebao.setPhone((String)list.get(6));
			jiebao.setEmail((String)list.get(7));
			jiebao.setMsn((String)list.get(8));
			jiebao.setQq((String)list.get(9));
			jiebao.setOccupation((String)list.get(10));
			jiebao.setWorklife((String)list.get(11));
			jiebao.setSate((String)list.get(12));
			jiebao.setWorkunit((String)list.get(13));
			jiebao.setPlatform((String)list.get(14));
			jiebao.setExpertise((String)list.get(15));
			jiebaos.add(jiebao);
		}
		
		request.setAttribute("jiebaos",jiebaos);
		request.getRequestDispatcher("admin-UserManagement.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
