<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<body >
<h1 align="center" font-size: 30px;"><b>Welcome To Stock Management</b></h1>
<br><br>
<h3 align="left" style="font-size: 20px; font-family: monospace;">${user} <br><br>
 <a style="font-size: 20px; font-family: monospace;" href="logout">LOGOUT</a></h3> 
<hr>

<h3 align="center">
<button style="width=70%; height=80%;background-color:red;"><b></b> <a   style="font-size: 20px; font-family: monospace;" href="search">Search Product</a></button>
<button style="width=70%; height=80%;background-color:orange;"><b></b> <a   style="font-size: 20px; font-family: monospace;"  href="add">Add Product </a></button> 
<button style="width=70%; height=80%;background-color:yellow;"><b></b> <a   style="font-size: 20px; font-family: monospace;" href="ShowCart">My Cart </a></button>
<button style="width=70%; height=80%;background-color:deeppink;"><b></b> <a   style="font-size: 20px; font-family: monospace;" href="addtocart">Display Cart items</a></button> 
<button style="width=70%; height=80%;background-color:darkkhakhi;"><b></b> <a   style="font-size: 20px; font-family: monospace;" href="displayproducts">Modify</a></button></h3>
<h1 align="center">${msg}</h1>
</body>
</html>