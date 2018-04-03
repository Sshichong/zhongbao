<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.db.DataProcess"%>
<%@page import="com.beans.Jiebao"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="login" class="com.beans.Login" scope="session" />
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Amaze后台管理系统模板HTML 表格页面 - cssmoban</title>
  <meta name="description" content="这是一个 table 页面">
  <meta name="keywords" content="table">
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
    <strong>Amaze</strong> <small>后台管理模板</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> <%=login.getUsername() %> <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="LoginOutServlet"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->

  <!-- sidebar end -->

  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">人员管理</strong> / <small>Person Management</small></div>
    </div>

    <div class="am-g">
      <div class="am-u-md-6 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
            <div class="am-btn-group am-btn-group-xs">
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 审核</button>
              <button type="button" class="am-btn am-btn-default" onClick="check()"><span class="am-icon-trash-o"></span> 删除</button>
            </div>

            <div class="am-form-group am-margin-left am-fl">
              <select>
                <option value="option1">所有类别</option>
                <option value="option2">IT业界</option>
                <option value="option3">数码产品</option>
                <option value="option3">笔记本电脑</option>
                <option value="option3">平板电脑</option>
                <option value="option3">只能手机</option>
                <option value="option3">超极本</option>
              </select>
            </div>
          </div>
        </div>
      </div>
      
      <div class="am-u-md-3 am-cf">
        <div class="am-fr">
        <form action="selectUserServlet" method="post">
          <div class="am-input-group am-input-group-sm">
          
            <input type="text" class="am-form-field" placeholder="请输入关键字" name="keyword">
                <span class="am-input-group-btn">
                  <button class="am-btn am-btn-default" type="submit">搜索</button>
                </span>
               
          </div>
        </div>
         </form>
      </div>
    </div>

    <div class="am-g">
      <div class="am-u-sm-12">
        <form class="am-form">
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th class="table-check"><input type="checkbox" name="select" id="select1" onClick="selectall()"/></th><th class="table-id">ID</th><th class="table-title">团队名称</th><th class="table-type">性别</th><th class="table-author">地址</th><th class="table-date">出生年月</th><th class="table-set">操作</th>
              </tr>
          </thead>
          <tbody>
            <%
          List<Jiebao> lists =(List<Jiebao>)request.getAttribute("jiebaos");
          DataProcess db=new DataProcess();
          Vector vector =new Vector();
          
          String sql ="select * from jiebao";
          vector =db.getData(sql);
          //out.print(vector);
          int count =0;
          Vector a =new Vector();
          if(lists==null){
          for(int i=0;i<vector.size();i++){
        	  count++;
        	  Vector v=(Vector)vector.get(i);
        	  a.add(v.get(0));
        	  %>
        	  <tr id="xmlist" name="xmlist">
              <td><input type="checkbox" name="atask" value="<%=v.get(0) %>" /></td>
              <td><%=v.get(0) %></td>
              <td><a href="userDetailServlet?id=<%=v.get(0)%>" target="blank"><%=v.get(1) %></a></td>
              <td><%=v.get(3) %></td>
              <td><%=v.get(5) %></td>
              <td><%=v.get(4) %></td>
              <td>
                <div class="am-btn-toolbar">
                
                    <div class="am-btn-group am-btn-group-xs" style="width: 100%;">
                    <button onClick="window.open('userDetailServlet?id=<%=v.get(0) %>')" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 详情</button>
                    <button onClick="window.open('ModifyProjectServlet?id=<%=v.get(0) %>')" class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-upload"></span> 上传</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-download"></span> 下载</button>
<%--                     <a href="DeleteProjectServlet?id=<%=v.get(0)%>" onclick="javascript:return del()"><button  class="am-btn am-btn-default am-btn-xs am-text-danger delete" ><span class="am-icon-trash-o"></span>删除</button></a> --%>
                     <button  class="am-btn am-btn-default am-btn-xs am-text-danger" ><a href="DeleteUserServlet?id=<%=v.get(0)%>" onClick="javascript:return del()" style="color:red"><span class="am-icon-trash-o"></span>删除</a></button>
                  </div>
                 
                </div>
              </td>
            </tr> 
       <%   }
          }else{
        	  for(int i=0;i<lists.size();i++){
        		  count++;
        	  %>
        		  <tr>
                  <td><input type="checkbox" name="atask" value="<%=lists.get(i).getId() %>" /></td>
                  <td><%=lists.get(i).getId() %></td>
                  <td><a href="userDetailServlet?id=<%=lists.get(i).getId()%>" target="blank"><%=lists.get(i).getName() %></a></td>
                  <td><%=lists.get(i).getSex()%></td>
                  <td><%=lists.get(i).getAddress()%></td>
                  <td><%=lists.get(i).getBirthday()%></td>
                  <td>
                    <div class="am-btn-toolbar">
                    
                        <div class="am-btn-group am-btn-group-xs" style="width: 100%;">
                        <button onClick="window.open('itemDetailServlet?id=<%=lists.get(i).getId() %>')" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 详情</button>
                        <button onClick="window.open('ModifyProjectServlet?id=<%=lists.get(i).getId() %>')" class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 编辑</button>
                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-upload"></span> 上传</button>
                        <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-download"></span> 下载</button>
    <%--                     <a href="DeleteProjectServlet?id=<%=v.get(0)%>" onclick="javascript:return del()"><button  class="am-btn am-btn-default am-btn-xs am-text-danger delete" ><span class="am-icon-trash-o"></span>删除</button></a> --%>
                         <button  class="am-btn am-btn-default am-btn-xs am-text-danger" ><a href="DeleteUserServlet?id=<%=lists.get(i).getId()%>" onClick="javascript:return del()" style="color:red"><span class="am-icon-trash-o"></span>删除</a></button>
                      </div>
                     
                    </div>
                  </td>
                </tr> 
       <% 	  }
          }
          %>
          </tbody>
        </table>
          <div class="am-cf">
  共<%=count %> 条记录
  <div class="am-fr">
    <ul class="am-pagination">
      <li class="am-disabled"><a href="#">«</a></li>
      <li class="am-active"><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">4</a></li>
      <li><a href="#">5</a></li>
      <li><a href="#">»</a></li>
    </ul>
  </div>
</div>
          <hr />
          <p>注：.....</p>
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
<script type="text/javascript">
//单条删除
function del() { 
	 var msg = "您真的确定要删除吗？\n\n请确认！"; 
	 if (confirm(msg)==true){ 
	  return true; 
	 }else{ 
	  return false; 
	 } 
	} 
	
	
//全选
function selectall()
{
 var mycheckbox=document.getElementById('select1');
var checkboxs=document.getElementsByName('atask');
for(var i=0;i<checkboxs.length;i++)
{
  checkboxs[i].checked=mycheckbox.checked;
}
} 

//批量删除
function check(){
if(!confirm("确定要删除这些记录吗？")){
return ;
}
var cks=document.getElementsByName("atask");
var str="";
//拼接所有的图书id
for(var i=0;i<cks.length;i++){
if(cks[i].checked){
str+=cks[i].value+";";
}
}
//去掉字符串末尾的‘;'
str=str.substring(0, str.length-1);
location.href="DeleteMoreUserServlet?id=" +str;
}

</script>
</body>
</html>
