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
<center><h1><font color="green">======Compose mail======</font></h1></center>
<div align="right">

<button style="width=70%; height=80%;background-color:red;"><a style="font-size: 20px; font-family: monospace;" href="inbox">Inbox</a></button>
<button style="width=70%; height=80%;background-color:Coral;"><a style="font-size: 20px; font-family: monospace; "href="sent">sent</a>
<button style="width=70%; height=80%;background-color:darkorange;"><a style="font-size: 20px; font-family: monospace;" href="draft">draft</a>
<button style="width=70%; height=80%;background-color:darkmagenta;"><a style="font-size: 20px; font-family: " href="compose">compose</a>
<button style="width=70%; height=80%;background-color:darkkhaki;"><a style="font-size: 20px; font-family: monospace;" href="change">change password</a>
<button style="width=70%; height=80%;background-color:darkseagreen;"><a style="font-size: 20px; font-family: monospace;" href="deleteMail">Deleted mail</a>
<button style="width=70%; height=80%;background-color:deeppink;"><a style="font-size: 20px; font-family: monospace;" href="logout">log out</a>
<button style="width=70%; height=80%;background-color:deeppink;"><a style="font-size: 20px; font-family: monospace;" href="home">home</a>
</div>
<hr>
<br>
<br>
<center>
${msg12 }
<form action="comp" method="post">
<%-- <font color="blue";font-size="20px";>${msg }</font><br> --%>

<%-- From: <input type="text" name="from" value="${adto.getFromId() }"><br> --%>
   <input type="hidden" name="mid" value="${adto.getMid() }"><br>
To:<br>   
<input type="text" name="to" value="${adto.getToId()}"><br><br>
Subject:<br>  
<input type="text" name="sub" value="${adto.getSubject() }"><br><br>
Message:<br>
<input type="text" name="body" value="${adto.getMessage() }"><br><br>
     <input type="submit" value="sent">
     <a href="composeDraft?id=+${dto.getId() }+">delete</a>
</center>
</form>
</body>
</html>