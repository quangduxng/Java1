<%@ page language="java" contentType="text/html; charset=Utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 	<style>
 		.content{
 			width : 400px; height : 800px 
 		 	display: flex;
            align-items: center;
            justify-content: center;}
 	</style>
</head>

<body>
<form class="content" action="/action_page.php">
   <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class ="form-control" id="email" placeholder="Enter email" name="email">
    </div> 
 <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
 CheckBox:   <input name="txt3" value="123" type="checkbox"> <br> 
  Radio:   <input name="txt4" value="123" type="radio"> <br> 
<button type="button" class="btn btn-success">Success</button> <br>

  Upfile:   <input name="txt5" value="123" type="file"> <br>
 <div class="form-group">
      <label >Nhập Số:</label>
      <input class ="form-control">
    </div> <br> 
 <div class="form-group">
      <label >Ngày tháng năm:</label>
      <input class ="form-control" type="date">
    </div> <br> 
<div class="form-group">
      <label >Ngày tháng :</label>
      <input class ="form-control" type="month">
    </div> <br> 
<div class="form-group">
      <label >Nhập gmail :</label>
      <input class ="form-control" type="email">
    </div> <br>    
<div class="form-group">
      <label >Nhập url :</label>
      <input class ="form-control" type="url">
    </div> <br> 

Gui du lieu len Server:   <input class="btn btn-success" name="txt4" value="Submit" type="submit"> <hr>  
</form>
</body>
</html>