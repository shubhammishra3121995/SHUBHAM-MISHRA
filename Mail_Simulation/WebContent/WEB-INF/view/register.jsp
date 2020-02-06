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
<div style="background-color:lightblue" width:50px; height:100px; >

<center><h1><font color="red">========Welcome to the Registration page=========</font></h1></center>
<h4><font color="Crimson">${m }</font></h4><br><br>
<hr><br>
 <div align="center">
 <%-- <table border="2" colour="black> --%>
     
<form action="signup" method="post">

User Name<br> 
<input type="text" name="userName"></label><br><br>
 Email<br>   
<input type="email" name="email" required="required"><br><br> 
    
<b>Security question:</b><br>
<select style="width:150px;"name="sequestion" id=""><br>
<option value=""selected disabled>select</option>
<option value="what is your favouraite game ?">what is your favouraite game ?</option>
<option value="what is your birth place ?">what is your birth place ?</option>
<option value="what is your favouraite color ?">what is your favouraite color ?</option>
<option value="what is your childhood name ?">what is your childhood name ?</option>
</select><br><br>
    
 
<b>Security Answer</b><br>     
<input type="text" name="seqanswer"><br><br>
Password<br>            
<input type="password" name="password"><br><br>
<input type="submit" value="sign up">
<a href="link2">Login</a>
</form>
 </div>
 </table>
</body>
</html>