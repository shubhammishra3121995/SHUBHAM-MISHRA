<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{

 background: url("https://thumbs.gfycat.com/OddPleasantDinosaur.webp");
 
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change the link color to #111 (black) on hover */
li a:hover {
  background-color: #A9A9A9;
}
div {
  height: 200px;
  width: 100%;
  background-color: lightblue;
}
</style>








</head>
<body>
<h1 align="center" style=" font-size: 50px;"><b>Search Products</b></h1>
<br><br>
<h3 align="center">
<!-- <a href="search">Search Product</a> | <a   href="add">Add Product </a> | <a   href="addtocart">Items for cart</a> | <a   href="displayproducts">All Products/Update</a> |  <a href="Home">Home</a></h3> -->

<button style="width=70%; height=80%;background-color:red;"><b></b> <a   style="font-size: 20px; font-family: monospace;" href="search">Search Product</a></button>
<button style="width=70%; height=80%;background-color:orange;"><b></b> <a   style="font-size: 20px; font-family: monospace;"  href="add">Add Product </a></button> 
<button style="width=70%; height=80%;background-color:yellow;"><b></b> <a   style="font-size: 20px; font-family: monospace;" href="ShowCart">My Cart </a></button>
<button style="width=70%; height=80%;background-color:deeppink;"><b></b> <a   style="font-size: 20px; font-family: monospace;" href="addtocart">Display Cart items</a></button> 
<button style="width=70%; height=80%;background-color:darkkhakhi;"><b></b> <a   style="font-size: 20px; font-family: monospace;" href="displayproducts">Modify</a></button></h3>


<h1 align="center">${msg}</h1>
<h3 align="right">${user} <br><br>
 <a  href="logout">LOGOUT</a></h3></h3> 
<hr>
<form action="searchData" align="center">
<select name="searchBy" required="required">
<option value=""selected disabled>Search By</option>
<option value="pname">Product Name</option>
<option value="pcategory">Category</option>
<option value="pcompany">Company Name</option>
</select>
<input type="text" name="search">
<input type="submit" value="search">
</form>

<h3><center><table border='1' ><tr><th> ID </th><th>Product Name</th><th>Product Category</th>
<th>Company Name</th> <th>Quantity</th><th>Price</th></tr>
<c:forEach var="mlist" items="${mlist}">
<tr>
<td><center> ${mlist.getPid() }</center></td>
<td><center> ${mlist.getPname() }</center></td>
<td><center> ${mlist.getPcategory() }</center></td>
<td><center>${mlist.getPcompany() }</center></td>
<td><center>${mlist.getPquantity() }</center></td>
<td><center>${mlist.getPrice() }</center></td> 
</tr>
</c:forEach>
</table>
</center></h3>
</body>
</html>