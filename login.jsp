<%@ page language="java" contentType="text/html; charset=Utf-8"
    pageEncoding="utf-8"%>
<html>
    <meta charset="UTF-8">
<head>
<title>Sinh Viên- Trường Đại Học Khoa Học- Đại Học Huế</title>  

</head>
<style>
   
    
    #main{
        display: flex;
       align-items: center;
       margin-left: 50px;
        display: flex;
        padding-left: 270px;
       margin-left: 10px;
       margin-top: -250px;
       
       
     
    }  
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
    .button-login{
        width: 180px;
        height: 35px;
        border-radius: 5px 5px 5px 5px;
        Border: none;
        Color: #fff;
        position:absolute;
        background-color:#006EB7 ;

    }
    .logo{
        width: 112px;
	    height: 112px;
        
    }
    .box-form h1{
        font-family: Calibri;
	    font-size: 25px;
	    color: #006eb7;
	    margin-bottom: 20px;
    }
    .imge{
        display: flex;
        padding-top: 200px;
        margin: auto;
       
    }
    .placeoholder{
       height: 30px; 
       border-radius: 5px 5px 5px 5px; border: 2px ridge #f0f0f0; 
       font-size: 20px;
    }
    .fooder{
       
     margin: auto;
        color: white;
     position: absolute;
     padding-left: 35%;

    }
</style>

<body>   
          <form class="form-signin" action="comfirm.jsp">
       
              <h1 style="color: #27a2f5; font-size: 20px; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">Sinh viên</h1>
        
           
       <p style="
                    padding-left: 10px;
                    margin-top: 20px; 
                    padding-top: 20px; 
                    font-size: 20px;
                    ">
                    Mã Sinh Viên: <br>
            <input class="placeoholder "name="MaSV" type="text"  placeholder="    Mã Sinh Viên">
        </p>
       <p style=" 
                    padding-left: 10px;
                    margin-top: 20px; 
                    padding-top: 20px;
                    font-size: 20px;">
                   Mật Khẩu: <br>
                 <input class="placeoholder " name="MatKhau" type="password" placeholder="    Mật Khẩu">
       </p>
       <button name="dangnhap" class="button-login" type="submit" style="font-size: 15px; color: white;
             padding-left: 10px; 
             margin: 10px 0 0 60px;
            ">
                     Đăng Nhập
       </button>
      
    </form>
    <%
    String user=request.getParameter("MaSV");
    String pw=request.getParameter("password");
    if(user=="abc"&& pw=="123" && request.getParameter("dangnhap")!=null)
    		{	  
   			response.sendRedirect("comfirm.jsp?ID="+user+"&pw="+pw);
    		}
    else{ %>
    
</div>

</body>
   


</html>