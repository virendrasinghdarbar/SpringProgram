<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body style="background-color:#D0D3D4;">
<%-- ${msd}
 --%><center>
<form action="updatepage.do" method="post">
<br></br>

<h3>======== Update From =========</h3><br></br>
User name:<input type="text" name="uname" value="${msd.getUname()}"><br></br>
<input type="hidden" name="upass" value="${msd.getUpass()}">
User email :<input type="email" name="uemail" value="${msd.getUemail()}" readonly="readonly"><br></br>
Mobile number :<input type="text" name="umobile"  value="${msd.getUmobile()}"><br></br>
<input type="submit" value="Update"><br></br>

</form>
</center>
</body>
</html>