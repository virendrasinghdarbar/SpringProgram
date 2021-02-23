<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home page</title>
</head>
<body style="background-color:#D0D3D4;">
<form action="wellcome.do" method="post">
<!-- <h3 href="wellcome.do">Hello well to *HOME* </h3> -->
<center><h3>${msg}
${msgg}</h3></center> <br></br>
<a href="userdetail.do">User update</a>
<br></br>

<a href="allusers.do">Show data</a><br></br>
<a href="loadchangepassword.do">Change Password</a><br></br>
<a href="ulog.do">Logout</a>
</form>
</body>
</html>