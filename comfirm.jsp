<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>Đăng nhập thành công</p>
	 <form>
	 <%
   String un=request.getParameter("MaSV");
   String pass=request.getParameter("MatKhau");
   if(un.equals("haha")&&pass.equals("123")){
	   response.sendRedirect("Bootstrap.jsp?kt=0&un="+un);
	   
   }else
	   response.sendRedirect("Bootstrap.jsp?kt=1");
%>
</form>
</body>
</html>