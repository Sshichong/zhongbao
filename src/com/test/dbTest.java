package com.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.Vector;

public class dbTest {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 String url="jdbc:mysql://127.0.0.1:3306/zhongbao?useUnicode=true&characterEncoding=UTF-8"; //数据库服务器的位置
		 String user="root"; //登陆数据库服务器的用户名
		 String password="root";//登陆数据库服务器的密码
		 Connection conn=null;
		 Statement stm=null;
		 Vector rows =new Vector();
		 
		 try{
				Class.forName("com.mysql.jdbc.Driver"); //加载数据库驱动
				System.out.println("ok");
				conn=DriverManager.getConnection(url, user, password);//获取连接
				
				if(!conn.isClosed()){
					System.out.println("Succeeded connecting to the Database!");
				}
				
				
				
				stm=conn.createStatement();//创建执行sql语句的容器
				
				String sql ="select * from item";
				
				
				ResultSet rst=stm.executeQuery(sql); //执行sql语句
				ResultSetMetaData m = rst.getMetaData();
				int x = m.getColumnCount();
				Vector rowData=null; //(1)
				
				
				
				while(rst.next()){
					rowData=new Vector(); //创建Vector对象能否放在（1）处实现
					
					for(int i = 1 ; i<=x;i++)
						rowData.add(rst.getString(i));
					rows.add(rowData);
				}
				stm.close();
				conn.close();
			}catch(Exception e){
				System.err.print(e);
			}
			System.out.println(rows);
	}

}
