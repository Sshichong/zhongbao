package com.servlets;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.DataProcess;

/**
 * Servlet implementation class EditTeamServlet
 */
@WebServlet("/EditTeamServlet")
public class EditTeamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditTeamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String teamname=request.getParameter("TeamName");
		String captainname=request.getParameter("CaptainName");
		String membernames=request.getParameter("MemberName");
		String projectnames=request.getParameter("ProjectName");
		String introduction=request.getParameter("Introduction");
		System.out.println(teamname+captainname+membernames+projectnames+introduction);
		
		//查询队长id
		String sql="select * from jiebao where name='"+captainname+"'";
		DataProcess capdb =new DataProcess();
		Vector captains =capdb.getData(sql);
		Vector captain =(Vector)captains.get(0);
		int captainid =Integer.parseInt((String)captain.get(0));
		
		
		//查询队员id
		String []strmemberNames =membernames.split(";");
		Vector memberids =new Vector();
		int memcount=0;
		for(int i=0;i<strmemberNames.length;i++) {
			memcount++;		//成员人数
			String sql1="select * from jiebao where name='"+strmemberNames[i]+"'";
			DataProcess memdb =new DataProcess();
			Vector members =memdb.getData(sql1);
			Vector member =(Vector)members.get(0);
			String strid =(String)member.get(0);
			int id=Integer.parseInt(strid);
			memberids.add(id);
		}
		String strmemid="";		//队员id字符串
		for(int j=0;j<memberids.size();j++) {
			if(j==memberids.size()-1) {
				strmemid+=memberids.get(j);
				continue;
			}
			strmemid+=memberids.get(j);
			strmemid+=";";
		}
		System.out.println("队员id："+strmemid);
		
		
		//查询项目id
		String []strprojectNames=projectnames.split(";");
		Vector projectids =new Vector();
		int procount=0;
		for(int i=0;i<strprojectNames.length;i++) {
			procount++;
			String sql2="select * from item where xmname ='"+strprojectNames[i]+"'";
			DataProcess prodb =new DataProcess();
			Vector projects=prodb.getData(sql2);
			Vector project =(Vector)projects.get(0);
			String strid =(String)project.get(0);
			int id=Integer.parseInt(strid);
			projectids.add(id);
		}
		String strproid="";
		for(int j=0;j<projectids.size();j++) {
			if(j==projectids.size()-1) {
				strproid+=projectids.get(j);
				continue;
			}
			strproid+=projectids.get(j);
			strproid+=";";
		}
		System.out.println("项目id："+strproid);
		
		
		//查询此队伍id
		String sql4="select * from team where name='"+teamname+"'";
		DataProcess data1 =new DataProcess();
		Vector teams =data1.getData(sql4);
		Vector team =(Vector)teams.get(0);
		int teamid =Integer.parseInt((String)team.get(0)); //此队伍id
				
		
		//更新team表
		String sql3 ="update team set name='"+teamname+"' , introduction='"+introduction+"' ,memberid='"+strmemid+"' , membermun="+memcount+" , projectid ='"+strproid+"' , projectmun="+procount+" , captainid= "+captainid+" where id="+teamid+"";
		DataProcess data=new DataProcess();
		int num =data.update(sql3);
		System.out.println(num);
		
		//更新teamstate表
		//成员插入teamstate表
		for(int i=0;i<memberids.size();i++) {
			String sql5="update teamstate set jiebaoid="+memberids.get(i)+" , state="+0+" where teamid="+teamid+"";
			DataProcess data2 =new DataProcess();
			int num1=data2.update(sql5);
			System.out.println("成员"+memberids.get(i)+num1);
		}
		//队长插入teamstate表
		String sql6="update teamstate set jiebaoid="+captainid+" , state="+1+" where teamid="+teamid+"";
		DataProcess data3 =new DataProcess();
		int num2=data3.update(sql6);
		System.out.println("队长"+num2);
		
		
		//插入feedback表
		for(int i=0;i<projectids.size();i++) {
			String sql7 ="update feedback set projectid="+projectids.get(i)+" , state ="+0+" where userid="+teamid+"";
			DataProcess data4 =new DataProcess();
			int num3 =data4.update(sql7);
			System.out.println("项目"+projectids.get(i)+num3);
		
		}
		
		response.sendRedirect("admin-TeamManagement.jsp");
	
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
