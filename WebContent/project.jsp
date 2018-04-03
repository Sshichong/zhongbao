<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.beans.Item"%>
<%@page import="com.db.DataProcess" %>
<%@page import="java.util.*" %>
<%@page import="com.beans.Jiebao" %>
<jsp:useBean id="item" class="com.beans.Item" scope="request"/>
<!DOCTYPE html>
<html lang="">


<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script  src="js/jquery-1.10.2.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/evenfly.js"></script>
    <!-- ==================================================================================================================== -->
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
    
    <link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
	 .demo{
		padding: 2em 0;
		/*background: linear-gradient(to right, #2c3b4e, #4a688a, #2c3b4e);*/
		  }
		  .progress{
			  height: 25px;
			  background: #262626;
			  padding: 5px;
			  overflow: visible;
			  border-radius: 20px;
			  border-top: 1px solid #000;
			  border-bottom: 1px solid #7992a8;
			/*   margin-top: 50px;  */
		  }
		  .progress .progress-bar{
			  border-radius: 20px;
			  position: relative;
			  animation: animate-positive 2s;
		  }
		  .progress .progress-value{
			  display: block;
			  padding: 3px 7px;
			  font-size: 13px;
			  color: #fff;
			  border-radius: 4px;
			  background: #191919;
			  border: 1px solid #000;
			  position: absolute;
			  top: -40px;
			  right: -10px;
		  }
		  .progress .progress-value:after{
			  content: "";
			  border-top: 10px solid #191919;
			  border-left: 10px solid transparent;
			  border-right: 10px solid transparent;
			  position: absolute;
			  bottom: -6px;
			  left: 26%;
		  }
		  .progress-bar.active{
			  animation: reverse progress-bar-stripes 0.40s linear infinite, animate-positive 2s;
		  }
		  @-webkit-keyframes animate-positive{
			  0% { width: 0; }
		  }
		  @keyframes animate-positive{
			  0% { width: 0; }
		  }
</style>
</head>

<body>
    <div class="container">
        <!-- ===========================
        HEADER
        ============================ -->
        <div id="header" class="row">
           <!--  <div class="col-sm-2">
              <img class="propic" src="img/bappy.jpg" alt="">
            </div> -->
            <!-- photo end-->


            <div class="col-sm-10">
                <div class="cv-title">
                    <div class="row">
                        <div class="col-sm-7">
                            <h1><%=item.getXmname() %></h1>
                        </div>
                        <div class="col-sm-5 text-right dl-share">
                            <!-- AddToAny BEGIN -->
                            <% if(item.getState().equals("已完成")){%>
                            	 <h2 style="color:red"><%=item.getState() %></h2>
                           <% }else if(item.getState().equals("报名中")){%>
                        	   <h2 style="color:green"><%=item.getState() %></h2>
                        <%   } else{ %>
                        	   <h2 style="color:blue"><%=item.getState() %></h2>
                          <% }%>
                           
                           <!--  <a class="a2a_dd btn btn-default" href=""><span class="fa fa-share "></span> Share</a> -->
                           <!--  <script type="text/javascript">
                                var a2a_config = a2a_config || {};
                                a2a_config.linkname = "Minimal CV by EvenFly";
                                a2a_config.num_services = 6;
                                a2a_config.prioritize = ["facebook", "twitter", "google_plus", "linkedin", "pinterest", "email"];
                            </script>
                            <script type="text/javascript" src="//static.addtoany.com/menu/page.js"></script> -->
                            <!-- AddToAny END -->

                          <!--   <a class="btn btn-success" href=""><span class="fa fa-download"></span> Download</a> -->
                        </div>
                    </div>
                    <h2><%=item.getType() %></h2>
                </div><!-- Title end-->

                <!-- ===========================
                SOCIAL & CONTACT
                ============================ -->
                <div class="row">
                    <div class="col-sm-4">
                        <ul class="list-unstyled">
                            <!--<li><a href=""><span class="social fa fa-home"></span>EvenFly.com</a>-->
                            	<li><span class="social fa fa-clock-o"></span><%=item.getCycle() %>
                            </li>
                            <li><span class="social fa fa-male"></span><%=item.getNeed() %>
                            </li>
                             <li><span class="social fa fa-wrench"></span><%=item.getAbility() %>
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
                            <li><span class="social fa fa-map-marker"></span><%=item.getAddress() %>
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
                             <li><span class="social fa fa-calendar"></span><%=item.getSttime() %>
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
        	<div id="education" class="row mobmid">
                <div class="col-sm-1">
                    <span class="secicon fa fa-graduation-cap"></span>
                    <!--<span class="secicon fa fa-briefcase"></span>-->
                </div><!--icon end-->

                <div class="col-sm-11">
                    <h3>需求描述</h3>

                    <div class="row">
                        <div class="col-md-9">
                            <h4>描述</h4>
                           <!-- <p class="sub"><a href="">定义定义定义定义介绍</a>
                            </p>-->
                            <p ><%=item.getMiaoshu() %></p>
                        </div>

                       <!-- <div class="year col-md-3">
                            <p>2009-2011</p>
                        </div>-->
                    </div><!--Education & Certification 1 end-->
                    
                    <hr>
                    
                    <div class="row">
                        <div class="col-md-9">
                            <h4>功能需求</h4>
                            <!--<p class="sub"><a href="">Ideal Institute of Science and Technology</a>
                            </p>-->
                            <p><%=item.getFunction() %></p>
                        </div>

                        <!--<div class="year col-md-3">
                            <p>2006-2009</p>
                        </div>-->
                    </div><!--Education & Certification 2 end-->

                    <hr>

                    <!-- <div class="row">
                        <div class="col-md-9">
                            <h4>Diploma in Graphic Design</h4>
                            <p class="sub"><a href="">Ideal Institute of Science and Technology</a>
                            </p>
                            <p>Studying all aspect of Graphic Design Including Advertising Design, Branding, Copy Exhibition Design, Ilustration, Information Design, Packaging Design and Website Design</p>
                        </div>

                        <div class="year col-md-3">
                            <p>2003-2006</p>
                        </div>
                    </div> --><!--Education & Certification 3 end-->
                </div>
            </div><!--Education & Certifications end-->
            
            <hr>
        	
        	
            <div id="statement" class="row mobmid">
                <div class="col-sm-1">
                   <span class="secicon fa fa-briefcase"></span>
                   <!-- <span class="secicon fa fa-graduation-cap"></span>-->
                </div><!--icon end-->

                <div class="col-sm-11">
                    <h3>附件</h3>
                    <h4>详细附件</h4>
                   <%--  <img alt="图" src="/upload/<%=item.getEnclosure() %>" width="200px"  /> --%>
                   <a src="/upload/<%=item.getEnclosure() %>"> <%=item.getEnclosure() %></a>
                    
                     <hr>
                       <h4>项目附件</h4>
                       <form action="TaskStepServlet" enctype="multipart/form-data" method="post">
                       <input value="<%=item.getId()%>" style="display: none" name="id" />
                  <%
                  String []steps =item.getTaskstep().split(";");
                 // out.print(item.getTaskenclosure());
                  String []e=item.getTaskenclosure().split(";");
                  if(item.getState().trim().equals("实施中")){
                  for(int i=0;i<steps.length;i++){%>
                 
                	  <p><%=steps[i] %>:<%
                	  for(int j=0;j<e.length;j++){
                    	  String []ee=e[j].split("-");
                    	  //out.print(ee.length);
                    	  //out.print(e[j]);
                    	  String step="step"+(i+1);
                    	 // out.print(step);
                    	  if(step.equals(ee[0])){
                    		 //out.print(e[j]);%>
                    		<a href="DownloadServlet?name=<%=e[j] %>"><%=e[j] %></a>&nbsp;&nbsp;&nbsp;&nbsp;
                    <%	  }
                      }
                	  
                	  %>
                	  </p><input type="file" name="file"> 
                	 
                <%  }
                  %>
                  <button type="submit">提交</button>
                  </form>
                  <%}else if(item.getState().trim().equals("报名中")){
                	  for(int i=0;i<steps.length;i++){%>
                		  <p><%=steps[i] %>:</p>
                	  <%}
                  }else{
                      for(int i=0;i<steps.length;i++){%>
                      
                	  <p><%=steps[i] %>:<%
                	  for(int j=0;j<e.length;j++){
                    	  String []ee=e[j].split("-");
                    	  //out.print(ee.length);
                    	  //out.print(e[j]);
                    	  String step="step"+(i+1);
                    	 // out.print(step);
                    	  if(step.equals(ee[0])){
                    		 //out.print(e[j]);%>
                    		<a href="DownloadServlet?name=<%=e[j] %>"><%=e[j] %></a>&nbsp;&nbsp;&nbsp;&nbsp;
                    <%	  }
                      }
                	  
                	  %>
                	 
                	 
                <%  }
                  }%>
                </div><!--info end-->
            </div><!--personal statement end-->

            <hr>


                
                
                
            
            <!--<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >手机网站模板</a></div>
-->
            <!-- ===========================
            JOB EXPERIENCES
            ============================ -->
            <div id="job" class="row mobmid" style="clear:both" >
                <div class="col-sm-1">
                    <span class="secicon fa fa-user"></span>
                </div><!--icon end-->
                <%
                String sql ="select * from feedback where projectid="+item.getId()+"";
            	DataProcess db =new DataProcess();
            	Vector users =db.getData(sql);
            	Vector jiebaonames=new Vector();
            	Vector jiebaopics=new Vector();
            	Vector state =new Vector();
            	Vector jiebaoid=new Vector();
            	
            	for(int i=0;i<users.size();i++){
            		Vector user =(Vector)users.get(i);
            		String sql1="select * from jiebao where id="+user.get(1)+"";
            		DataProcess db1=new DataProcess();
            		Vector jiebaos=db1.getData(sql1);
            		//out.print(jiebaos);
            		Vector jiebao =(Vector)jiebaos.get(0);	
            		jiebaoid.add(user.get(1));
            		jiebaonames.add(jiebao.get(1));
            		jiebaopics.add(jiebao.get(2));	
            		state.add((String)user.get(3));
            		
            	}
                if(item.getState().equals("报名中")){
                	
                	%>
                	  <div class="col-sm-11">
                      <h3>报名列表</h3>

                      <div class="row">
                          <div class="col-md-9">
                              <h4>审核中</h4>
                              <%
                              for(int j=0;j<jiebaonames.size();j++){
                              if(state.get(j).equals("0")){%>
                              <div style="float:left;margin:10px">
                              <img alt="pic" src="/upload/<%=jiebaopics.get(j)%>" width="50px">
                              	<p ><%=jiebaonames.get(j) %></p>
<%--                               	<button type="button" class="am-btn am-btn-default"><a href="ChangeStateServlet?userid=<%=jiebaoid.get(j)%>&&state=<%=state.get(j)%>&&projectid=<%=item.getId()%>"><span class="am-icon-archive"></span> 确认</a></button> --%>
                              	</div>
                              <%
                              }
                             }
                               %>

                          </div>
                          
                          
                          <hr>
                           <div class="col-md-9">
                            <h4>审核通过</h4>
                               <%
                               for(int j=0;j<jiebaonames.size();j++){
                              	 if(state.get(j).equals("1")){%>
                              		 <div style="float:left;margin:10px">
                                       <img alt="pic" src="/upload/<%=jiebaopics.get(j)%>" width="50px">
                                       	<p ><%=jiebaonames.get(j) %></p>
                                      <%--  	<button type="button" class="am-btn am-btn-default"><a href="ChangeStateServlet?userid=<%=jiebaoid.get(j)%>&&state=<%=state.get(j)%>&&projectid=<%=item.getId()%>"><span class="am-icon-archive"></span> 取消</a></button> --%>
                                       	</div> 
                              	<% }
                               }
                               %>
                           </div>
            <%    }else if(item.getState().equals("实施中")){
            	
            	%>
            	 <div class="col-md-9">
                 <h3>实施人员</h3>
                    <%
                    for(int j=0;j<jiebaonames.size();j++){
                   	 if(state.get(j).equals("1")){%>
                   	
                   		
                   		<div  >
                            <img alt="pic" src="/upload/<%=jiebaopics.get(j)%>" width="80px">
                            	<p ><a href="userDetailServlet?id=<%=jiebaoid.get(j)%>"><%=jiebaonames.get(j) %></a></p>
                            	<%-- <p ><%=String.valueOf(item.getTaskcount()) %></p> --%>
                            	
                            	</div>
                            	<%
                            	String sql2="select * from feedback where userid="+jiebaoid.get(j)+"";
                            	DataProcess data =new DataProcess();
                            	Vector vectors=data.getData(sql2);
                            	Vector v =(Vector)vectors.get(0);
                            	double completed =Double.parseDouble((String)v.get(5));
                            	//out.print(completed);
                            	/* double sum=(double)item.getTaskcount(); */
                            	/* out.print(sum); */
                            	
                            	double present =completed/item.getTaskcount();
                            	//out.print(present);
                            	double strpresent =present*100;
                            	String l=String.valueOf(strpresent)+"%";
                            	%>
                            	
                            	<div class="progress" style="width:50%">
                            	
                            	
					<div class="progress-bar progress-bar-info progress-bar-striped active" style="width: <%=l%>">
						<div class="progress-value"> <%=l%></div>
					</div>
					</div>
					
				
                            	
                       
                            	
                            	
				
                            	
            
            	
            <% }  
                    }
            }
            
            else{
            	%>
            	 <div class="col-md-9">
                 <h3>完成人员</h3>
                    <%
                    for(int j=0;j<jiebaonames.size();j++){
                   	 if(state.get(j).equals("1")){%>
                   		 <div style="float:left;margin:10px">
                            <img alt="pic" src="/upload/<%=jiebaopics.get(j)%>" width="50px">
                            	<p ><%=jiebaonames.get(j) %></p>
                            	<%-- <button type="button" class="am-btn am-btn-default"><a href="ChangeStateServlet?userid=<%=jiebaoid.get(j)%>&&state=<%=state.get(j)%>&&projectid=<%=item.getId()%>"><span class="am-icon-archive"></span> 取消</a></button> --%>
                            	</div> 
            	
       <%     }
            	
                    }
            }
                	
                
                %>

<%-- <%
String sql ="select * from feedback where projectid="+item.getId()+"";
DataProcess db =new DataProcess();
Vector users =db.getData(sql);
Vector jiebaonames=new Vector();
Vector jiebaopics=new Vector();
Vector state =new Vector();
Vector jiebaoid=new Vector();
for(int i=0;i<users.size();i++){
	Vector user =(Vector)users.get(i);
	String sql1="select * from jiebao where id="+user.get(1)+"";
	DataProcess db1=new DataProcess();
	Vector jiebaos=db1.getData(sql1);
	//out.print(jiebaos);
	Vector jiebao =(Vector)jiebaos.get(0);	
	jiebaoid.add(user.get(1));
	jiebaonames.add(jiebao.get(1));
	jiebaopics.add(jiebao.get(2));	
	state.add((String)user.get(3));
	
}


%>
                <div class="col-sm-11">
                    <h3>报名列表</h3>

                    <div class="row">
                        <div class="col-md-9">
                            <h4>审核中</h4>
                            <%
                            for(int j=0;j<jiebaonames.size();j++){
                            if(state.get(j).equals("0")){%>
                            <div style="float:left;margin:10px">
                            <img alt="pic" src="/upload/<%=jiebaopics.get(j)%>" width="50px">
                            	<p ><%=jiebaonames.get(j) %></p>
                            	<button type="button" class="am-btn am-btn-default"><a href="ChangeStateServlet?userid=<%=jiebaoid.get(j)%>&&state=<%=state.get(j)%>&&projectid=<%=item.getId()%>"><span class="am-icon-archive"></span> 确认</a></button>
                            	</div>
                            <%
                            }
                           }
                             %>
                            
                            <!-- <p class="sub"><a href="">Lifeview Media Ltd.</a>
                            </p>
                            <p> 1</p> -->
                        </div>
                        
                        
                        <hr>
                         <div class="col-md-9">
                          <h4>审核通过</h4>
                             <%
                             for(int j=0;j<jiebaonames.size();j++){
                            	 if(state.get(j).equals("1")){%>
                            		 <div style="float:left;margin:10px">
                                     <img alt="pic" src="/upload/<%=jiebaopics.get(j)%>" width="50px">
                                     	<p ><%=jiebaonames.get(j) %></p>
                                     	<button type="button" class="am-btn am-btn-default"><a href="ChangeStateServlet?userid=<%=jiebaoid.get(j)%>&&state=<%=state.get(j)%>&&projectid=<%=item.getId()%>"><span class="am-icon-archive"></span> 取消</a></button>
                                     	</div> 
                            	<% }
                             }
                             %>
                         </div> --%>




                       <!--  <div class="year col-md-3">
                            <p>2008 - present</p>
                        </div> -->
                    </div><!--Job 1 end-->
                    
                   <!--  <hr>
                    
                    <div class="row">
                        <div class="col-md-9">
                            <h4>Sr. Graphic Designer</h4>
                            <p class="sub"><a href="">Softech solution ltd.</a>
                            </p>
                            <p>Studying all aspect of Graphic Design Including Advertising Design, Branding, Copy Exhibition Design, Ilustration, Information Design, Packaging Design and Website Design</p>
                        </div>

                        <div class="year col-md-3">
                            <p>2006-2008</p>
                        </div>
                    </div>Job 2 end
                    
                    <hr>
                    
                       <div class="row">
                        <div class="col-md-9">
                            <h4>Jr. Graphic Designer</h4>
                            <p class="sub"><a href="">TwinTwin Design Solution</a>
                            </p>
                            <p>Studying all aspect of Graphic Design Including Advertising Design, Branding, Copy Exhibition Design, Ilustration, Information Design, Packaging Design and Website Design</p>
                        </div>

                        <div class="year col-md-3">
                            <p>2003-2006</p>
                        </div> -->
                    </div><!--Job 3 end-->
                </div><!--Job experiences end-->
            </div><!--Job experiences end-->
        </div><!--left end-->
        
        <!-- ===========================
        SIDEBAR
        =========================== -->
        <!--<div class="col-md-4 mainright">-->
           <!-- <div class="row">
                <div class="col-sm-1 col-md-2 mobmid">
                    <span class="secicon fa fa-magic"></span>
                </div>--><!--icon end-->

                <!--<div class="col-sm-11 col-md-10">
                    <h3 class="mobmid">Technical skills </h3>

                    <p>Photoshop</p>
                    <div class="progress">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: 65%">
                            <span class="sr-only">65% Complete (success)</span>
                        </div>
                    </div>--><!--skill end-->


                    <!--<p>Illustrator</p>
                    <div class="progress">
                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                            <span class="sr-only">85% Complete</span>
                        </div>
                    </div>--><!--skill end-->

                    <!--<p>InDesign</p>
                    <div class="progress">
                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                            <span class="sr-only">60% Complete (warning)</span>
                        </div>
                    </div>--><!--skill end-->

                    <!--<p>Flash</p>
                    <div class="progress">
                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                            <span class="sr-only">30% Complete (danger)</span>
                        </div>
                    </div>--><!--skill end-->
                <!--</div>--><!--info end-->
           <!-- </div>--><!--tech skills end-->
            
          <!--  <hr>-->

            <!--<div class="row mobmid">
                <div class="col-sm-1 col-md-2">
                    <span class="secicon fa fa-trophy"></span>
                </div>--><!--icon end-->

                <!--<div class="col-sm-11 col-md-10 ">
                    <h3>Awards</h3>

                    <div class="award">
                        <h4>Best Designer 2012</h4>
                        <p class="sub"><a href="">Life View Media Ltd.</a></p>
                        <p>Studying all aspect of Graphic Design Including Advertising Design, Branding, Copy Exhibition Design, Ilustration.</p>
                    </div>-->
                    <!--1st award end-->

                   <!-- <div class="award">
                        <h4>Best Designer 2011</h4>
                        <p class="sub"><a href="">Alexa Design Solution</a></p>
                        <p>Studying all aspect of Graphic Design Including Advertising Design, Branding, Copy Exhibition Design, Ilustration, Information Design, Packaging Design and Website Design</p>
                    </div>--><!--1st award end-->
               <!-- </div>--><!--awards end-->

           <!-- </div>-->
            
          <!--  <hr>-->

            <!--<div class="row ">
                <div class="col-sm-1 col-md-2 mobmid">
                    <span class="secicon fa fa-quote-left"></span>
                </div>--><!--icon end-->

               <!-- <div class="col-sm-11 col-md-10 testimonials">
                    <h3 class="mobmid">Testimonials </h3>

                    <div class="row">
                        <blockquote>
                            <p>Sit amet, consectetur adipisicing elit. Fuga quidem ipsum maiores necessitatibus sint, porro temporibus labore, amet officia unde libero eligendi? Porro dolorum itaque, facere harum amet, rem libero.</p>
                        </blockquote>
                        <img src="img/mushfiq.jpg" alt="">
                        <h4>Mushfiqul Islam</h4>
                        <p>The UX Votch</p>
                    </div>--><!--1st testimonial end-->

                    <!--<div class="row">
                        <blockquote>
                            <p>Consectetur adipisicing elit. Fuga quidem ipsum maiores necessitatibus sint, porro temporibus labore, unde libero eligendi? Porro dolorum itaque, facere harum amet, rem libero.</p>
                        </blockquote>
                        <img src="img/siblu.jpg" alt="">
                        <h4>E.A. Siblu</h4>
                        <p>The Jatir Vobisshot</p>
                    </div>--><!--2nd testimonial end-->

                    <!--<div class="row">
                        <blockquote>
                            <p>Fuga quidem ipsum maiores necessitatibus sint, porro temporibus labore, amet officia unde libero eligendi? Porro dolorum itaque, facere harum amet, rem libero.</p>
                        </blockquote>
                        <img src="img/nasir.jpg" alt="">
                        <h4>Nasir Uddin</h4>
                        <p>The Cute Huzur</p>
                    </div>--><!--3rd testimonial end-->
                <!--</div>--><!--testimonials end-->
            <!--</div>--><!--tech skills end-->
        <!--</div>--><!--right end-->
    </div><!--container end-->

    <!-- ===========================
    FOOTER
    =========================== -->
    <footer class="text-center">
        <p>More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>.
        </p>
    </footer>

    <!--necessary scripts and plugins-->
    
    <script type="text/javascript">
    //审核按钮examine
    function examine(){  
		
        $.ajax({  
        type:"post",  
        url:"SelectProjectTypeServlet",  
        data:{type:$("#selecttype").val()},  
        statusCode: {404: function() {  
             alert('page not found'); }  
          }, 
           success : function(data) {  
//                window.location.href="admin-ProjectManagement.jsp";  
     		 $("#showMsg").val(data.msg)

//      			appendGood(data);
          }  
        
        });  
      }   
    </script>
</body>

</html>