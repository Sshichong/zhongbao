<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.beans.Team"%>
<%@page import="com.beans.Jiebao"%>
<%@page import="com.beans.Item"%>
<%@page import="java.util.*"%>
<jsp:useBean id="captainjiebao" class="com.beans.Jiebao" scope="request"/>
<jsp:useBean id="team" class="com.beans.Team" scope="request"/>
<!DOCTYPE html>
<html lang="">

<%
		List<Jiebao> members =(List<Jiebao>)request.getAttribute("members");
		List<Item> items =(List<Item>)request.getAttribute("items");
%>
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
            <<!-- div class="col-sm-2"> -->
                <%-- <img class="propic" src="/upload/<%=jiebao.getPicture() %>" alt="头像"> --%>
            <!-- </div> -->
            <!-- photo end-->

            <div class="col-sm-10">
                <div class="cv-title">
                    <div class="row">
                        <div class="col-sm-7">
                            <h1><%=team.getName() %></h1>
                        </div>
                        <div class="col-sm-5 text-right dl-share">
                            <!-- AddToAny BEGIN -->
                            <a class="a2a_dd btn btn-default" href=""><span class="fa fa-share "></span> Share</a>
                            <script type="text/javascript">
                                var a2a_config = a2a_config || {};
                                a2a_config.linkname = "Minimal CV by EvenFly";
                                a2a_config.num_services = 6;
                                a2a_config.prioritize = ["facebook", "twitter", "google_plus", "linkedin", "pinterest", "email"];
                            </script>
                            <script type="text/javascript" src="//static.addtoany.com/menu/page.js"></script>
                            <!-- AddToAny END -->

                            <a class="btn btn-success" href=""><span class="fa fa-download"></span> Download</a>
                        </div>
                    </div>
                    <h2><%=team.getIntroduction()%></h2>
                </div><!-- Title end-->

                <!-- ===========================
                SOCIAL & CONTACT
                ============================ -->
                <div class="row">
                    <div class="col-sm-4">
                        <ul class="list-unstyled">
                            <!--<li><a href=""><span class="social fa fa-home"></span>EvenFly.com</a>-->
                            	 <li><span class="social fa fa-male"></span>队长： <%=captainjiebao.getName() %>
                            </li>
                            
                           
                        </ul>
                    </div><!-- social 1st col end-->

                    <div class="col-sm-4">
                        <ul class="list-unstyled">
                         
                           <%--  <li><span class="social fa fa-qq"></span><%=jiebao.getQq() %> --%>
                            <li><span class="social fa fa-male"></span>成员人数：<%=team.getMembermun() %>
                            </li>
                        </ul>
                    </div><!-- social 2nd col end-->

                    <div class="col-sm-4">
                        <ul class="list-unstyled">
                          
                            <%--  <li><span class="social fa fa-envelope-o"></span><%=jiebao.getEmail() %> --%>
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
                    <h3>队长</h3>

                    <div class="row">
                        <div class="col-md-9">
                        <p class="sub"><a href="userDetailServlet?id=<%=captainjiebao.getId()%>"><%=captainjiebao.getName() %></a>
                            <!-- <h4>描述</h4> -->
                         
                        </div>

                       <!-- <div class="year col-md-3">
                            <p>2009-2011</p>
                        </div>-->
                    </div><!--Education & Certification 1 end-->
                    
                    <hr>
                    
                   <%--  <div class="row">
                        <div class="col-md-9">
                            <h4>功能需求</h4>
                            <!--<p class="sub"><a href="">Ideal Institute of Science and Technology</a>
                            </p>-->
                            <p><%=item.getFunction() %></p>
                        </div> --%>

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
                <div class="col-sm-1" style="clear:both">
                   <span class="secicon fa fa-briefcase"></span>
                   <!-- <span class="secicon fa fa-graduation-cap"></span>-->
                </div><!--icon end-->

                <div class="col-sm-11">
                    <h3>成员</h3>
                    <%
                    for(int i=0;i<members.size();i++){%>
                    	<p class="sub"><a href="userDetailServlet?id=<%=members.get(i).getId()%>"><%=members.get(i).getName() %></a>
                   <% }
                    %>
                   
                    
                </div><!--info end-->
            </div><!--personal statement end-->

            <hr>

            
            <!--<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >手机网站模板</a></div>
-->
            <!-- ===========================
            JOB EXPERIENCES
            ============================ -->
            <div id="job" class="row mobmid">
                <div class="col-sm-1">
                    <span class="secicon fa fa-user"></span>
                </div><!--icon end-->

                <div class="col-sm-11">
                    <h3>项目列表</h3>

                    <div class="row">
                        <div class="col-md-9">
                        <%
                        for(int i=0;i<items.size();i++){%>
                        	 <h4><%=items.get(i).getXmname() %></h4>
                            <p class="sub"><a href="itemDetailServlet?id=<%=items.get(i).getId()%>">详情</a>
                            </p>
                            <p><%=items.get(i).getMiaoshu() %></p>
                        </div>
                    <%    }
                        
                        %>
                           <!--  <h4>众包</h4>
                            <p class="sub"><a href="">详情</a>
                            </p>
                            <p>一个智能的接包系统</p>
                        </div>

                        <div class="year col-md-3">
                            <p>时间</p>
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
<!--         <p>More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>. -->
        </p>
    </footer>

    <!--necessary scripts and plugins-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/evenfly.js"></script>
</body>

</html>