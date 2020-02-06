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
<body>
<center><h1><h1><font color="darkpink">=======Welcome to the login page=======</font></h1></center><br>
<hr><br>
<h2><font color="green">${m }</font></h4>
<h2><font color="green">${masg }</font></h4>
<h2><font color="grey">${msg }</font></h4><br>
<center>
<form action="login" method="post">

<b>Email:</b><br>    
<input type="email" name="email" required="required"><br>
<b>Password:</b><br>
<input type="password" name="password" required="required"><br>
      <input type="submit" value="login"><br>
               <a href="fpass">Forgot password</a> |
               <a href="link1">Registration</a>


</form>
</center>
</body>
