
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file = "header.jsp"  %>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<body class = "header"  bgcolor = "#000000" >
  
<div style="text-align:center">
<h2><font color = "black"> Enter the Login Credentials </font> </h1> 
<h2><font color = "black"> Enter your Username and Password. </font> </h2> 
<font color = "red"> ${msg} </font>
</div>
<hr>
<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
<font color="red">
Your login attempt was not successful due to <br/><br/>
<c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>.
</font>
</c:if>


<div class = "container">
<div class = "row">
<div class = "col-sm-4"></div>
<div class = "col-sm-4">
<div> 
<form:form method="POST" action='/Ecommerce/j_spring_security_check'>
 <fieldset>
<table cellpadding = "10">
<tr><th></th></tr>
<tr>
<td>Username:</td>
<td><input type='text' name='username'></td>
</tr>
<tr>
<td>Password:</td>
<td><input type='password' name='password' /></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="Submit"/>
</td>
</tr>
</table>    
</fieldset>
</form:form>
</div>
</div>
</div>
</div>


</body>
</html>
<%@include file = "footer.jsp"  %>