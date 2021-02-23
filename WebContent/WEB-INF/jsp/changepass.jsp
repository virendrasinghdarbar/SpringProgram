<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>change password</title>
</head>
<body style="background-color:#D0D3D4;">

<form action="changepassword.do" method="get">
<br></br>

<h3>**** Change password ****</h3><br></br>
${msgg}
<input type="hidden" name="uname" value="${msgg.getUname()}"><br></br>
<input type="hidden" name="uemail" value="${msgg.getUemail()}"><br></br>
<input type="hidden" name="upass" value="${msgg.getUpass()}"><br></br>
<input type="hidden" name="umobile"  value="${msgg.getUmobile()}"><br></br>


Enter password <input type="text" name="upassold" ><br></br>

New password <input type="text" name="upass1" ><br></br>
Conform password <input type="text" name="upass2" ><br></br>
<input type="submit" value="change password"><br></br>
${mcc}

</form>

</body>
</html>