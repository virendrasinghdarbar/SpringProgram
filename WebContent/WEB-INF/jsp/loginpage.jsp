<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login page</title>
</head>
<body style="background-color:#D0D3D4;">
<form action="wellcome.do" method="post">
<center>
<table>
<h3>*** Login form ***</h3>
<tr><td>User Email :</td><td><input type="email" name="uemail" autocomplete="off"></td></tr><br></br>
<tr><td>Password :</td><td><input type="password" name="upass"></td></tr>
<td></td>
<br>
${msg1} <br></br>
<td><input type="submit" value="Submit"></td>
</table>
<h3><a href="request.do">Go to registration page</a></h3><br></br>
<br></br>
<h2>
${msg}
${msd1} 
</h2>

</center>

</form>
</body>
</html>