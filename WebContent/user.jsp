<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.db.*"%>
<%@page import="com.beans.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="jiebao" class="com.beans.Jiebao" scope="request" />
<jsp:useBean id="login" class="com.beans.Login" scope="session" />
<!DOCTYPE html>
<html lang="">


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- ===========================
    THEME INFO
    =========================== -->
    <meta name="description" content="CVstrap is another Free minimal CV HTML theme by EvenFly built with Bootstrap 3.3.0. and released under CC-3.0 license.">
    <meta name="keywords" content="curriculum vitae, cv, one page, onepage, bootstrap, responsive, resume, timeline, free cv">
    <meta name="author" content="Mamun Srizon">

    <!-- ===========================
    SITE TITLE
    =========================== -->
    <title>CVstrap - Free Bootstrap CV Template by EvenFly</title>

    <!-- ===========================
    FAVICONS
    =========================== -->
    <link rel="icon" href="img/favicon.png">
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-ipad-retina.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-iphone-retina.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-ipad.png" />
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-iphone.png" />

    <!-- ===========================
    STYLESHEETS
    =========================== -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- ===========================
    FONTS & ICONS
    =========================== -->
    <link href='http://fonts.googleapis.com/css?family=Kristi|Alegreya+Sans:300' rel='stylesheet' type='text/css'>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">


    <!--[if IE]>
        <script src="https://cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://cdn.jsdelivr.net/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <div class="container">
        <!-- ===========================
        HEADER
        ============================ -->
        
       
        <div id="header" class="row">
            <div class="col-sm-2">
                <img class="propic" src="img/bappy.jpg" alt="">
            </div>
            <!-- photo end-->

            <div class="col-sm-10">
                <div class="cv-title">
                    <div class="row">
                        <div class="col-sm-7">
                            <h1><%=jiebao.getName()%></h1>
                        </div>
                        <div class="col-sm-5 text-right dl-share">
                            <!-- AddToAny BEGIN -->
                            <a class="a2a_dd btn btn-default" href="ModifyUserServlet?id=<%=login.getUserid()%>"> 修改</a>
                           <!--  <script type="text/javascript">
                                var a2a_config = a2a_config || {};
                                a2a_config.linkname = "Minimal CV by EvenFly";
                                a2a_config.num_services = 6;
                                a2a_config.prioritize = ["facebook", "twitter", "google_plus", "linkedin", "pinterest", "email"];
                            </script>
                            <script type="text/javascript" src="//static.addtoany.com/menu/page.js"></script> -->
                            <!-- AddToAny END -->

                           <!--  <a class="btn btn-success" href=""><span class="fa fa-download"></span> Download</a> -->
                        </div>
                    </div>
                   
                    <h2><%=jiebao.getExpertise()%></h2>
                </div><!-- Title end-->

                <!-- ===========================
                SOCIAL & CONTACT
                ============================ -->
                <div class="row">
                    <div class="col-sm-4">
                        <ul class="list-unstyled">
                            <!--<li><a href=""><span class="social fa fa-home"></span>EvenFly.com</a>-->
                            	<li><span class="social fa fa-mobile"></span><%=jiebao.getPhone() %>
                            </li>
                            <!--<li><span class="social fa fa-skype"></span>+86 152-xxxx-6727
                            </li>-->
                           
                        </ul>
                    </div><!-- social 1st col end-->

                    <div class="col-sm-4">
                        <ul class="list-unstyled">
                          <!--  <li><a href=""><span class="social fa fa-facebook"></span>Facebook</a>
                            </li>
                            <li><a href=""><span class="social fa fa-twitter"></span>Twitter</a>
                            </li>
                            <li><a href=""><span class="social fa fa-linkedin"></span>Linkedin</a>
                            </li>-->
                            <li><span class="social fa fa-qq"></span><%=jiebao.getQq() %>
                            </li>
                        </ul>
                    </div><!-- social 2nd col end-->

                    <div class="col-sm-4">
                        <ul class="list-unstyled">
                           <!-- <li><a href=""><span class="social fa fa-behance"></span>Behance</a>
                            </li>
                            <li><a href=""><span class="social fa fa-dribbble"></span>Dribbble</a>
                            </li>
                            <li><a href=""><span class="social fa fa-instagram"></span>Instagram</a>
                            </li>-->
                             <li><span class="social fa fa-envelope-o"></span><%=jiebao.getEmail() %>
                            </li>
                        </ul>
                    </div><!-- social 3rd col end-->
                </div><!-- header social end-->
            </div><!-- header right end-->
        </div><!-- header end-->

        <hr class="firsthr">

        <!-- ===========================
        BODY LEFT PART
        ============================ -->
        <div class="col-md-8 mainleft">
            <div id="statement" class="row mobmid">
                <div class="col-sm-1">
                    <span class="secicon fa fa-user"></span>
                </div><!--icon end-->

                <div class="col-sm-11">
                    <h3>基本信息 </h3>
                      <table border="3px">
                         <tr>
                            <td>性别</td>    
                            <td width="250"><%=jiebao.getSex() %></td> 
                            <td>生日</td>    
                            <td><%=jiebao.getBirthday()%></td>                    
                         </tr>
                         <tr>
                            <td>住址</td>    
                            <td><%=jiebao.getAddress() %></td>   
                            <td>MSN</td>    
                            <%if(jiebao.getMsn()==null||jiebao.getMsn().equals("")){%>
                            	<td width="250"> </td> 
                          <%  }else{%>
                        	  <td width="250"><%=jiebao.getMsn()%></td> 
                      <%    }
                            %>
                                              
                         </tr>
                         <tr>
                            <td>职业</td>    
                            <td><%=jiebao.getOccupation() %></td> 
                            <td>生涯</td>    
                            <td><%=jiebao.getWorklife() %></td>                    
                         </tr>
                         <tr>
                            <td>状态</td>    
                            <td><%=jiebao.getSate() %></td>   
                            <td>单位</td>    
                            <td><%=jiebao.getWorkunit() %></td>                  
                         </tr>
                         <tr>
                            <td>平台</td>    
                            <td><%=jiebao.getPlatform()%></td> 
                            <td>呢称</td>    
                            <td><%=login.getUsername() %></td>                    
                         </tr>
                      </table>
                </div><!--info end-->
            </div><!--personal statement end-->

  
        
            
            <hr>
            <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >手机网站模板</a></div>

            <!-- ===========================
            JOB EXPERIENCES
            ============================ -->
            
            <div id="job" class="row mobmid">
                <div class="col-sm-1">
                    <span class="secicon fa fa-briefcase"></span>
                </div><!--icon end-->

                <div class="col-sm-11">
                    <h3>项目案例</h3>

                    <%
                       DataProcess dp = new DataProcess();
                       String sql1=" select id,xmname,miaoshu,price from item where jbfid='"+jiebao.getId()+"' ";
                       Vector projects =new Vector();
                       projects=dp.getData(sql1);
          
                       for(int i=0;i<projects.size();i++){
                    	   Vector project= new Vector();
                    	   project=(Vector)projects.get(i);
                    	   String pid=(String)project.get(0);
                    	   DataProcess db=new DataProcess();
                    	   String sql2=" select state from feedback where projectid='"+pid+"'";
                           Vector states=db.getData(sql2);

                    	   Vector state=(Vector)states.get(0);
                    	   
                    %>
                    
                    <div class="row">
                        <div class="col-md-9">
                            <h4><a href='itemDetailServlet?id=<%=project.get(0) %>&&state=1'><%=project.get(1) %></a></h4>
                            
                            <table border="5px">
                               <tr>
                                  <td width="100" height="50">描述</td>
                                  <td width="250" height="50"><%=project.get(2) %></td>
                                  <td width="100" height="50">金额</td>
                                  <td width="150" height="50"><%=project.get(3) %></td>
                                  <td width="100" height="50">状态</td>
                                  <%
                                  if(state.get(0).equals("1")){%>
                                	  <td width="150" height="50">审核通过</td>
                                  <%}else{%>
                                	  <td width="150" height="50">未审核</td>
                                  <%}
                                  %>
                                  
                               </tr>
                            </table>
                        </div>

                        <div class="year col-md-3">
                            <p>申请的日期</p>
                        </div>
                    </div><!--Job 2 end-->
                    <hr>
                    <% }%>
             
                       
                </div>
            </div>
        </div>
        
      

    <!-- ===========================
    FOOTER
    =========================== -->
    <footer class="text-center">
        <!-- <p>More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>.
        </p>
 -->    </footer>

    <!--necessary scripts and plugins-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/evenfly.js"></script>
</body>

</html>