package com.servlets;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Jiebao;
import com.db.DataProcess;

/**
 * Servlet implementation class ModifyUserServlet
 */
@WebServlet("/ModifyUserServlet")
public class ModifyUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyUserServlet() {
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
		
		String sql="select *from jiebao where id="+id+"";
		DataProcess db=new DataProcess();
		Vector users =db.getData(sql);
		Vector user=(Vector)users.get(0);
		
		Jiebao jiebao=new Jiebao();
		jiebao.setId(Integer.parseInt((String)user.get(0)));
		jiebao.setName((String)user.get(1));
		jiebao.setPicture((String)user.get(2));
		jiebao.setSex((String)user.get(3));
		jiebao.setBirthday((String)user.get(4));
		jiebao.setAddress((String)user.get(5));
		jiebao.setPhone((String)user.get(6));
		jiebao.setEmail((String)user.get(7));
		jiebao.setMsn((String)user.get(8));
		jiebao.setQq((String)user.get(9));
		jiebao.setOccupation((String)user.get(10));
		jiebao.setWorklife((String)user.get(11));
		jiebao.setSate((String)user.get(12));
		jiebao.setWorkunit((String)user.get(13));
		jiebao.setPlatform((String)user.get(14));
		jiebao.setExpertise((String)user.get(15));
		
		request.setAttribute("jiebao", jiebao);
		request.getRequestDispatcher("admin-UserModify1.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
