<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="LoginServlet">
用户名：<input name="username" type="text" required /><br>
密码：<input type="password" name="password" required/><br>
身份：<input type="radio" name="identity" value="0"/>管理员 &nbsp;&nbsp;&nbsp;
<input type="radio" name="identity" value="1"/>接包方&nbsp;&nbsp;&nbsp;
<input type="radio" name="identity" value="2"/>发包方 &nbsp;&nbsp;&nbsp;<br>
<input type="submit" value="提交 " />

</form>


</body>
</html>