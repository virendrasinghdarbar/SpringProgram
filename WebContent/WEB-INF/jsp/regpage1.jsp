<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Information page</title>
<script type="text/javascript">
function validateform(){  
var name=document.myform.uname.value;  
var password=document.myform.upass.value;
var useremail=document.myform.uemail.value;  
var atposition=useremail.indexOf("@");  
var dotposition=useremail.lastIndexOf(".");  
var umobile=document.myform.umobile.value;
 
if (name==null || name==""){ 
	//document.getElementById('username').innerHTML =" ** fill the name "
     // alert("Name can't be blank");
	document.getElementById("username").innerHTML="Name can't be blank";
 // document.getElementById("username").innerHTML ="ffff";
  return false;  
}
if(name.length<3||name.length>20)
{
	document.getElementById("username").innerHTML="Name at list min 3 charecter and max 20"; 
//alert("name at list min 3 charecter and max 20");
return false;
}
if(password=="")
	{
	document.getElementById("userpass").innerHTML="Password can't be blank"; 
	return false;
	}
	if(password.length<6){ 
	document.getElementById("userpass").innerHTML="Password must be at least 6 characters long."; 
 // alert("Password must be at least 6 characters long.");  
  return false;  
  } 
   
	if(useremail==""||usermobile==null)
    {
    document.getElementById("useremail").innerHTML="** Enter email id";
    return false;
    }
    else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=useremail.length){  
	 // alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
	document.getElementById("useremail").innerHTML="** Please enter valid Email id ";
	 return false;  
	}
	
 if (umobile==""||umobile<10){  
	  document.getElementById("numloc").innerHTML="10 digits Mobile number must be is Required";  
	  return false;  
	}else if (isNaN(umobile)){ 
		document.getElementById("numloc").innerHTML="Enter Numeric value only";
	  return true;  
	  }
}  
</script> 

</head>  
<body style="background-color:#D0D3D4;">

<form name="myform" action="doreg.do" method="post" onsubmit="return validateform()" autocapitalize="none">
<br></br>
<center>
<table>
<h3>========Registration From=========</h3><br></br>
<tr><td>User name: </td><td><input type="text" name="uname" autocomplete="off" ></td><td>
<span id="username" style="color:red;"></span></td><br></tr>
<tr><td>Password :</td><td><input type="password" name="upass" autocomplete="off"></td><td>
<span id="userpass" style="color:red;"></span></td></tr>
<tr><td>User email :</td><td><input type="text" name="uemail" autocomplete="off"></td><td>
<span id="useremail" style="color:red;"></span></td></tr>
<tr><td>Mobile number :</td><td><input type="text" name="umobile" autocomplete="off"></td><td>
<span id="numloc" style="color:red;"></span>
</td></tr>
<tr><td></td><td><input type="submit" value="Ragister"></td></tr>
</table>
</center>
</form>
</body>
</html>