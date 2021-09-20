<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Maytinh</title>
</head>
<body>
<%
  String a=request.getParameter("a");
   String b=request.getParameter("b");

%>
<form action="tinh.jsp" method="post">
  a=   <input name="txta" value="<%=(a==null?"0":a) %>" type="number"> <br>
 b=   <input name="txtb" value="<%=(b==null?"0":b) %>" type="number"> <br> 
 Ket qua:  <%=request.getParameter("kq") %><br>
    <input name="butcong" value="+" type="submit">
    <input name="buttru" value="-" type="submit">
    <input name="butnhan" value="*" type="submit">
    <input name="butchia" value="/" type="submit">
<%
   String tama=request.getParameter("txta");
   String tamb=request.getParameter("txtb");
   if(tama!=null&&tamb!=null){
	   Long aa=Long.parseLong(tama);
	   Long bb=Long.parseLong(tamb);
	   Long kq=(long)0;
	  if(request.getParameter("butcong")!=null){
		  kq=aa+bb;
	  }
	  
	  out.print("Ket qua: "+ kq.toString());
	  response.sendRedirect("maytinh.jsp?kq="+kq.toString()+"&a="+aa.toString()+"&b="+bb.toString());
   }
  
%>
    </form>
</body>
</html>