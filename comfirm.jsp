<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<p> đăng nhập thành công</p>
	    <%
    String user1=request.getParameter("MaSV");
    String pw1=request.getParameter("password");
    if(user1=="abc"&& pw1=="123")
    		{	
   
   			response.sendRedirect("login.jsp?ID="+user1+"&pw="+pw1);
    } %>
</body>
</html>