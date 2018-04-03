<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.db.DataProcess"%>
<%@page import="com.beans.Item"%>
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
  <script src="js/jquery-1.11.1.min.js"></script>
</head>
<body>
<%-- <%
    String mess=(String)session.getAttribute("message");
    if("".equals(mess)  && mess==null){%>
         <p>111</p>
 <%   }
 else{%>
    <script type="text/javascript">
        alert("<%=mess%>");
</script>
 
<!--     session.setAttribute("message", "");  -->
<% }%> --%>
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
          <span class="am-icon-users"></span><%=login.getUsername() %> <span class="am-icon-caret-down"></span>
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
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">项目管理</strong> / <small>Project Management</small></div>
    </div>

    <div class="am-g">
      <div class="am-u-md-6 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
            <div class="am-btn-group am-btn-group-xs">
              <button type="button" class="am-btn am-btn-default" id="add" onClick=add()><span class="am-icon-plus"></span> 新增</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 审核</button>
              <button type="button" class="am-btn am-btn-default" onClick="check()"><span class="am-icon-trash-o" ></span> 删除</button>
            </div>

            <div class="am-form-group am-margin-left am-fl">
            <form id="www" action="">
              <select id="selecttype" onchange="seltype()">
                <option value="option1">所有类别</option>
                <option value="网站开发">网站开发</option>
                <option value="HTML5应用">HTML5应用</option>
                <option value="微信/小程序开发">微信/小程序开发</option>
                <option value="移动开发">移动开发</option>
                <option value="SDK/API开发">SDK/API开发</option>
                <option value="文档翻译">文档翻译</option>
                <option value="其他">其他</option>
              </select>
              </form>
            </div>
          </div>
        </div>
      </div>

      <div class="am-u-md-3 am-cf">
        <div class="am-fr">
        <form action="SelectProjectServlet" method="post">
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
          <table class="am-table am-table-striped am-table-hover table-main" >
            <thead>
              <tr>
                <th class="table-check"><input type="checkbox" name="select" id="select1" onClick="selectall()"/></th><th class="table-id">ID</th><th class="table-title">项目名称</th><th class="table-type">类别</th><th class="table-author">状态</th><th class="table-date">修改日期</th><th class="table-set">操作</th>
              </tr>
          </thead>
          <tbody>
          <%
          List<Item> lists =(List<Item>)request.getAttribute("items");
          DataProcess db=new DataProcess();
          Vector vector =new Vector();
          
          String sql ="select * from item";
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
              <td><a href="itemDetailServlet?id=<%=v.get(0)%>" target="blank"><%=v.get(1) %></a></td>
              <td><%=v.get(4) %></td>
              <td><%=v.get(8) %></td>
              <td><%=v.get(16) %></td>
              <td>
                <div class="am-btn-toolbar">
                
                    <div class="am-btn-group am-btn-group-xs" style="width: 100%;">
                    <button onClick="window.open('itemDetailServlet?id=<%=v.get(0) %>')" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 详情</button>
                    <button onClick="window.open('ModifyProjectServlet?id=<%=v.get(0) %>')" class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-upload"></span> 上传</button>
                    <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-download"></span> 下载</button>
<%--                     <a href="DeleteProjectServlet?id=<%=v.get(0)%>" onclick="javascript:return del()"><button  class="am-btn am-btn-default am-btn-xs am-text-danger delete" ><span class="am-icon-trash-o"></span>删除</button></a> --%>
                     <button  class="am-btn am-btn-default am-btn-xs am-text-danger" ><a href="DeleteProjectServlet?id=<%=v.get(0)%>" onClick="javascript:return del()" style="color:red"><span class="am-icon-trash-o"></span>删除</a></button>
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
                  <td><a href="itemDetailServlet?id=<%=lists.get(i).getId()%>" target="blank"><%=lists.get(i).getXmname() %></a></td>
                  <td><%=lists.get(i).getType()%></td>
                  <td>虹软有限公司</td>
                  <td><%=lists.get(i).getSttime() %></td>
                  <td>
                    <div class="am-btn-toolbar">
                    
                        <div class="am-btn-group am-btn-group-xs" style="width: 100%;">
                        <button onClick="window.open('itemDetailServlet?id=<%=lists.get(i).getId() %>')" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 详情</button>
                        <button onClick="window.open('ModifyProjectServlet?id=<%=lists.get(i).getId() %>')" class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 编辑</button>
                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-upload"></span> 上传</button>
                        <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-download"></span> 下载</button>
    <%--                     <a href="DeleteProjectServlet?id=<%=v.get(0)%>" onclick="javascript:return del()"><button  class="am-btn am-btn-default am-btn-xs am-text-danger delete" ><span class="am-icon-trash-o"></span>删除</button></a> --%>
                         <button  class="am-btn am-btn-default am-btn-xs am-text-danger" ><a href="DeleteProjectServlet?id=<%=lists.get(i).getId()%>" onClick="javascript:return del()" style="color:red"><span class="am-icon-trash-o"></span>删除</a></button>
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
  共 <%=count %> 条记录
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

<div id="showMsg"> </div>

<footer>
  <hr>
  <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>
<script>
   /* function selectall()
   {
      var mycheckbox=document.getElementById('select1');
   var checkboxs=document.getElementsByName('atask');
   for(var i=0;i<checkboxs.length;i++)
   {
       checkboxs[i].checked=mycheckbox.checked;
   }
   } */
</script>
</head>

<!-- <body>
 爱好 <br />
 <input type="checkbox" name="aihao" value="1"/>足球
 <input type="checkbox" name="aihao" value="2"/>乒乓球
 <input type="checkbox" name="aihao" value="3"/>羽毛球
 <input type="checkbox" name="aihao" value="4"/>篮球球
 <input type="checkbox" name="aihao" value="5"/>网球 <br />
 全选<input type="checkbox" name="select" id="select1" onclick="selectall()"/> -->

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
<script src="js/jquery-1.11.1.min.js"></script>

<script>

//下拉框提交 查询type
 /* function seltype(){
	var objSel = document.getElementById("selecttype");
	

	alert(objSel);
	document.getElementById("www").action="SelectProjectServlet?type="+objSel ;
	document.getElementById("www").submit();	
}  */
 function seltype(){  
		
    $.ajax({  
    type:"post",  
    url:"SelectProjectTypeServlet",  
    data:{type:$("#selecttype").val()},  
    statusCode: {404: function() {  
         alert('page not found'); }  
      }, 
       success : function(data) {  
//            window.location.href="admin-ProjectManagement.jsp";  
 		 $("#showMsg").val(data.msg)

//  			appendGood(data);
      }  
    
    });  
  }   
  
/*  function appendGood(result){
	  $("#xmlist").empty();
	  var size = parseInt(reuslt.length);
	  if(size>0){
		  var str="";
		  for(var i=0;i<size;i++){
			  var xm=result[i];
			  str+='<td><input type="checkbox" name="atask" value='+xm.id+' /></td>';
			  str+='<td>'+xm.name+'</td>';
			  str+=' <td><a href="itemDetailServlet?id='+xm.id+'" target="blank">'+xm.name+'</a></td>';
			  str+='<td>'+xm.type+'</td>';
			  str+='<td>虹软有限公司</td>';
			  str+='<td>'+xm.time+'</td>';
			  str+='<td><div class="am-btn-toolbar"><div class="am-btn-group am-btn-group-xs" style="width: 100%;">';
              str+='<button onClick="window.open(''itemDetailServlet?id='+xm.id+')" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 详情</button>';
              str+='<button onClick="window.open(''ModifyProjectServlet?id='+xm.id+')" class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 编辑</button>';
              str+='<button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-upload"></span> 上传</button>';
              str+='<button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-download"></span> 下载</button>';
              str+='<button  class="am-btn am-btn-default am-btn-xs am-text-danger" ><a href="DeleteProjectServlet?id='+xm.id+'" onClick="javascript:return del()" style="color:red"><span class="am-icon-trash-o"></span>删除</a></button>';
              str+='</div></div></td>';
		  }
		  $("#xmlist").append(str);
		  $("#xmlist").show();
	  }else{
		  $("#xmlist").hide();
	  }
  }  */
  
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
/* 
	$("#select1").click( 
	        function(){ 
	        if(this.checked){ 
	        $("input[name='atask']").each(function(){this.checked=true;}); 
	        }else{ 
	        $("input[name='atask']").each(function(){this.checked=false;}); 
	        } 
	        } 
	        );

	});
 */



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
 location.href="DeleteMoreProjectServlet?id=" +str;
 }


    
</script>
<script>



        
        //新增按钮
        function add(){
        	window.open("admin-AddProject.jsp");
        }
        
        //单条删除
        function del() { 
        	 var msg = "您真的确定要删除吗？\n\n请确认！"; 
        	 if (confirm(msg)==true){ 
        	  return true; 
        	 }else{ 
        	  return false; 
        	 } 
        	} 
        function createXmlHttpRequest(){
           var xmlHttp;
           try{    //Firefox, Opera 8.0+, Safari
                   xmlHttp=new XMLHttpRequest();
            }catch (e){
                   try{    //Internet Explorer
                          xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
                    }catch (e){
                          try{
                                  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
                          }catch (e){}  
                   }
            }
           return xmlHttp;
        }
    </script>
</body>
</html>
