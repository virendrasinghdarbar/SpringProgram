<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>  
.error{color:red}  
</style>
<meta charset="ISO-8859-1">
<title>Information page</title>
</head>  
<body>
<center>
<form action="doreg.do" method="post">
<br></br>

<h3>========Registration From=========</h3><br></br>
User name:<input type="text" name="uname" required="required"><br></br>
Password :<input type="password" name="upass" required="required"><br></br>
User email :<input type="email" name="uemail" required="required"><br></br>
Mobile number :<input type="text" name="umobile" required="required"><br></br>
<input type="submit" value="Ragister">
</form>
</center>
</body>
</html>