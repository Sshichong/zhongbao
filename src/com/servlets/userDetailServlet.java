package com.servlets;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Jiebao;
import com.db.DataProcess;

/**
 * Servlet implementation class userDetailServlet
 */
@WebServlet("/userDetailServlet")
public class userDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id =request.getParameter("id");
		String strid =(String)request.getAttribute("id");
		System.out.println(strid);
		//int id=Integer.parseInt(strid);
		
		String sql="";
		if(strid==null) {
			 sql ="select * from jiebao where id="+id+"";
		}else {
			 sql ="select * from jiebao where id="+strid+"";
		}
		
		DataProcess db =new DataProcess();
		Vector vector =db.getData(sql);
		Jiebao jiebao =new Jiebao();
		Vector v=(Vector)vector.get(0);
		
		jiebao.setId(Integer.parseInt((String)v.get(0)));
		jiebao.setName((String)v.get(1));
		jiebao.setPicture((String)v.get(2));
		jiebao.setSex((String)v.get(3));
		jiebao.setBirthday((String)v.get(4));
		jiebao.setAddress((String)v.get(5));
		jiebao.setPhone((String)v.get(6));
		jiebao.setEmail((String)v.get(7));
		jiebao.setMsn((String)v.get(8));
		jiebao.setQq((String)v.get(9));
		jiebao.setOccupation((String)v.get(10));
		jiebao.setWorklife((String)v.get(11));
		jiebao.setSate((String)v.get(12));
		jiebao.setWorkunit((String)v.get(13));
		jiebao.setPlatform((String)v.get(14));
		jiebao.setExpertise((String)v.get(15));
		
		
		request.setAttribute("jiebao", jiebao);
		RequestDispatcher dispatcher =request.getRequestDispatcher("user.jsp");
		dispatcher.forward(request, response);
		return ;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
