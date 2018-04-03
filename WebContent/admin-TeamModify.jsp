<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.db.DataProcess"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.beans.Team" %>
<%@page import="com.beans.Jiebao" %>
<jsp:useBean id="team" class="com.beans.Team" scope="request"/>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Amaze UI Admin user Examples</title>
  <meta name="description" content="这是一个 user 页面">
  <meta name="keywords" content="user">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="assets/css/admin.css">
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>Amaze UI</strong> <small>后台管理模板</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
 

  <!-- content start -->
  <div class="admin-content">
    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">项目资料</strong> / <small>Project information</small></div>
    </div>

    <hr/>

    <div class="am-g">

      <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
       


      </div>

      <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
        <form class="am-form am-form-horizontal" action="EditTeamServlet"  method="post">
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">团队名称 / TeamName</label>
            <div class="am-u-sm-9">
              <input type="text" id="TeamName" name="TeamName" placeholder="团队名称 / TeamName" value="<%=team.getName()%>">
             
            </div>
          </div>

       
<%

		String sql ="select * from jiebao where id ="+team.getCaptainid()+"";
            		DataProcess cdb =new DataProcess();
            		Vector captains=cdb.getData(sql);
            		Vector captain =(Vector)captains.get(0);          		
            		
%>
<div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">队长名称 / CaptainName</label>
            <div class="am-u-sm-9">
              <input type="text" id="CaptainName" name="CaptainName" placeholder="队长名称 / CaptainName" value="<%=captain.get(1)%>" />
             
            </div>
          </div>
          <%
          String []memberids=team.getMemberid().split(";");
            		Vector membernames=new Vector();
            		for(int i=0;i<memberids.length;i++){
            			int id = Integer.parseInt(memberids[i]);
            			String sql1="select * from jiebao where id ="+id+"";
            			DataProcess mdb=new DataProcess();
            			Vector members =mdb.getData(sql1);
            			Vector member =(Vector)members.get(0);
            			
            			membernames.add(member.get(1));
            		}
            		String strname ="";
            		for(int j=0;j<membernames.size();j++){
            			if(j==membernames.size()-1){
            				strname+=membernames.get(j);
            				continue;
            			}
            			strname+=membernames.get(j);
            			strname+=";";
            		}
          %>
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">队员名称 / MemberName</label>
            <div class="am-u-sm-9">
              <input type="text" id="MemberName" name="MemberName" placeholder="队员名称 / MemberName" value="<%=strname%>">
              
            </div>
          </div>
          <%
          String []projectids=team.getProjectid().split(";");
            		Vector projectnames=new Vector();
            		for(int i=0;i<projectids.length;i++){
            			int id = Integer.parseInt(projectids[i]);
            			String sql1="select * from item where id="+id+"";
            			DataProcess pdb=new DataProcess();
            			Vector projects =pdb.getData(sql1);
            			Vector project =(Vector)projects.get(0);
            			
            			projectnames.add(project.get(1));
            		}
            		String strpname="";
            		for(int j=0;j<projectnames.size();j++){
            			if(j==projectnames.size()-1){
            				strpname+=projectnames.get(j);
            				continue;
            			}
            			strpname+=projectnames.get(j);
            			strpname+=";";
            		}
          %>
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">参加项目 / ProjectName</label>
            <div class="am-u-sm-9">
              <input type="text" id="ProjectName" name="ProjectName" placeholder="参加项目 / ProjectName" value="<%=strpname%>">
              
            </div>
          </div>
      
          
          

          <div class="am-form-group">
            <label for="user-intro" class="am-u-sm-3 am-form-label">团队简介 / Introduction</label>
            <div class="am-u-sm-9">
              <textarea class="" rows="5" id="Introduction" name="Introduction" placeholder="团队简介 / Introduction"><%=team.getIntroduction() %></textarea>
             
            </div>
          </div>

          <div class="am-form-group">
            <div class="am-u-sm-9 am-u-sm-push-3">
              <button type="submit" class="am-btn am-btn-primary" >添加</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- content end -->

</div>

<footer>
  <hr>
  <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="assets/js/app.js"></script>
</body>
</html>
