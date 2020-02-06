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
<center><h1><font color="darkgreen">======Forgot Password=======</font></h1><br></center>
<hr>
<center>
<form action="forgot" method="post">
<center>
Email<br>         
<input type="email" name="email"><br><br>

<label for="">Security question</label><br>
<select style="width:150px;"name="sequestion" id=""><br><br>
<option value=""selected disabled>select</option>
<option value="what is your favouraite game ?">what is your favouraite game ?</option>
<option value="what is your birth place ?">what is your birth place ?</option>
<option value="what is your favouraite color ?">what is your favouraite color ?</option>
<option value="what is your childhood name ?">what is your childhood name ?</option>
</select><br><br> 
</div>
Security Answer<br>    
<input type="text" name="seqanswer" required="required"><br><br>
Password<br>        
<input type="password" name="password"><br><br>
Confirm Password<br> 
<input type="password" name="cpassword"><br><br>
<input type="submit" value="submit"><br>
<a href="link2">Login</a> |
<a href="link1">Registration</a>
        <h3><h1><font color="red"> ${msg }</font> </h3>
 </center>       </pre>
</form>
 </center>
</body>
</html>