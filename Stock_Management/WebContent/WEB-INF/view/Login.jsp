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
<body>
${logout }
<center>
<h1>Login Page</h1>

<form action="ManagerLogin"  method="post" >
<center>
<h3 ><b>
Email Id:  <input type="email" name="email"  required="required"><br><br>

Password:  <input type="password" name="password"  required="required"><br><br>
<input  type="submit" value="Login"> | <a href="Register">Register</a></b></h3> </b></h3> 

</form>
</center>
<br><br>
<h3 align="center" style=" font-size: 30px">${msg}</h3>

</body>
</html>