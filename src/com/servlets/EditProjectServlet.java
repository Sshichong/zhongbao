package com.servlets;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.db.DataProcess;

/**
 * Servlet implementation class EditProjectServlet
 */
@WebServlet("/EditProjectServlet")
public class EditProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProjectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//得到上传文件的保存目录，将上传的文件存放于WEB-INF目录下，不允许外界直接访问，保证上传文件的安全
        String savePath = this.getServletContext().getRealPath("/WEB-INF/upload");
        File file = new File(savePath);
        System.out.println(savePath);
        //判断上传文件的保存目录是否存在
        if (!file.exists() && !file.isDirectory()) {
            System.out.println(savePath+"目录不存在，需要创建");
            //创建目录
            file.mkdir();
        }
        //消息提示
        String message = "";
        try{
            //使用Apache文件上传组件处理文件上传步骤：
            //1、创建一个DiskFileItemFactory工厂
            DiskFileItemFactory factory = new DiskFileItemFactory();
            //2、创建一个文件上传解析器
            ServletFileUpload upload = new ServletFileUpload(factory);
             //解决上传文件名的中文乱码
            upload.setHeaderEncoding("UTF-8"); 
            //3、判断提交上来的数据是否是上传表单的数据
            if(!ServletFileUpload.isMultipartContent(request)){
                //按照传统方式获取数据
                return;
            }
            //4、使用ServletFileUpload解析器解析上传数据，解析结果返回的是一个List<FileItem>集合，每一个FileItem对应一个Form表单的输入项
            List<FileItem> list = upload.parseRequest(request);
            Vector vector=new Vector();
            Vector v=new Vector();
            Vector v1=new Vector();
            String name1="ability";
            String name2="step";
            String fname="";
            for(FileItem item : list){
                //如果fileitem中封装的是普通输入项的数据
                if(item.isFormField()){
                    String name = item.getFieldName();
                    //解决普通输入项的数据的中文乱码问题
                    String value = item.getString("UTF-8");
                    if(name.equals(name1)) {
                    	v.add(value);
                    	continue;
                    	
                    }else if(name.equals(name2)) {
                    	v1.add(value);
                    	continue;
                    }
                   
                    //value = new String(value.getBytes("iso8859-1"),"UTF-8");
                    vector.add(value);
                  // System.out.println(name + "=" + value);
                }else{//如果fileitem中封装的是上传文件
                    //得到上传的文件名称，
                    String filename = item.getName();
                    fname=filename;
                    System.out.println(filename);
                    if(filename==null || filename.trim().equals("")){
                        continue;
                    }
                    //注意：不同的浏览器提交的文件名是不一样的，有些浏览器提交上来的文件名是带有路径的，如：  c:\a\b\1.txt，而有些只是单纯的文件名，如：1.txt
                    //处理获取到的上传文件的文件名的路径部分，只保留文件名部分
                    filename = filename.substring(filename.lastIndexOf("\\")+1);
                    //获取item中的上传文件的输入流
                    InputStream in = item.getInputStream();
                    //创建一个文件输出流
                    FileOutputStream out = new FileOutputStream(savePath + "\\" + filename);
                    //创建一个缓冲区
                    byte buffer[] = new byte[1024];
                    //判断输入流中的数据是否已经读完的标识
                    int len = 0;
                    //循环将输入流读入到缓冲区当中，(len=in.read(buffer))>0就表示in里面还有数据
                    while((len=in.read(buffer))>0){
                        //使用FileOutputStream输出流将缓冲区的数据写入到指定的目录(savePath + "\\" + filename)当中
                        out.write(buffer, 0, len);
                    }
                   
                    //关闭输入流
                    in.close();
                    //关闭输出流
                    out.close();
                    //删除处理文件上传时生成的临时文件
                    item.delete();
                    message = "文件上传成功！";
                }
            }
            String a ="";
            for(int i=0;i<v.size();i++) {
            	if(i<v.size()-1) {
            		a+=v.get(i);
            		a+=";";
            		continue;
            	}
            	a=a+v.get(i);
            }
            System.out.println("技能："+a);
            String b="";
            int count=0;
            for(int j=0;j<v1.size();j++) {
            	count++;
            	if(j<v1.size()-1) {
            		b+=v1.get(j);
            		b+=";";
            		continue;
            	}
            	b+=v1.get(j);
            	
            }
            System.out.println("步骤："+b);
            System.out.println("项目个数："+count);
            int i=Integer.parseInt((String)vector.get(0));
            System.out.println(i);
            String sql="update item set xmname='"+vector.get(1)+"' ,fbid="+1+" ,sort='"+vector.get(2)+"' ,type='"+vector.get(3)+"' ,address='"+vector.get(5)+"' ,ability='"+a+"' ,function='"+111+"' ,state='"+vector.get(4)+"' ,price='"+vector.get(6)+"' ,preferjbf='"+vector.get(7)+"' ,miaoshu='"+vector.get(11)+"' ,enclosure='"+fname+"' ,jbfid="+1+" ,cycle='"+vector.get(9)+"' ,need='"+vector.get(8)+"' ,sttime=now(),peoplecount="+vector.get(10)+",taskstep='"+b+"',taskcount="+count+" where id="+i+"";
            DataProcess db =new DataProcess();
            int num =db.update(sql);
            System.out.println(num);
            System.out.println("技能："+v);
            
          System.out.println(vector);
        }catch (Exception e) {
            message= "文件上传失败！";
            e.printStackTrace();
            
        }
        request.setAttribute("message",message);
        request.getRequestDispatcher("admin-ProjectManagement.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
