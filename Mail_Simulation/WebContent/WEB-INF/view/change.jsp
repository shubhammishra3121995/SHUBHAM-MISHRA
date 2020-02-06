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
<center><h1>=====Change Password=====</h1></center><br><br>
<hr>

<form action="chang" method="post">

<pre>
          Password:<input type="password" name="password" required="required"><br><br>
   
  Confirm Password:<input type="password" name="cpassword" required="required"><br><br>
                   <input type="submit" value="submit">
        <h2><font color="red"> ${msg } </font></h2>
     </pre> 
</form>
</body>
</html>