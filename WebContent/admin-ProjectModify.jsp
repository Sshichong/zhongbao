<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.db.DataProcess"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="item" class="com.beans.Item" scope="request"/>
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
       
       <%
       out.print(item.getAbility());
       %>
       <%-- <jsp:getProperty name="item" property="*" />  --%> 
      </div>

      <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
        <form class="am-form am-form-horizontal" action="EditProjectServlet" enctype="multipart/form-data" method="post">
        <input type="hidden" value="<%=item.getId()  %>" name="id" />
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">项目名称 / TeamName</label>
            <div class="am-u-sm-9">
              <input type="text" id="projectname" name="projectname" placeholder="项目名称 / TeamName" value="<%=item.getXmname()%>">
             
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-email" class="am-u-sm-3 am-form-label">分类 / Sort</label>
            <div class="am-u-sm-9">
            <%if(item.getSort().trim().equals("整包")){%>
            	 <select name="sort">
                 <option value="option1" >所有分类</option>
                 <option value="整包" selected>整包</option>
                 <option value="悬赏">悬赏</option>
                 <option value="兼职">兼职</option>
               </select>
           <% } else if(item.getSort().trim().equals("悬赏")){%>
            	 <select name="sort">
                 <option value="option1" >所有分类</option>
                 <option value="整包">整包</option>
                 <option value="悬赏" selected>悬赏</option>
                 <option value="兼职">兼职</option>
               </select>
           <% }else {%>
            	 <select name="sort">
                 <option value="option1" >所有分类</option>
                 <option value="整包">整包</option>
                 <option value="悬赏">悬赏</option>
                 <option value="兼职" selected>兼职</option>
               </select>
            <%}%>
            <!-- 
              <select name="sort">
                <option value="option1" selected>所有分类</option>
                <option value="整包">整包</option>
                <option value="悬赏">悬赏</option>
                <option value="兼职">兼职</option>
              </select> -->
           
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-phone" class="am-u-sm-3 am-form-label">类别 / Type</label>
            <div class="am-u-sm-9">
            <%
            if(item.getType().trim().equals("网站开发")){%>
            	<select name="type">
                <option value="option1" >所有类别</option>
                <option value="网站开发" selected>网站开发</option>
                <option value="HTML5应用">HTML5应用</option>
                <option value="微信/小程序开发">微信/小程序开发</option>
                <option value="移动开发">移动开发</option>
                <option value="SDK/API开发">SDK/API开发</option>
                <option value="文档翻译">文档翻译</option>
                <option value="其他">其他</option>
              </select> 
          <%  }else if(item.getType().trim().equals("HTML5应用")){%>
            	<select name="type">
                <option value="option1" >所有类别</option>
                <option value="网站开发">网站开发</option>
                <option value="HTML5应用" selected>HTML5应用</option>
                <option value="微信/小程序开发">微信/小程序开发</option>
                <option value="移动开发">移动开发</option>
                <option value="SDK/API开发">SDK/API开发</option>
                <option value="文档翻译">文档翻译</option>
                <option value="其他">其他</option>
              </select> 
         <%   }else if(item.getType().trim().equals("微信/小程序开发")){%>
            	<select name="type">
                <option value="option1" >所有类别</option>
                <option value="网站开发">网站开发</option>
                <option value="HTML5应用">HTML5应用</option>
                <option value="微信/小程序开发" selected>微信/小程序开发</option>
                <option value="移动开发">移动开发</option>
                <option value="SDK/API开发">SDK/API开发</option>
                <option value="文档翻译">文档翻译</option>
                <option value="其他">其他</option>
              </select> 
         <%   }else if(item.getType().trim().equals("移动开发")){%>
            	<select name="type">
                <option value="option1" >所有类别</option>
                <option value="网站开发">网站开发</option>
                <option value="HTML5应用">HTML5应用</option>
                <option value="微信/小程序开发">微信/小程序开发</option>
                <option value="移动开发" selected>移动开发</option>
                <option value="SDK/API开发">SDK/API开发</option>
                <option value="文档翻译">文档翻译</option>
                <option value="其他">其他</option>
              </select> 
          <%  }else if(item.getType().trim().equals("SDK/API开发")){ %>
            	<select name="type">
                <option value="option1" >所有类别</option>
                <option value="网站开发">网站开发</option>
                <option value="HTML5应用">HTML5应用</option>
                <option value="微信/小程序开发">微信/小程序开发</option>
                <option value="移动开发">移动开发</option>
                <option value="SDK/API开发" selected>SDK/API开发</option>
                <option value="文档翻译">文档翻译</option>
                <option value="其他">其他</option>
              </select> 
        <%    }else if(item.getType().trim().equals("文档翻译")){ %>
            	<select name="type">
                <option value="option1" >所有类别</option>
                <option value="网站开发">网站开发</option>
                <option value="HTML5应用">HTML5应用</option>
                <option value="微信/小程序开发">微信/小程序开发</option>
                <option value="移动开发">移动开发</option>
                <option value="SDK/API开发">SDK/API开发</option>
                <option value="文档翻译" selected>文档翻译</option>
                <option value="其他">其他</option>
              </select> 
         <%   }else{ %>
            	<select name="type">
                <option value="option1" >所有类别</option>
                <option value="网站开发">网站开发</option>
                <option value="HTML5应用">HTML5应用</option>
                <option value="微信/小程序开发">微信/小程序开发</option>
                <option value="移动开发">移动开发</option>
                <option value="SDK/API开发">SDK/API开发</option>
                <option value="文档翻译">文档翻译</option>
                <option value="其他" selected>其他</option>
              </select> 
        <%    }
            %>
         <!--   <select name="type">
                <option value="option1" selected>所有类别</option>
                <option value="网站开发">网站开发</option>
                <option value="HTML5应用">HTML5应用</option>
                <option value="微信/小程序开发">微信/小程序开发</option>
                <option value="移动开发">移动开发</option>
                <option value="SDK/API开发">SDK/API开发</option>
                <option value="文档翻译">文档翻译</option>
                <option value="其他">其他</option>
              </select>  -->
              <!-- <input type="email" id="user-phone" placeholder="输入你的电话号码 / Telephone"> -->
            </div>
          </div>


<div class="am-form-group">
            <label for="user-weibo" class="am-u-sm-3 am-form-label">状态 / State</label>
            <div class="am-u-sm-9">
            <%
            if(item.getState().trim().equals("报名中")){%>
            	 <select name="state" id="state" class="form-control">
                 
                 <option >类型</option>
                 <option value="报名中" selected>报名中</option>
                 <option value="实施中">实施中</option>
                 <option value="已完成">已完成</option>
                 
             </select>
          <%  }else if(item.getState().trim().equals("实施中")){%>
            	 <select name="state" id="state" class="form-control">
                 
                 <option >类型</option>
                 <option value="报名中">报名中</option>
                 <option value="实施中" selected>实施中</option>
                 <option value="已完成">已完成</option>
                 
             </select>
       <%     }else{%>
            	 <select name="state" id="state" class="form-control">
                 
                 <option >类型</option>
                 <option value="报名中">报名中</option>
                 <option value="实施中">实施中</option>
                 <option value="已完成" selected>已完成</option>
                 
             </select>
         <%   }
            %>
           <!--  <select name="state" id="state" class="form-control">
                                        
                                        <option selected>类型</option>
                                        <option value="报名中">报名中</option>
                                        <option value="实施中">实施中</option>
                                        <option value="已完成">已完成</option>
                                        
                                    </select> -->
              
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-weibo" class="am-u-sm-3 am-form-label">地区 / Region</label>
            <div class="am-u-sm-9">
            <%
            if(item.getAddress().trim().equals("北京")){%>
            	<select name="Region" id="Region" class="form-control">
                
                <option >地区</option>
                <option value="北京" selected>北京</option>
                <option value="上海">上海</option>
                <option value="杭州">杭州</option>
                <option value="广州">广州</option>
                <option value="深圳">深圳</option>
                <option value="大连">大连</option>
                <option value="武汉">武汉</option>
                <option value="其他">其他</option>
                
                
            </select>
          <%  }else if(item.getAddress().trim().equals("上海")){%>
            	<select name="Region" id="Region" class="form-control">
                
                <option >地区</option>
                <option value="北京">北京</option>
                <option value="上海" selected>上海</option>
                <option value="杭州">杭州</option>
                <option value="广州">广州</option>
                <option value="深圳">深圳</option>
                <option value="大连">大连</option>
                <option value="武汉">武汉</option>
                <option value="其他">其他</option>
                
                
            </select>
         <%   }else if(item.getAddress().trim().equals("杭州")){%>
            	<select name="Region" id="Region" class="form-control">
                
                <option >地区</option>
                <option value="北京">北京</option>
                <option value="上海">上海</option>
                <option value="杭州" selected>杭州</option>
                <option value="广州">广州</option>
                <option value="深圳">深圳</option>
                <option value="大连">大连</option>
                <option value="武汉">武汉</option>
                <option value="其他">其他</option>
                
                
            </select>
         <%   }else if(item.getAddress().trim().equals("广州")){%>
            	<select name="Region" id="Region" class="form-control">
                
                <option >地区</option>
                <option value="北京">北京</option>
                <option value="上海">上海</option>
                <option value="杭州">杭州</option>
                <option value="广州" selected>广州</option>
                <option value="深圳">深圳</option>
                <option value="大连">大连</option>
                <option value="武汉">武汉</option>
                <option value="其他">其他</option>
                
                
            </select>
         <%   }else if(item.getAddress().trim().equals("深圳")){%>
            	<select name="Region" id="Region" class="form-control">
                
                <option >地区</option>
                <option value="北京">北京</option>
                <option value="上海">上海</option>
                <option value="杭州">杭州</option>
                <option value="广州">广州</option>
                <option value="深圳" selected>深圳</option>
                <option value="大连">大连</option>
                <option value="武汉">武汉</option>
                <option value="其他">其他</option>
                
                
            </select>
         <%   }else if(item.getAddress().trim().equals("大连")){%>
            	<select name="Region" id="Region" class="form-control">
                
                <option >地区</option>
                <option value="北京">北京</option>
                <option value="上海">上海</option>
                <option value="杭州">杭州</option>
                <option value="广州">广州</option>
                <option value="深圳">深圳</option>
                <option value="大连" selected>大连</option>
                <option value="武汉">武汉</option>
                <option value="其他">其他</option>
                
                
            </select>
          <%  }else if(item.getAddress().trim().equals("武汉")){%>
            	<select name="Region" id="Region" class="form-control">
                
                <option >地区</option>
                <option value="北京">北京</option>
                <option value="上海">上海</option>
                <option value="杭州">杭州</option>
                <option value="广州">广州</option>
                <option value="深圳">深圳</option>
                <option value="大连">大连</option>
                <option value="武汉" selected>武汉</option>
                <option value="其他">其他</option>
                
                
            </select>
          <%  }else{%>
            	<select name="Region" id="Region" class="form-control">
                
                <option >地区</option>
                <option value="北京">北京</option>
                <option value="上海">上海</option>
                <option value="杭州">杭州</option>
                <option value="广州">广州</option>
                <option value="深圳">深圳</option>
                <option value="大连">大连</option>
                <option value="武汉">武汉</option>
                <option value="其他" selected>其他</option>
                
                
            </select>
         <%   }
            %>
          <!--   <select name="Region" id="Region" class="form-control">
                                        
                                        <option selected>地区</option>
                                        <option value="北京">北京</option>
                                        <option value="上海">上海</option>
                                        <option value="杭州">杭州</option>
                                        <option value="广州">广州</option>
                                        <option value="深圳">深圳</option>
                                        <option value="大连">大连</option>
                                        <option value="武汉">武汉</option>
                                        <option value="其他">其他</option>
                                        
                                        
                                    </select> -->
              
            </div>
          </div>
          

          
          <div class="am-form-group">
            <label for="user-QQ" class="am-u-sm-3 am-form-label">所需技能 / Ability</label>
            <div class="am-u-sm-9 ">
           <%
          String[] s=item.getAbility().split(";");
//           out.print(s[0]);
			int counta=0;
			int countb=0;
			int countc=0;
			int countd=0;
			int counte=0;
			int countf=0;
			int countg=0;
			int counth=0;
			for(int i=0;i<s.length;i++){
				if(s[i].trim().equals("C")){
					counta++;
				}
			}
			if(counta==1){%>
				<input type="checkbox" name="ability" value="C" checked/>C&nbsp;&nbsp;&nbsp;&nbsp;
			<%}else{%>
				<input type="checkbox" name="ability" value="C"/>C&nbsp;&nbsp;&nbsp;&nbsp;
			<%}
			
			for(int i=0;i<s.length;i++){
				if(s[i].trim().equals("C#")){
					countb++;
				}
			}
			if(countb==1){%>
				 <input type="checkbox" name="ability" value="C#" checked/>C#&nbsp;&nbsp;&nbsp;&nbsp; 
			<%}else{ %>
				<input type="checkbox" name="ability" value="C#" />C#&nbsp;&nbsp;&nbsp;&nbsp;
		<%}
			
			for(int i=0;i<s.length;i++){
				if(s[i].trim().equals("JAVA")){
					countc++;
				}
			}
			if(countc==1){%>
				<input type="checkbox" name="ability" value="JAVA" checked/>JAVA&nbsp;&nbsp;&nbsp;&nbsp;
			<%}else{ %>
				<input type="checkbox" name="ability" value="JAVA" />JAVA&nbsp;&nbsp;&nbsp;&nbsp;
			<%}
			for(int i=0;i<s.length;i++){
				if(s[i].trim().equals("PHP")){
					countd++;
				}
			}
            if(countd==1){%>
            	 <input type="checkbox" name="ability" value="PHP" checked/>PHP&nbsp;&nbsp;&nbsp;&nbsp;
			<%}else{%>
				<input type="checkbox" name="ability" value="PHP" />PHP&nbsp;&nbsp;&nbsp;&nbsp; 
			<%}
			for(int i=0;i<s.length;i++){
				if(s[i].trim().equals("Python")){
					counte++;
				}
			}
			if(counte==1){%>
				<input type="checkbox" name="ability" value="Python" checked/>Python&nbsp;&nbsp;&nbsp;&nbsp; 	
			<%}else{ %>
				 <input type="checkbox" name="ability" value="Python" />Python&nbsp;&nbsp;&nbsp;&nbsp; 	
			<%}
			for(int i=0;i<s.length;i++){
				if(s[i].trim().equals("MySQL")){
					countf++;
				}
			}
			if(countf==1){ %>
				<input type="checkbox" name="ability" value="MySQL" checked/>MySQL&nbsp;&nbsp;&nbsp;&nbsp; 
			<%}else{ %>
				 <input type="checkbox" name="ability" value="MySQL" />MySQL&nbsp;&nbsp;&nbsp;&nbsp;
		<%	}
			for(int i=0;i<s.length;i++){
				if(s[i].trim().equals("SQLServer")){
					countg++;
				}
			}
  			if(countg==1){ %>
  				<input type="checkbox" name="ability" value="SQLServer" checked/>SQLServer&nbsp;&nbsp;&nbsp;&nbsp;  
		<%	}else{ %>
				<input type="checkbox" name="ability" value="SQLServer" />SQLServer&nbsp;&nbsp;&nbsp;&nbsp;
		<%	}
			for(int i=0;i<s.length;i++){
				if(s[i].trim().equals("其他")){
					counth++;
				}
			}
			if(counth==1){ %>
				 <input type="checkbox" name="ability" value="其他" checked/>其他&nbsp;&nbsp;&nbsp;&nbsp;
			<%}else{ %>
				<input type="checkbox" name="ability" value="其他" />其他&nbsp;&nbsp;&nbsp;&nbsp;  
		<%	}
          %>
           <!--  <input type="checkbox" name="ability" value="C"/>C&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="ability" value="C#"/>C#&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="ability" value="JAVA"/>JAVA&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="ability" value="PHP"/>PHP&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="ability" value="Python"/>Python&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="ability" value="MySQL"/>MySQL&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="ability" value="SQLServer"/>SQLServer&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="ability" value="其他"/>其他&nbsp;&nbsp;&nbsp;&nbsp; -->
           
            
            </div>
          </div>


<div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">价钱 / Price</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-name" name="price" placeholder="价钱 / Price" value="<%=item.getPrice()%>">
             
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">倾向接包方 / Contractor</label>
            <div class="am-u-sm-9">
              <input type="text" id="contractor" name="contractor" placeholder="倾向接包方 / Contractor" value="<%=item.getPreferjbf()%>">
              
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">需要岗位 / Station</label>
            <div class="am-u-sm-9">
              <input type="text" id="station" name="station" placeholder="需要岗位 / Station" value="<%=item.getNeed() %>">
              
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">周期 / Cycle</label>
            <div class="am-u-sm-9">
              <input type="text" id="cycle"  name="cycle" placeholder="周期 / Cycle" value="<%=item.getCycle() %>">
             
            </div>
          </div>
          
          <%
          String []steps =item.getTaskstep().split(";");
          %>
           <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">项目步骤 / ProjectStep</label>
            <div class="am-u-sm-9">
              <input type="button" id="add"  name="pstep" value="增加"><input type="button" id="sub"  name="pstep" value="减少">
             <div id="steps">
             <% for(int i=0;i<steps.length;i++){%>
            	 <input type="text" name="step" value="<%=steps[i]%>"/>
             <%}
             %>
				
			</div>
            </div>
            
          </div>
          <script type="text/javascript">
          add.onclick=function(){
          	/* var input=document.getElementById("td");
              input.innerHTML+='<input type="'+'text" name="'+'yaofang"/><br/>'; */
                  var input = document.createElement('input');//创建input节点
                  input.name  = 'step';   //设置属性
                  input.type = 'text';
//                   input.size='50';
                  //var br= document.createElement('br');  //添加br节点换行
                  document.getElementById("steps").appendChild(input);  //追加节点
                  //document.getElementById("yaofang").appendChild(br);
          }
          sub.onclick=function(){
        	  var f=document.getElementById("steps");
        	  
        	  var childs = f.childNodes; 
        	  if(childs.length==2){
        		  alert("至少有一个步骤！");
        	  }else{
        		 // alert(childs.length-1);
        	  f.removeChild(childs[childs.length-1]); 
        	  }
        	  
          }
          </script>
          
          
           <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">需要人数 / Num</label>
            <div class="am-u-sm-9">
              <input type="text" id="num"  name="num" placeholder="需要人数 / Num" value="<%=item.getPeoplecount()%>"> 
            </div>
            
            
            
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">附件 / Enclosure</label>
            <div class="am-u-sm-9">
               <input type="file" id="file" name="file" value="<%=item.getEnclosure()%>">
               <p class="am-form-help">请选择要上传的文件...</p>
              
            </div>
          </div>
          
          

          <div class="am-form-group">
            <label for="user-intro" class="am-u-sm-3 am-form-label">项目描述 / describtion</label>
            <div class="am-u-sm-9">
              <textarea class="" rows="5" id="describtion" name="describtion" placeholder="输入项目描述"><%=item.getMiaoshu() %></textarea>
             
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
