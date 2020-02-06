<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<h3>
<!-- <a href="search">Search Product</a> | <a   href="add">Add Product </a> | <a   href="addtocart">Items for cart</a> | <a  href="displayproducts">All Products/Update</a> | <a   href="Home">Home </a></h3>
 -->

<button style="width=70%; height=80%;background-color:red;"><b></b> <a   style="font-size: 20px; font-family: monospace;" href="search">Search Product</a></button>
<button style="width=70%; height=80%;background-color:orange;"><b></b> <a   style="font-size: 20px; font-family: monospace;"  href="add">Add Product </a></button> 
<button style="width=70%; height=80%;background-color:yellow;"><b></b> <a   style="font-size: 20px; font-family: monospace;" href="ShowCart">My Cart </a></button>
<button style="width=70%; height=80%;background-color:deeppink;"><b></b> <a   style="font-size: 20px; font-family: monospace;" href="addtocart">Display Cart items</a></button> 
<button style="width=70%; height=80%;background-color:darkkhakhi;"><b></b> <a   style="font-size: 20px; font-family: monospace;" href="displayproducts">Modify</a></button></h3>

<body>
<h3 align="right" >${user} <br><br>
<a href="logout">LOGOUT</a></h3></h3> 
<hr>
<center>
<pre>
<h1 style="font-size: 50px;">Add Product</h1>
<!-- <fieldset style="width:350px;"> -->
<form action="addproduct"  method="post" >
<fieldset>
<pre>
<h3> <!-- style="font-family:Times-Roman;"><b> -->
  Name:	   	 <input style="width: 200px" type="text" name="pname"  required="required" ><br>
Category:	 <input style="width: 200px" type="text" name="pcategory"   required="required"><br>
Company: 	 <input style="width: 200px" type="text" name="pcompany"  required="required"><br>
Quantity: 	 <input style="width: 200px" type="text" name="pquantity"  required="required"><br>
  Price:     <input style="width: 200px" type="number" name="price"  required="required"><br><br>
<input type="submit" value="Add Product">    
 </b></h3> 
</pre>
</fieldset>
</form>
<h3 align="center" style="font-size: 30px">${msg }</h3>

</center>
</body>
</html> 