<%@ page language="java" contentType="charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	hello
	<b>lớp</b>
</body>
 table border="1" align="center" width="1000" bgcolor="blue">
  <tr>
          <td colspan="3"> menu </td>
   
       </tr>
     <tr>
       
<td  width="600"> 
      
         
         <form method="post" action="t1.jsp">
         
             User name: <input name="txtun" type="text"> <br>
			 password: <input name="txtpass" type="password"> <br>
             
             Chon quyen
              <select name="s1">
              <option>
                  Admin
              </option>
              <option>
                  User
              </option>
                
              </select>  
              
   Comment: 
              <textarea rows="10" cols="50">
              Noi dung
              </textarea>      
              <input name="but1" type="submit" value="Login">
               </form>
         
         </td>
       <td> menu phai </td>
       </tr>
       
  </table>
  
</html>