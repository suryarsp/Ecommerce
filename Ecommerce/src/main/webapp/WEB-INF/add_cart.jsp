
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file = "header_admin.jsp"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- ****************Start of the container**********************-->

<div class="container">
<div class="row">


<!-- ****************Start of the form**********************-->
<div class="col-md-12">
	<h2>Add To Cart Data</h2>
	<form:form method="POST" action="/Ecommerce/save_cart">
<table>
<tr>
<td><form:label path="productId">Product ID:</form:label></td>
<td><form:input path="productId" value="${cartpdt.productId}"></form:input></td>
</tr>
<tr>
	<td><form:label path="quantity">Quantity</form:label></td>
<td><form:input path="quantity" value="${cartpdt.quantity}" /></td>
</tr>

<tr>
	<td colspan="2"><input type="submit" value="Submit" /></td>
</tr>
</table>
</form:form>
</div>
<!-- ****************End of the form**********************-->
     
     
</div>
<hr />
<div class="row">


	  <!-- ****************Start of the Table to list**********************-->
<div class="col-sm-12">
	<c:if test="${!empty cartpdts}">
<h2>Product Cart</h2>
<table class = "table">
<tr>
  	<th>Product</th>
	<th>Quantity</th>
	<th>Price/Product</th>
	<th>Action</th>
</tr>
<c:forEach items="${cartpdts}" var="cart_pdt">
<tr>
<td><c:out value="${cart_pdt.value.productName}" /></td>
<td><c:out value="${cart_pdt.value.quantity}" /></td>
<td><c:out value="${cart_pdt.value.productPrice}" /></td>
<td>
  <a href="/Ecommerce/edit_cart?productId=${cart_pdt.key}">Edit</a>
| <a href="/Ecommerce/delete_cart?productId=${cart_pdt.key}">Delete</a>
</td>
</tr>
</c:forEach>
<tr>
	<td colspan="2"><a href = "/Ecommerce/landing"><button type="button" class="btn btn-default">Continue Shopping</button></a></td>
	<td colspan="2"><a href = "/Ecommerce/landing"><button type="button" class="btn btn-default">Checkout</button></a></td>
</tr>
</table>
</c:if>
</div>
  <!-- ****************End of the table to list**********************-->
	  
	  
</div>
</div>
  <!-- ****************End of the container**********************-->
<hr />

 
</body>
</html>
<%@include file = "footer.jsp"  %>