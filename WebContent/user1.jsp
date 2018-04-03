<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.db.*"%>
<%@page import="com.beans.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
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
        
        <% 
           //List<UserInfo> lists=(List<UserInfo>)request.getAttribute("userlist");
           String id= (String)request.getAttribute("userId");
           System.out.print(id);
           DataProcess dp = new DataProcess();
           String sql="select * from jiebao where id='"+id+"'";
           Vector vx =new Vector();
           vx=dp.getData(sql);
           Vector vv= (Vector)vx.get(0);
        %>
        <div id="header" class="row">
            <div class="col-sm-2">
                <img class="propic" src="img/bappy.jpg" alt="">
            </div>
            <!-- photo end-->

            <div class="col-sm-10">
                <div class="cv-title">
                    <div class="row">
                        <div class="col-sm-7">
                            <h1><%=vv.get(1) %></h1>
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
                   
                    <h2><%=vv.get(15) %></h2>
                </div><!-- Title end-->

                <!-- ===========================
                SOCIAL & CONTACT
                ============================ -->
                <div class="row">
                    <div class="col-sm-4">
                        <ul class="list-unstyled">
                            <!--<li><a href=""><span class="social fa fa-home"></span>EvenFly.com</a>-->
                            	<li><span class="social fa fa-mobile"></span><%=vv.get(6) %>
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
                            <li><span class="social fa fa-qq"></span><%=vv.get(9) %>
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
                             <li><span class="social fa fa-envelope-o"></span><%=vv.get(7) %>
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
                            <td width="250"><%=vv.get(3) %></td> 
                            <td>生日</td>    
                            <td><%=vv.get(4) %></td>                    
                         </tr>
                         <tr>
                            <td>住址</td>    
                            <td><%=vv.get(5) %></td>   
                            <td>MSN</td>    
                            <td width="250"><%=vv.get(8) %></td>                   
                         </tr>
                         <tr>
                            <td>职业</td>    
                            <td><%=vv.get(10) %></td> 
                            <td>生涯</td>    
                            <td><%=vv.get(11) %></td>                    
                         </tr>
                         <tr>
                            <td>状态</td>    
                            <td><%=vv.get(12) %></td>   
                            <td>单位</td>    
                            <td><%=vv.get(13) %></td>                  
                         </tr>
                         <tr>
                            <td>平台</td>    
                            <td><%=vv.get(14)%></td> 
                            <td>呢称</td>    
                            <td>666</td>                    
                         </tr>
                      </table>
                </div><!--info end-->
            </div><!--personal statement end-->

  
            <!--  
            <div id="education" class="row mobmid">
                
                <div class="col-sm-1">
                    <span class="secicon fa fa-graduation-cap"></span>
                </div>

            
                <div class="col-sm-11">
                    <h3>技能信息</h3>

                    <div class="row">
                        <div class="col-md-9">
                            <h4>MSc in Design &amp; Fine Art</h4>
                            <p class="sub"><a href="">Ideal Institute of Science and Technology</a>
                            </p>
                            <p>Studying all aspect of Graphic Design Including Advertising Design, Branding, Copy Exhibition Design, Ilustration, Information Design, Packaging Design and Website Design</p>
                        </div>

                        <div class="year col-md-3">
                            <p>1111  2009-2011</p>
                        </div>
                    </div>
                    
                    <hr>
                    
                    <div class="row">
                        <div class="col-md-9">
                            <h4>BSc in Graphic Design</h4>
                            <p class="sub"><a href="">Ideal Institute of Science and Technology</a>
                            </p>
                            <p>Studying all aspect of Graphic Design Including Advertising Design, Branding, Copy Exhibition Design, Ilustration, Information Design, Packaging Design and Website Design</p>
                        </div>

                        <div class="year col-md-3">
                            <p>2222  2006-2009</p>
                        </div>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-9">
                            <h4>Diploma in Graphic Design</h4>
                            <p class="sub"><a href="">Ideal Institute of Science and Technology</a>
                            </p>
                            <p>Studying all aspect of Graphic Design Including Advertising Design, Branding, Copy Exhibition Design, Ilustration, Information Design, Packaging Design and Website Design</p>
                        </div>

                        <div class="year col-md-3">
                            <p>33333 2003-2006</p>
                        </div>
                    </div>
                </div>
            </div>
            
            -->                
            
            
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
                       //DataProcess dp = new DataProcess();
                       String sql1=" select id,xmname,miaoshu,price from item where jbfid='"+id+"' ";
                       Vector v1 =new Vector();
                       v1=dp.getData(sql1);
          
                       for(int i=0;i<v1.size();i++){
                    	   Vector v2= new Vector();
                    	   v2=(Vector)v1.get(i);
                    	   String pid=(String)v2.get(0);
                    	   String sql2=" select state from feedback where projectid='"+pid+"'";
                           Vector v3=new Vector();
                           v3=dp.getData(sql2);
                           
                    	   Vector v4=new Vector();
                    	   v4=(Vector)v3.get(0);
                    %>
                    
                    <div class="row">
                        <div class="col-md-9">
                            <h4><a href='itemDetailServlet?id=<%=v2.get(0) %>'><%=v2.get(1) %></a></h4>
                            
                            <table border="5px">
                               <tr>
                                  <td width="100" height="50">描述</td>
                                  <td width="250" height="50"><%=v2.get(2) %></td>
                                  <td width="100" height="50">金额</td>
                                  <td width="150" height="50"><%=v2.get(3) %></td>
                                  <td width="100" height="50">反馈</td>
                                  <td width="150" height="50"><%=v4.get(0) %></td>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/evenfly.js"></script>
</body>

</html>