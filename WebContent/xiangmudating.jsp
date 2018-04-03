<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.db.*" %>
<jsp:useBean id="login" class="com.beans.Login" scope="session" />
<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>项目大厅</title>
        <meta name="description" content="项目大厅">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://libs.bangbang93.com/css?family=Open+Sans:400,300,700,800&subset=latin' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/fontello.css">
        <link rel="stylesheet" href="css/animate.css">        
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        <link rel="stylesheet" href="css/owl.transitions.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="responsive.css">
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
    </head>
    <body>

    
	
        <div class="content-area">
          
            <hr>
<%=login.getUsername() %>,你好！
            <hr>

            <div class="container">
                <div class="row page-title text-center wow bounce"  data-wow-delay="1s">
                <%
                	String sql="select xmname,cycle,type,miaoshu,address,price from item";
    		    	DataProcess data = new DataProcess();
    		    	Vector rows = data.getData(sql);
    		    	System.out.println(rows);
    		   	 	int count = rows.size();
                %>
                    <h5>Recent Project</h5>
                    <h2><span><%=count %></span> Available Project for you</h2>
                </div>
                 <div class="search-form wow pulse" data-wow-delay="0.8s" align="center">
                            <form action="AllProjects" class=" form-inline">
                                <!--<div class="form-group">
                                    <input type="text" class="form-control" placeholder="Project Key Word">
                                </div>-->
                                <div class="form-group">
                                    <select name="" id="" class="form-control">
                                        <option selected>分类</option>
                                        <option >网站开发</option>
                                        <option>HTML5应用</option>
                                        <option>微信/小程序开发</option>
                                        <option>移动开发</option>
                                        <option>SDK/API开发</option>
                                        <option>文档翻译</option>
                                        <option>其他</option>
                                        
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select name="" id="" class="form-control">
                                        
                                        <option selected>类型</option>
                                        <option>整包</option>
                                        <option>悬赏</option>
                                        <option>兼职</option>
                                        
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select name="" id="" class="form-control">
                                        
                                        <option selected>技能需求</option>
                                        <option>C</option>
                                        <option>C#</option>
                                        <option>JAVA</option>
                                        <option>PHP</option>
                                        <option>Python</option>
                                        <option>MySQL</option>
                                        <option>SQLServer</option>
                                        <option>其他</option>
                                        
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select name="" id="" class="form-control">
                                        
                                        <option selected>地区</option>
                                        <option>北京</option>
                                        <option>上海</option>
                                        <option>杭州</option>
                                        <option>广州</option>
                                        <option>深圳</option>
                                        <option>大连</option>
                                        <option>武汉</option>
                                        <option>其他</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select name="" id="" class="form-control">
                                        
                                        <option selected>项目金额</option>
                                        <option>1K以下</option>
                                        <option>1K~3K</option>
                                        <option>3K~10K</option>
                                        <option>10K以上</option>
                                        <option>竞标报价</option>
                                        
                                    </select>
                                </div>
                                <input type="submit" class="btn" value="Search">


                            </form>
                        </div>
                        
                        
                        
                <div class="row jobs"  style="width: 100%;">
                    <div class="col-md-9" style="width: 100%;">
                        <div class="job-posts table-responsive" style="width: 100%;">
                            <table class="table" style="width: 100%;">
                            
                            <%
                        		//Vector AllProject=(Vector)request.getAttribute("project"); 
                                
                                
                                
                            	//int count=0;
                            	//if(request.getAttribute("count")!=null){
                            	//	count=Integer.parseInt(request.getAttribute("count").toString()); 
                            	//}
                            	
                    			//if(AllProject==null){
        						//	return;
        						//}
        						Vector Project=null;
                        		for(int i=0;i<count;i++){
                        			Project=(Vector)rows.get(i);
                                
							%>
                            
                                <tr class="odd wow fadeInUp" data-wow-delay="1s">
                                    <td class="tbl-logo"><img src="img/job-logo1.png" alt=""></td>
                                    <td class="tbl-title"><h4><%=Project.get(0) %><br><span class="job-type"><%=Project.get(1) %></span></h4></td>
                                    <td><p><%=Project.get(2) %></p></td>
                                    <td width="30%"><p><%=Project.get(3) %></p></td>
                                    <td><p><i class="icon-location"></i><%=Project.get(4) %></p></td>
                                    <td><p>&dollar; <%=Project.get(5) %></p></td>
                                    <td class="tbl-apply"><a href="#">Apply now</a></td>
                                </tr>
                                
                                						<%
					}
                        		
				%>
                                  
                            </table>
                        </div>
                        <div class="more-jobs">
                            <a href=""> <i class="fa fa-refresh"></i>View more jobs</a>
                        </div>
                    </div>
                    <div class="col-md-3 hidden-sm">
                        <!--<div class="job-add wow fadeInRight" data-wow-delay="1.5s">
                            <h2>Seeking a job?</h2>
                            <a href="#">Create a Account</a>
                        </div>-->
                    </div>
                </div>
            </div>
            <hr>

           

        </div>
      
		
		
		
		
		
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/wow.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
