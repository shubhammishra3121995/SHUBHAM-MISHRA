<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{

 background: url("https://media3.giphy.com/media/G3FEbeJJtPnwc/200w.webp?cid=790b7611023c55609468f98c559c1e87cda8aeaff603f46b&rid=200w.webp");
 
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


<center><h1><font color="black">===Welcome to the Home Page <font color="crimson">${ sdto.getUserName() }</font>===</font></h1></center>
 <h1><font color="darkgreen">${m }</font></h2>
<h2><font color="darkgreen">${msg }</font></h2>
<h1><font color="darkgreen">${msg1 }</font></h2> 
${msg12 }
<center>
<button style="width=70%; height=80%;background-color:red;"><a style="font-size: 20px; font-family: monospace;" href="inbox">Inbox</a></button>
<button style="width=70%; height=80%;background-color:Coral;"><a style="font-size: 20px; font-family: monospace; "href="sent">sent</a>
<button style="width=70%; height=80%;background-color:darkorange;"><a style="font-size: 20px; font-family: monospace;" href="draft">draft</a> 
<button style="width=70%; height=80%;background-color:darkmagenta;"><a style="font-size: 20px; font-family:monospace;" href="compose">compose</a>
<button style="width=70%; height=80%;background-color:darkkhaki;"><a style="font-size: 20px; font-family: monospace;" href="change">change password</a>
<button style="width=70%; height=80%;background-color:darkseagreen;"><a style="font-size: 20px; font-family: monospace;" href="deleteMail">Deleted mail</a>
<button style="width=70%; height=80%;background-color:deeppink;"><a style="font-size: 20px; font-family: monospace;" href="logout">log out</a>
<button style="width=70%; height=80%;background-color:deeppink;"><a style="font-size: 20px; font-family: monospace;" href="home">homepage</a>
</center>
</body>
</html>