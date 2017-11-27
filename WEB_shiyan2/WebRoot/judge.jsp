<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="db" class= "Bean.DBBean" scope="page"/>
<%
	request.setCharacterEncoding("utf-8");
	String username=(String)request.getParameter("username");
	String password=(String)request.getParameter("password");
	String sql="select * from dbo.login where username="+"'"+username+"'";//定义一个查询语句
	ResultSet rs=db.executeQuery(sql);//运行上面的语句
	if(rs.next())
	{
		if(password.equals(rs.getObject("password"))){
	    	response.sendRedirect("success.jsp");
	    }
	    else{
	    	response.sendRedirect("fail.html");
	    }
	}
	else 
	{
		out.print("<script language='javaScript'> alert('账号错误——else');</script>");
    	response.setHeader("refresh", "0;url=login.html");
	}

	
%>
</body>
</html>