<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'succ.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    操作成功    <a onclick="history.go(-2)">3秒自动返回</a>
  </body>
  
   <script type="text/javascript">
    var goback = '${param.goback}';
  
  </script>
  
  <script type="text/javascript">
  
  
  
    window.setTimeout(function(){
    if(goback)
 self.location=goback;
 else {
window.location.href = document.referrer;
 }
    
    
    },2000); 
  
  
  </script>

  
  
</html>