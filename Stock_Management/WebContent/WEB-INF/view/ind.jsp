<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<body style="background-color: pink">
<marquee>
<center><h1 style="font-size: 50px;"><i>Welcome To Stock Management</i></h1></center>
<br>
<hr> 
<br>
<h2 align="center"><a  href="Register">Register</a> | <a href="Login">Login</a></h2><br><br>
<h3 align="center" style="font-size: 50px ">${logout }</h3>
</marquee>
</body>
</html>
