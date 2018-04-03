<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="login" class="com.beans.Login" scope="session" />
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%=login.getUsername() %>,你好!<br>
<a href="JbShuntServlet?shunt=1">项目大厅</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="userDetailServlet?id=<%=login.getUserid()%>">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="JbShuntServlet?shunt=3">项目管理</a>&nbsp;&nbsp;&nbsp;&nbsp;

</body>
</html>