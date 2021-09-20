<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


 	<% Calendar c=Calendar.getInstance();
  		int ngay = c.get(Calendar.DAY_OF_MONTH); 	
  		int thang = c.get(Calendar.MONTH)+1;
  		int nam = c.get(Calendar.YEAR);
  	%>
<div align="right">
    Hôm nay, ngày <%=ngay %> tháng <%=thang %> năm <%=nam %>
</div>
<form action="dc" method="post">
 Chọn ngày <select name="sngay">
 <%for(int i=1;i<=31;i++){ 
      if(i==ngay){%>
        <option selected> <%=i %> </option>
       <%}
        else{
        %>
         <option> <%=i %> </option>
        <%} %>
     <%} %>
  </select>
  
  chọn tháng <select name="sthang">
  <% for(int i=1; i<=12; i++){  
  if( i == thang) {%>		
 		<option selected > <%=i %> </option>		
 	<%}
     else { 
    	 %>
     <option> <%= i %></option>
      <%} %>
  <%} %>
  </select>
  
    </select>
  chọn Năm <select name="snam">
  <% int y =10; 
  for(int i=nam-y; i<=nam; i++){ 
 	if( i == nam) { %>		
 		<option selected > <%=i %> </option>		
 	<%} 
     else {
    	 %>
     <option> <%= i%></option>
  		<%} %>
  <%} %>
  </select>
  	
 
  
</form>

</body>
</html>