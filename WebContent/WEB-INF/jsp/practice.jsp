<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Practice page</title>
</head>
<body>


<a></a>
<form align="center">
<h3>----------practice work-----------</h3>
<%-- <p>
${msg}
</p> --%>
<%-- <table aling="center">
User name : ${emp.uname}<br>
User password: ${emp.upass}<br>
User Email : ${emp.uemail}<br>
User Mobile number : ${emp.umobile}<br>
<br></br> --%>
<table style="width:100%" border="1" cellpadding="5">
  <tr>
   <!--  <th>User id</th> -->
    <th>User Name</th>
    <th>User Email</th>
    <th>User mobile</th>
  </tr>
  <c:forEach var="pro" items="${msg}">
                <tr>
                <%-- ${msg} --%>
                    <%-- <td><c:out value="${pro.id} " /></td> --%>
                    <td><c:out value="${pro.uname}" /></td>
                    <td><c:out value="${pro.uemail}" /></td>
                    <td><c:out value="${msg.umobile}" /></td>
                </tr>
            </c:forEach>
</table>
</form>
</body>
</html>