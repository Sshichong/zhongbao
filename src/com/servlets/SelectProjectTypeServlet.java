package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Item;
import com.db.DataProcess;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class SelectProjectTypeServlet
 */
@WebServlet("/SelectProjectTypeServlet")
public class SelectProjectTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectProjectTypeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type=request.getParameter("type");
		System.out.println(type);
		String sql="select * from item where type= '"+type+"'";
		DataProcess db =new DataProcess();
		Vector vector =db.getData(sql);
		
		JSONArray rows =new JSONArray();
		
		for(int i=0;i<vector.size();i++) {
			JSONObject object =new JSONObject();
			Item item =(Item)vector.get(i);
			object.put("id", item.getId());
			object.put("name", item.getXmname());
			object.put("type", item.getType());
			object.put("time", item.getSttime());
			
			rows.add(object);
		}
		//System.out.println(rows.toJSONObject(rows));
		//response.getWriter().write(rows.toString());
		
		
		
		
		
		
		response.setCharacterEncoding("utf-8");
	    PrintWriter out = response.getWriter();
	      out.print("{\"msg\":\"<table><tr><td>"+type+"</td></tr></table>\"}");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
