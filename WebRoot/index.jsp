<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>开始页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">  
	
	<link href="favicon.ico" rel="SHORTCUT ICON"/>
	
  </head>
  
  <body>
    开始页面 ${pageContext.request.contextPath}
    <a href="${pageContext.request.contextPath}/test.jsp">kaka</a><br>
    fdfdsf
  </body>
</html>
