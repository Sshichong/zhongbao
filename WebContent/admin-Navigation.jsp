<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="login" class="com.beans.Login" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%=login.getUsername() %> 你好！
<a href="adminShuntServlet?shunt=1">项目管理</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="adminShuntServlet?shunt=2">人员管理</a>
</body>
</html>