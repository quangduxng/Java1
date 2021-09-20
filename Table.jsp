<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Random r= new Random(); %>
<%=r.nextInt(10) %>
<div align="center">
<p> BẢNG CỬU CHƯƠNG</p>
 

 <table align="center" border="1" cellspacing="0">
  <%for(int j=2;j<=9;j++){ %>
  <tr> 
 	  <% for ( int i = 2; i <=9 ;i++) {%>	  
	    <td>
	       <%=i%>x<%=j %>=<%=i*j %>
	    </td>   
   		<%} %>
    </tr> 
   <%} %>
 
 </table>
 </div>
 <a href="TheForm.jsp?ts1=tt">  The thao </a> <hr>
 <a href="TheForm.jsp?ts1=tt.jsp?ts1=kt">  Kinh te </a><hr>
 <a href="TheForm.jsp?ts1=tt.jsp?ts1=xp">  Xem phim </a><hr>
  <a href="TheForm.jsp?ts1=tt.jsp?ts1=vc"> Vui cuoi </a><hr>
</body>
</html>