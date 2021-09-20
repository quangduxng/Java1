<%@page import="java.util.Random"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Xo So</title>
<style>
	 
</style>
</head>
<body >
<% Random r= new Random(); 
 
%>

<div  align="right"> 


  		<%     String ngay=request.getParameter("ngay");
    	    String thang=request.getParameter("thang");
    	    String nam=request.getParameter("nam");
    
  
    %> 
<div align="right">
Bạn đang xem kết quả ngày <%=ngay %> tháng <%=thang %> năm <%=nam %>
</div>
 
  </select>


 <a style= "color : red;  font-size: 30px; display: flex;
            align-items: center;
            justify-content: center;"  >Xo So Mien Bac</a>
 
	<table  text-align: center; align="center" border="1" cellspacing="0">
		<tr>
			<th class="lop1"></th>
			<td  class="lop2"> 
			<span class="lop3"> 1HY </span>
			<span class="lop3"> 1HY </span>
			<span class="lop3"> 1HY </span>
			<span class="lop3"> 1HY </span>
			<span class="lop3"> 1HY </span>
			<span class="lop3"> 1HY </span>
			
			</td>
			
			
			
		</tr>
		<tr> 
		<th  class="lop1" > Giải Đặc Biệt</th>
			<td class="lop2">
			<span class="lop3" style="color : red; font-size:30px;">
						<% int giaiDacBiet = r.nextInt(99999) + 1;%>
						<%  String giaiDacBietOut = giaiDacBiet >= 10000 ? "" + giaiDacBiet :  giaiDacBiet >= 1000
							?"0" + giaiDacBiet:giaiDacBiet >= 100
									?"00" + giaiDacBiet:giaiDacBiet >= 10
											?"000" + giaiDacBiet:"0000" + giaiDacBiet; %>
						<%=giaiDacBietOut %>	
					
					
			</span>	 			
			</td>	
		</tr>
		<tr >
			<th  class="lop1" > Giải Nhất</th>
			<td class="lop2">
			<span class="lop3">
				
				<% int giaiNhat = r.nextInt(99999) + 1;%>
						<%  String giaiNhatOut = giaiNhat >= 10000 ? "" + giaiNhat :  giaiNhat >= 1000
							?"0" + giaiNhat:giaiNhat >= 100
									?"00" + giaiNhat:giaiNhat >= 10
											?"000" + giaiNhat:"0000" + giaiNhat; %>
						<%=giaiNhatOut %>
				
						</span>	 			
			</td>
			
		</tr>
		<tr>
			<th  class="lop1" > Giải Nhì</th>
			<td class="lop2">
			<span class="lop3">
					<% int giaiNhi1 = r.nextInt(99999) + 1;%>
						<%  String giaiNhiOut1 = giaiNhi1 >= 10000 ? "" + giaiNhi1 :  giaiNhi1 >= 1000
							?"0" + giaiNhi1:giaiNhi1 >= 100
									?"00" + giaiNhi1:giaiNhi1 >= 10
											?"000" + giaiNhi1:"0000" + giaiNhi1; %>
						<%=giaiNhiOut1 %> 	</span>	 	
			<span class="lop3">
				<% int giaiNhi2 = r.nextInt(99999) + 1;%>
						<% String giaiNhiOut2 = giaiNhi2 >= 10000 ? "" + giaiNhi2 :  giaiNhi2 >= 1000
							?"0" + giaiNhi2:giaiNhi2 >= 100
									?"00" + giaiNhi2:giaiNhi2 >= 10
											?"000" + giaiNhi2:"0000" + giaiNhi2; %>
						<%=giaiNhiOut2 %> 
				
			</td>
		</tr>
		<tr >
			<th  class="lop1"  > Giải Ba </th>
			<td class="lop2" id="css-bor-bot">
			<span class="lop3"  >
				<% int giaiBa = r.nextInt(99999) + 1;%>
						<%  String giaiBaOut1 = giaiBa >= 10000 ? "" + giaiBa :  giaiBa >= 1000
							?"0" + giaiBa:giaiBa >= 100
									?"00" + giaiBa:giaiBa >= 10
											?"000" + giaiBa:"0000" + giaiBa; %>
						<%=giaiBaOut1 %> 	</span>	 		
			<span class="lop3">
				<% int giaiBa1 = r.nextInt(99999) + 1;%>
						<%  String giaiBaOut2 = giaiBa1 >= 10000 ? "" + giaiBa1 :  giaiBa1 >= 1000
							?"0" + giaiBa1:giaiBa1 >= 100
									?"00" + giaiBa1:giaiBa1 >= 10
											?"000" + giaiBa1:"0000" + giaiBa1; %>
						<%=giaiBaOut2 %> 	</span>	
			<span class="lop3">
				<% int giaiBa2 = r.nextInt(99999) + 1;%>
						<%  String giaiBaOut3 = giaiBa2 >= 10000 ? "" + giaiBa2 :  giaiBa2 >= 1000
							?"0" + giaiBa2:giaiBa2 >= 100
									?"00" + giaiBa2:giaiBa2 >= 10
											?"000" + giaiBa2:"0000" + giaiBa2; %>
						<%=giaiBaOut3%>
					</span>					
			</td>
				<td class="lop2" id="css-bor-top">
				<span class="lop3">
				<% int giaiBa3 = r.nextInt(99999) + 1;%>
						<%  String giaiBaOut = giaiBa3 >= 10000 ? "" + giaiBa3 :  giaiBa3 >= 1000
							?"0" + giaiBa3:giaiBa3 >= 100
									?"00" + giaiBa3:giaiBa3 >= 10
											?"000" + giaiBa3:"0000" + giaiBa3; %>
						<%=giaiBaOut %> 	</span>	 		
			<span class="lop3">
				<% int giaiBa4 = r.nextInt(99999) + 1;%>
						<%  String giaiBaOut4 = giaiBa4 >= 10000 ? "" + giaiBa4 :  giaiBa4 >= 1000
							?"0" + giaiBa4:giaiBa4 >= 100
									?"00" + giaiBa4:giaiBa4 >= 10
											?"000" + giaiBa4:"0000" + giaiBa4; %>
						<%=giaiBaOut4 %> 	</span>	
			<span class="lop3">
				
						<%  String giaiBaOut5 = giaiBa >= 10000 ? "" + giaiBa :  giaiBa >= 1000
							?"0" + giaiBa:giaiBa >= 100
									?"00" + giaiBa:giaiBa >= 10
											?"000" + giaiBa:"0000" + giaiBa; %>
						<%=giaiBaOut5%>
					</span>	
		</tr>
		<tr>
			<th  class="lop1" > Giải tư</th>
			<td class="lop2">
			<span class="lop3">
				<% int giaiTu = r.nextInt(9999) + 1;%>
						<%  String giaiTuOut = giaiTu >= 1000 ? "" + giaiTu :  giaiTu >= 100
							
									?"0" + giaiTu:giaiTu >= 10
											?"00" + giaiTu:"000" + giaiTu; %>
						<%=giaiTuOut %>	</span>	 		
			<span class="lop3">
					<% int giaiTu2 = r.nextInt(9999) + 1;%>
						<%  String giaiTuOut2 = giaiTu2 >= 1000 ? "" + giaiTu2 :  giaiTu2 >= 100
							
									?"0" + giaiTu2:giaiTu2 >= 10
											?"00" + giaiTu2:"000" + giaiTu2; %>
						<%=giaiTuOut2 %>	</span>	
			<span class="lop3">
					<% int giaiTu3 = r.nextInt(9999) + 1;%>
						<%  String giaiTuOut3 = giaiTu3 >= 1000 ? "" + giaiTu3 :  giaiTu3 >= 100
							
									?"0" + giaiTu3:giaiTu3 >= 10
											?"00" + giaiTu3:"000" + giaiTu3; %>
						<%=giaiTuOut3 %>	</span>	
			<span class="lop3">
				<% int giaiTu4 = r.nextInt(9999) + 1;%>
						<%  String giaiTuOut4 = giaiTu4 >= 1000 ? "" + giaiTu4 :  giaiTu4 >= 100
							
									?"0" + giaiTu4:giaiTu4 >= 10
											?"00" + giaiTu4:"000" + giaiTu4; %>
						<%=giaiTuOut4 %>	</span>	
		</tr>
		<tr>
			<th  class="lop1" > Giải năm </th>
			<td class="lop2" id="css-bor-bot">
			<span class="lop3">
					<% int giaiNam1 = r.nextInt(9999) + 1;%>
						<%  String giaiNamOut1 = giaiNam1 >= 1000 ? "" + giaiNam1 :  giaiNam1 >= 100
							
									?"0" + giaiNam1:giaiNam1 >= 10
											?"00" + giaiNam1:"000" + giaiNam1; %>
						<%=giaiNamOut1 %>	</span>	 		
			<span class="lop3">
				<% int giaiNam2 = r.nextInt(9999) + 1;%>
						<%  String giaiNamOut2 = giaiNam2 >= 1000 ? "" + giaiNam2 :  giaiNam2 >= 100
							
									?"0" + giaiNam2:giaiNam2 >= 10
											?"00" + giaiNam2:"000" + giaiNam2; %>
						<%=giaiNamOut2 %>	</span>	
			<span class="lop3">
				<% int giaiNam3 = r.nextInt(9999) + 1;%>
						<%  String giaiNamOut3 = giaiNam3 >= 1000 ? "" + giaiNam3 :  giaiNam3 >= 100
							
									?"0" + giaiNam3:giaiNam3 >= 10
											?"00" + giaiNam3:"000" + giaiNam3; %>
						<%=giaiNamOut3 %></span>					
			</td>
			<td class="lop2" id="css-bor-top">
			<span class="lop3">
				<% int giaiNam4 = r.nextInt(9999) + 1;%>
						<%  String giaiNamOut4 = giaiNam4 >= 1000 ? "" + giaiNam4 :  giaiNam4 >= 100
							
									?"0" + giaiNam4:giaiNam4 >= 10
											?"00" + giaiNam4:"000" + giaiNam4; %>
						<%=giaiNamOut4 %>	</span>	 		
			<span class="lop3">
				<% int giaiNam5 = r.nextInt(9999) + 1;%>
						<%  String giaiNamOut5 = giaiNam5 >= 1000 ? "" + giaiNam5 :  giaiNam5 >= 100
							
									?"0" + giaiNam5:giaiNam5 >= 10
											?"00" + giaiNam5:"000" + giaiNam5; %>
						<%=giaiNamOut5 %>	</span>	
			<span class="lop3">
					<% int giaiNam6 = r.nextInt(9999) + 1;%>
						<%  String giaiNamOut6 = giaiNam6 >= 1000 ? "" + giaiNam6 :  giaiNam6 >= 100
							
									?"0" + giaiNam6:giaiNam6 >= 10
											?"00" + giaiNam6:"000" + giaiNam6; %>
						<%=giaiNamOut6 %>		</span>					
			</td>
		</tr>
		<tr>
				<th  class="lop1" > Giải sáu </th>
				<td class="lop2">
			<span class="lop3">
					<% int giaiSau1 = r.nextInt(999) + 1;%>
						<%  String giaiSauOut1 = giaiSau1 >= 100 ? "" + giaiSau1 :  giaiSau1 >= 10								
											?"0" + giaiSau1:"00" + giaiSau1; %>
						<%=giaiSauOut1 %>	</span>	 		
			<span class="lop3">
				<% int giaiSau2 = r.nextInt(999) + 1;%>
						<%  String giaiSauOut2 = giaiSau2 >= 100 ? "" + giaiSau2 :  giaiSau2 >= 10
							
									
											?"0" + giaiSau2:"00" + giaiSau2; %>
						<%=giaiSauOut2 %>	</span>	
			<span class="lop3">
				<% int giaiSau3 = r.nextInt(999) + 1;%>
						<%  String giaiSauOut3 = giaiSau3 >= 100 ? "" + giaiSau3 :  giaiSau3 >= 10
											?"0" + giaiSau3:"00" + giaiSau3; %>
						<%=giaiSauOut3 %></span>					
			</td>
		</tr>
		<tr>
				<th  class="lop1" > Giải Bảy </th>
			<td class="lop2">
			<span class="lop3">
				<% int giaiBay1 = r.nextInt(99) + 1;%>
						<%  String giaiBayOut1 = giaiBay1 >= 10 ? "" + giaiBay1 :  
							 "0" + giaiBay1; %>
						<%=giaiBayOut1 %>	</span>	 		
			<span class="lop3">
				<% int giaiBay2 = r.nextInt(99) + 1;%>
						<%  String giaiBayOut2 = giaiBay2 >= 10 ? "" + giaiBay2 :  
							 "0" + giaiBay2; %>
						<%=giaiBayOut2 %>	</span>	
			<span class="lop3">
				<% int giaiBay3 = r.nextInt(99) + 1;%>
						<%  String giaiBayOut3 = giaiBay3 >= 10 ? "" + giaiBay3 :  
							 "0" + giaiBay3; %>
						<%=giaiBayOut3 %>	</span>					
			</td>
		</tr>
		
		
	</table>


</div>
</body>
</html>