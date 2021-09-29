<%@page import="Bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bo.sachbo"%>
<%@page import="Bo.loaibo"%>
<%@page import="Bean.loaibean"%>
<%@ page language="java" contentType="text/html; charset=Utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="Utf-8">
<title>BootsTrap</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
		 .form-signin {
    width:300px;
	border: 5px solid #6bb9f0;
    background: #f7f7f7;
    padding: 15px;
    height: 370px;
    margin: 0 auto;
    margin-top: 205px;
    position: relative;
}  
  
  </style>

</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Trang chủ</a></li>
      
      <li><a href="giohang.jps">Giỏ hàng</a></li>
      <li><a href="thanhtoan.jps">Thanh toán</a></li>
      <li><a href="lichsumuahang.jps">Lịch sử mua hàng</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    
     	<%String kq=request.getParameter("kt"); 
		if(kq!=null&& kq.equals("0")){%>
		 <li><a href="#">Xin chao: <%=request.getParameter("un") %> </a></li>
           <%}else{ %>
 	<button 	 style=" text-decoration:none; font-size:15px" type="button" class="btn-link btn-info btn-lg" data-toggle="modal" data-target="#myModal" > Đăng Nhập</button>   
              <%  if(kq!=null&&kq.equals("1")){%>
             		 <script>alert('Dang nhap sai');</script>
              <%} %>
           <%} %>
       <button 	 style=" text-decoration:none; font-size:15px" type="button" class="btn-link btn-info btn-lg" > Đăng Ký</button>   
    </ul>
    
    
    
    <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
   		<form class="form-signin"  method="post" action="comfirm.jsp"  >
       
              <h1 style="color: #27a2f5; font-size: 20px; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">ĐĂNG NHẬP</h1>
        
           
       <p style="
                    padding-left: 10px;
                    margin-top: 20px; 
                    padding-top: 20px; 
                    font-size: 20px;
                    ">
                    Mã đăng nhập: <br>
            <input class="placeoholder "name="MaSV" type="text"  placeholder="  Mã Đăng Nhập">
        </p>
       <p style=" 
                    padding-left: 10px;
                    margin-top: 20px; 
                    padding-top: 20px;
                    font-size: 20px;">
                   Mật Khẩu: <br>
                 <input class="placeoholder " name="MatKhau" type="password" placeholder=" Mật Khẩu">
       </p>
       <button	 
            type="submit" class="btn btn-success">
                     Đăng Nhập
       </button>
      
   	 </form>
      
    </div>
  </div>
  
</div>
  </div>
</nav>
<%
     loaibo lbo= new loaibo();
     sachbo sbo= new sachbo();
     String ml= request.getParameter("ml");
     String key= request.getParameter("key");
     ArrayList<sachbean> ds= sbo.getsach();
     if(ml!=null) ds= sbo.TimLoai(ds, ml);
     else
    	 if(key!=null) ds=sbo.Tim(ds, key);
  %>
<div class="container">
  <table width="1000" align="center" >
    
    <tr> 
       <td valign="top" width="200"> 
              <table class="table table-hover">
					 <%for(loaibean sach:lbo.getloai()){%>
               <a href="Bootstrap.jsp?ml=<%=sach.getMaloai()%>">          
               <%=sach.getTenloai()%></a>
               <hr>
              <%} %>
            
              
              
              </table>
        </td>
       <td valign="top" width="600"> 
              <table class="table table-hover">
                  <%
                  int n=ds.size();
                  for(int i=0;i<n;i++) {
                    sachbean s=ds.get(i);
                  %>
<tr>
                       <td>
                            <img src=image_sach/<%=s.getAnh() %>><br>
                             <a href="giohang.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTacgia()%>&gia=<%=s.getGia()%>">
                             <img src="mua.jpg">
                             </a> 
                             <br>
                             <%=s.getTensach() %> <br>
                             <%=s.getTacgia()%> <br>
                             <%=s.getGia()%> <br>
     					</td>
							<%i++;
                         if(i<n){
                        	 s=ds.get(i);
                         
                    		   %><td>
                            <img src=image_sach/<%=s.getAnh() %>><br>
                             <a href="giohang.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTacgia()%>&gia=<%=s.getGia()%>">
                             <img src="buynow.jpg">
                             </a> 
<br>
                             <%=s.getTensach() %> <br>
                             <%=s.getTacgia()%> <br>
                             <%=s.getGia()%> <br>
                       </td>
                       <%} %>
                      
                 
                  		<%i++;
                         if(i<n){
                        	 s=ds.get(i);
                         
                    	   %><td>
                            <img src=image_sach/<%=s.getAnh() %>><br>
                             <a href="giohang.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTacgia()%>&gia=<%=s.getGia()%>">
                             <img src="buynow.jpg">
                             </a> 
<br>
                             <%=s.getTensach() %> <br>
                             <%=s.getTacgia()%> <br>
                             <%=s.getGia()%> <br>
                       </td>
                       
                       
                       <%} %>
                    
                </tr>
                <%} %>
              </table>
                 
  			
</div>
</body>
</html>