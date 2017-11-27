<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'success.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body {
	background-image: url(image/background2.jpg);
	
}

.ziti {
	font-size: 50px;
	font-style: oblique;
	color: #000;
}
</style>
  </head>
  
  <body class="ziti">
  <%
//判断application对象中有没有保存名为count的参数
//如果没有，在application对象中新增一个名为count的参数
if(application.getAttribute("count")==null){
application.setAttribute("count", new Integer(0));
}
Integer count = (Integer)application.getAttribute("count");
//使用application对象读取count参数的值，再在原值基础上累加1
application.setAttribute("count",new Integer(count.intValue()+1));
%>
  <center>
 登录成功！ <br>
 <h5>
<!-- 输出累加后的count参数对应的值 -->
欢迎您访问，本页面已经被访问过 <font color="#ff0000"><%=application.getAttribute("count") %></font>次。。。。
</h5>
 </center>
  </body>
</html>
