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
		 String url="jdbc:mysql://127.0.0.1:3306/zhongbao?useUnicode=true&characterEncoding=UTF-8"; //���ݿ��������λ��
		 String user="root"; //��½���ݿ���������û���
		 String password="root";//��½���ݿ������������
		 Connection conn=null;
		 Statement stm=null;
		 Vector rows =new Vector();
		 
		 try{
				Class.forName("com.mysql.jdbc.Driver"); //�������ݿ�����
				System.out.println("ok");
				conn=DriverManager.getConnection(url, user, password);//��ȡ����
				
				if(!conn.isClosed()){
					System.out.println("Succeeded connecting to the Database!");
				}
				
				
				
				stm=conn.createStatement();//����ִ��sql��������
				
				String sql ="select * from item";
				
				
				ResultSet rst=stm.executeQuery(sql); //ִ��sql���
				ResultSetMetaData m = rst.getMetaData();
				int x = m.getColumnCount();
				Vector rowData=null; //(1)
				
				
				
				while(rst.next()){
					rowData=new Vector(); //����Vector�����ܷ���ڣ�1����ʵ��
					
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
