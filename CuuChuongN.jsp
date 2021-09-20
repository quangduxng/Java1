<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Xổ Sổ Full</title>
	<style>
		#center{
		padding-left: 200px;
         display: flex;
	 
		}
	
	</style>
</head>
<body>
<form action="CuuChuongN.jsp" method="post">

<div   class="input-group" >
      <span  class="input-group-addon">Nhập N</span>
      <input id="msg" type="number" class="form-control" style="width: 300px" name="txtn" placeholder="nhập N vào nhé">
      
 </div>
 <div id="center"  >
  <input  name="xacnhan" type="submit" class="btn-2 btn-info" value="Xác Nhận">
  
  </div>
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
 	 
	<br>
	

  </form><%
  String tamnn=request.getParameter("txtn");
   if(tamnn!=null){
	   Long nn=Long.parseLong(tamn);
	  response.sendRedirect("CuuChuongN.jsp?="+nn.toString() ); //tu load lai trang
   }   
%>
</body>
</html>