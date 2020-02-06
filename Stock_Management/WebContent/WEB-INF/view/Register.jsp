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
<center>
<h1 >SIGN UP</h1>
<!-- <fieldset style="width:350px;s> -->

<form action="MangerRegistration"  method="post" >
<pre>
<h3 style="font-family:Times-Roman; "><b>
User Name:	    <input style="width: 200px" type="text" name="mname"  required="required" ><br>
Mobile No.:	    <input style="width: 200px" type="tel" name="mnumber"   maxlength="10" "><br>
Email Id: 	    <input style="width: 200px"  type="email" name="email"  required="required"><br>
Password: 	    <input style="width: 200px"  type="password" name="password"  required="required"><br><br>
<input  type="submit" value="Sign Up">   |  <a  href="Login">Login</a> 
 </b></h3> 
</pre>
</form>
<h3 align="center" ">${msg }</h3>
<!-- </fieldset> -->
</center>
</body>
</html>