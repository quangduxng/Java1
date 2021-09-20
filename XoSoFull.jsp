<%@page import="java.util.Random"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<title>XỔ SỐ FULL</title>
</head>
<body>	 

	<% Calendar c=Calendar.getInstance();
  		int ngay = c.get(Calendar.DAY_OF_MONTH); 	
  		int thang = c.get(Calendar.MONTH)+1;
  		int nam = c.get(Calendar.YEAR);
  	%>
<div align="right" action="XoSo.jsp" method="post" >
    Hôm nay, ngày <%=ngay %> tháng <%=thang %> năm <%=nam %>
</div>
<form>
  Chọn ngày:
  <select name="sngay" >
  <%for(int i=1;i<=31;i++) {%>
  
  <% if(i==ngay) {%>
	  <option selected> <%=i %></option>
	 
	   <%} else {%>
	   		for( int j =i;i<=12;j++)
	     <option> <%=i%></option>
	     <%} %>
<%} %>



  </select>
   Chọn tháng:
  <select name="sthang">
  <%for(int i=1;i<=12;i++) {%>
     
      <% if(i==thang) {%>
    	  <option selected> <%=i %></option>
    	 
    	   <%} else {%>
    	   		for( int j =i;i<=12;j++)
    	     <option> <%=i%></option>
    	     <%} %>
  <%} %>
  </select>
	  </select>
   Chọn năm:
  <select name="snam">
  <%for(int i=nam-10;i<=nam;i++) {%>
  
  <% if(i==nam) {%>
	  <option selected> <%=i %></option>
	 
	   <%} else {%>
	   		for( int j =i;i<=12;j++)
	     <option> <%=i%></option>
	     <%} %>
<%}%>
  
 
  </select>
  <input    type="submit"  name="butxem" value="Xem" ></input>
  </form>
  <form action="XoSo.jsp" method="post" > 
  
  
  
  
    <%  String tama=request.getParameter("sngay");
    	String tamb=request.getParameter("sthang");
    	String tamc=request.getParameter("snam");
    
if(request.getParameter("butxem")!=null){
	 response.sendRedirect("XoSo.jsp?ngay="+tama+"&thang="+tamb+"&nam="+tamc);
}
    %> 

 
 
</form>



  
  
   
  
  

</body>
</html>