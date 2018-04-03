<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
  <!-- sidebar start -->
  <!--<div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="admin-index.html"><span class="am-icon-home"></span> 首页</a></li>
      <li class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-file"></span> 页面模块 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
          <li><a href="admin-user.html" class="am-cf"><span class="am-icon-check"></span> 个人资料<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
          <li><a href="admin-help.html"><span class="am-icon-puzzle-piece"></span> 帮助页</a></li>
          <li><a href="admin-gallery.html"><span class="am-icon-th"></span> 相册页面<span class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
          <li><a href="admin-log.html"><span class="am-icon-calendar"></span> 系统日志</a></li>
          <li><a href="admin-404.html"><span class="am-icon-bug"></span> 404</a></li>
        </ul>
      </li>
      <li><a href="admin-table.html"><span class="am-icon-table"></span> 表格</a></li>
      <li><a href="admin-form.html"><span class="am-icon-pencil-square-o"></span> 表单</a></li>
      <li><a href="#"><span class="am-icon-sign-out"></span> 注销</a></li>
    </ul>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-bookmark"></span> 公告</p>
        <p>时光静好，与君语；细水流年，与君同。—— Amaze UI</p>
      </div>
    </div>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-tag"></span> wiki</p>
        <p>Welcome to the Amaze UI wiki!</p>
      </div>
    </div>
  </div>-->
  <!-- sidebar end -->

  <!-- content start -->
  <div class="admin-content">
    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">个人资料</strong> / <small>Team information</small></div>
    </div>

    <hr/>

    <div class="am-g">

      <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
        <!--
        <div class="am-panel am-panel-default">
          <div class="am-panel-bd">
            <div class="am-g">
            
               
              <div class="am-u-md-6">
                <img class="am-img-circle am-img-thumbnail" src="" alt="error"/>
              </div>
   
              <div class="am-u-md-6">
                <form class="am-form" action="UploadHandleServlet" enctype="multipart/form-data" method="post">
                  <div class="am-form-group">
                    <input type="file" id="user-pic" name="pic">
                    <p class="am-form-help">请选择要上传的文件...</p>
                     
                    <button type="button" class="am-btn am-btn-primary am-btn-xs">保存</button>
                    
                    <input type="submit" value="上传">
                  </div>
                </form>
              </div>
             
            </div>
          </div>
        </div>
         -->
         
        <div class="am-panel am-panel-default">
          <div class="am-panel-bd">
            <div class="user-info">
              <p>等级信息</p>
              <div class="am-progress am-progress-sm">
                <div class="am-progress-bar" style="width: 60%"></div>
              </div>
              <p class="user-info-order">当前等级：<strong>LV8</strong> 活跃天数：<strong>587</strong> 距离下一级别：<strong>160</strong></p>
            </div>
            <div class="user-info">
              <p>信用信息</p>
              <div class="am-progress am-progress-sm">
                <div class="am-progress-bar am-progress-bar-success" style="width: 80%"></div>
              </div>
              <p class="user-info-order">信用等级：正常当前 信用积分：<strong>80</strong></p>
            </div>
          </div>
        </div>

      </div>

      <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
        <jsp:useBean id="mess" class="com.beans.Messinfo" scope="request"></jsp:useBean>
        <form class="am-form am-form-horizontal" action="UserServlet" method="post">
          <font class="am-u-sm-9"><%=mess.getMess() %> </font><br>  
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">呢称 / NickName</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-name" name="name" placeholder="呢称/ NickName">
              <small>输入你的名字，让我们记住你。</small>
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-sex" class="am-u-sm-3 am-form-label">性别 / Sex</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-sex" name="sex" placeholder="你是小哥哥还是小姐姐 / Sex">
              <small></small>
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-birthday" class="am-u-sm-3 am-form-label">出生年月/ Birthday</label>
            <div class="am-u-sm-9">
              <input type="date" id="user-birthday" name="birthday" placeholder="破壳日 / Birthday">
              <small></small>
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-address" class="am-u-sm-3 am-form-label">居住地 / Address</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-address" name="address" placeholder="输入你的居住地 / Address">
              <small></small>
            </div>
          </div>
          
          <!--
          <div class="am-form-group">
            <label for="user-autograph" class="am-u-sm-3 am-form-label">个性签名/ autograph</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-autograph" name="autograph" placeholder="输入你的个性签名/ autograph">
              <small></small>
            </div>
          </div>
          -->
          
          <div class="am-form-group">
            <label for="user-email" class="am-u-sm-3 am-form-label">电子邮件 / Email</label>
            <div class="am-u-sm-9">
              <input type="email" id="user-email" name="email" placeholder="输入你的电子邮件 / Email">
              <small>邮箱你懂得...</small>
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-MSN" class="am-u-sm-3 am-form-label">MSN / MSN</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-MSN" name="MSN" placeholder="输入你的MSN / MSN">
              <small></small>
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-QQ" class="am-u-sm-3 am-form-label">QQ</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-QQ" name="QQ" placeholder="输入你的QQ号码">
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-phone" class="am-u-sm-3 am-form-label">电话 / Telephone</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-phone" name="phone" placeholder="输入你的电话号码 / Telephone">
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-occupation" class="am-u-sm-3 am-form-label">职业 / Occupation</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-occupation" name="occupation" placeholder="输入你的职业 / Occupation">
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-worklife" class="am-u-sm-3 am-form-label">工作年限 / Worklife</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-worklife" name="worklife" placeholder="输入你的工作年限 / Worklife">
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-state" class="am-u-sm-3 am-form-label">目前状态 / State</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-state" name="state" placeholder="输入你的目前状态 / State">
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-workunit" class="am-u-sm-3 am-form-label">工作单位 / Workunit</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-workunit" name="workunit" placeholder="输入你的职业 / Workunit">
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-platform" class="am-u-sm-3 am-form-label">熟悉的开发平台/ Platform</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-platform" name="platform" placeholder="输入你的微博 / Platform">
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-intro" class="am-u-sm-3 am-form-label">简介 / Intro</label>
            <div class="am-u-sm-9">
              <textarea class="" rows="5" id="user-intro" name="intro" placeholder="输入个人简介"></textarea>
              <small>250字以内写出你的一生...</small>
            </div>
          </div>
          <div class="am-form-group">
            <div class="am-u-sm-9 am-u-sm-push-3">
              <!--
               <button class="am-btn am-btn-primary" onclick="this.form.submit()">保存修改</button>
              -->
              <input type="submit" value="提交">           
            </div>
          </div>
        </form>
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
