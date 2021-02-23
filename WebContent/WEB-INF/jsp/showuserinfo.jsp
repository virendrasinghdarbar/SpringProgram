<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>show user</title>
</head>

<body style="background-color:#D0D3D4;">
<div align="center"><br></br>
<h3>**** Show Users Data ****</h3><br>
<form action="daletedata.do">
<table border="1" >
    <tr>
        <th align="center" width="40">Select</th>
        <th align="center" width="200">User Name</th>
        <th align="center" width="500">User Email</th>
        <th align="center" width="200">User Mobile</th>
        
    </tr>
    <c:forEach var="b" items="${msg}" >
    <tr> 
        <td><input type="checkbox" name="select" value="${b.uemail}"/></td>
    
        <td align="center" width="80">
            <c:out value="${b.uname}" />
        </td>
        <td align="left" width="80">
            <c:out value="${b.uemail}" />
            
        </td >
        <td align="center" width="80">
            <c:out value="${b.umobile}" />
        </td>
        
    </tr>
    </c:forEach>
</table>
<br></br>
<input type="submit" value=" Delete "  >
</form>
</div>
</body>


</html>