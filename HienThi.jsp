<%@page import="Bean.SinhVienbean"%>
<%@page import="Bean.Lopbean"%>
<%@page import="Bo.SinhVienbo"%>
<%@page import="Bo.Lopbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>Insert title here</title>
</head>
<body>
<%
   Lopbo lbo= new Lopbo();
   SinhVienbo svbo= new SinhVienbo();
   
%>
<table width="1000" align="center">
    <tr> <td colspan="3"> Menu </td></tr>
    
    <tr> 
        <td valign="top" width="200"> 
              <%for(Lopbean lop:lbo.getlop()){%>
               <a href="HienThi.jsp?ml=<%=lop.getMalop() %>"> <%=lop.getTenlop() %>   </a>
               <hr>
              <%} %>
        </td>
    
    
   	
        <td valign="top" width="600"> 
        
        	<%String malop=request.getParameter("ml");
                 int temp=0;
               %>
               <%for(SinhVienbean sv:svbo.getSv()){
                        if(sv.getMalop().equals(malop)){
                                temp++;
					  %>   	<table style="width:50%">
							  <tr>
							    <th>Tên</th>
							    <th>Mã</th>
							    <th>Lớp</th>
							    <th>Điểm TB</th>
							  </tr>
							  <tr>
							     <td> <%=sv.getHoten()%></td> 
							 	 <td>  <%=sv.getMasv()%></td>
                                <td>  <%=sv.getMalop()%></td>
                                <td> <%=sv.getDtb()%> </td>
							    
							  </tr>
							</table>	
                                            
                        
                        <%} %>                         
              <%} %>
              <%if(temp==0){out.print("Không có sinh viên để hiển thị!");} %>
             
              
        </td>    
        <td valign="top" width="200"> 
      <a href="HienThi.jsp">
								        <button>
								        RESET
								        </button>   
								        </a> 	
              <a>Tìm kiếm</a><hr>
			              <%String a1=request.getParameter("txta");
							if(a1==null){a1="";}
							%>
							<form>						
							 	<input name="txta" value="<%=a1%>" placeholder="Nhập Tên hoặc Mã lớp"> <br> <br>
     
                                    <input name="butt2" value="Đồng ý" type="submit">  
                                                                      
                                </form>
                                <%
                                String tam1=request.getParameter("txta");
                                if(tam1==null){tam1="null";}  //Khác null mới làm tiếp các phép String ở sau.
                                for( SinhVienbean lop:svbo.getSv() ){                                  
                        if( lop.getHoten().toLowerCase().contains(tam1.toLowerCase()) || lop.getMalop().toLowerCase().contains(tam1.toLowerCase()) ){%>
                                <br>
                                <a>Họ Tên: <%=lop.getHoten()%></a><br>
                                <a>MSV:  <%=lop.getMasv()%></a><br>
                                <a>Lớp: <%=lop.getMalop()%></a><br>
                                <a>Điểm TB: <%=lop.getDtb()%> </a><hr>                              
                        <%}                      
                }%>
                   
                <%--    <td valign="top" width="600"> 
               
               <%String malop =request.getParameter("ml");
                 String key=request.getParameter("txtfind");
                 ArrayList<SinhVienbean> ds= svbo.getSv();
                 if(malop!=null)
                	 ds=svbo.TimMalop(ds, malop);
                 else
                	 if(key!=null)
                		 ds=svbo.Tim(ds, key);
                 
                 %>
                 <table border="1" cellspacing="0" width="100%">
                  <%for(SinhVienbean sv: ds){ %>
                  <tr> 
                     <td><%=sv.getMasv() %></td>
                      <td><%=sv.getHoten()%></td>
                      <td><%=sv.getDtb() %></td>
                        <td><%=sv.getMalop() %></td>
                  </tr>
 <%} %> --%>
               </table>
        </td>
                 
        </td>
        </tr>
       
</table>
</body>
</html>