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
<title>Insert title here</title>
</head>
<body>

<a href="./CuuChuongN.jsp"> <input  name="quaylai" type="submit" class="btn-2 btn-info" value="Quay Lại">; </a>
<%
	String tamn=request.getParameter("txtn");
	if(tamn!=null) {
	   Long n=Long.parseLong(tamn);
	  if(request.getParameter("xacnhan")!=null)
	  		{ 
	  		%>	 
	 				<p align="center"> BẢNG CỬU CHƯƠNG <%=n %></p>
			<table  class="table" style="width:100px" align="center">
			
					  
			 	  <% for ( int i = 1; i <=9 ;i++) {%>	  
				    <tr  class="success">
				    <td>
				       <%=i%>x<%=n %>=<%=i*n %>
				    </td>  
				      </tr> 
			   		<%} %>			 
 
 			</table>
		
	 		<% } %>  
	  <% 
	
		}
	
	
	%>

	


</body>
</html>