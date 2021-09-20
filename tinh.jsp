<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tinh</title>

</head>
<body>
	<%
   String tama=request.getParameter("txta");
   String tamb=request.getParameter("txtb");
   if(tama!=null&&tamb!=null){
	   Long a=Long.parseLong(tama);
	   Long b=Long.parseLong(tamb);
	   Long kq=(long)0;
	  if(request.getParameter("butcong")!=null){
		  kq=a+b;
	  }
	  
	  out.print("Ket qua: "+ kq.toString());
	  response.sendRedirect("maytinh.jsp?kq="+kq.toString()+"&a="+a.toString()+"&b="+b.toString());
   }
  
%>
   

</body>
</html>