<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<h3><center><table border='1' colour="black"><tr><th>Sender</th><th>Receiver</th><th>Message</th><th>Subject</th></tr>
<%-- <c:forEach var="dto" items="${list}"> --%>


<h1><font color="darkorange">======Welcome to Message Display========</font></h1><br>
<div align="right">
<button style="width=70%; height=80%;background-color:red;"><a style="font-size: 20px; font-family: monospace;" href="inbox">Inbox</a></button>
<button style="width=70%; height=80%;background-color:Coral;"><a style="font-size: 20px; font-family: monospace; "href="sent">sent</a>
<button style="width=70%; height=80%;background-color:darkorange;"><a style="font-size: 20px; font-family: monospace;" href="draft">draft</a>
<button style="width=70%; height=80%;background-color:darkmagenta;"><a style="font-size: 20px; font-family: monospace;" href="compose">compose</a>
<button style="width=70%; height=80%;background-color:darkkhaki;"><a style="font-size: 20px; font-family: monospace;" href="change">change password</a>
<button style="width=70%; height=80%;background-color:darkseagreen;"><a style="font-size: 20px; font-family: monospace;" href="deleteMail">Deleted mail</a>
<button style="width=70%; height=80%;background-color:deeppink;"><a style="font-size: 20px; font-family: monospace;" href="logout">log out</a>
<button style="width=70%; height=80%;background-color:deeppink;"><a style="font-size: 20px; font-family: monospace;" href="home">home</a>
</div>
<hr>
<br><br><br>
<tr><td><center>${adto.getFromId() }</center></td>
<td><center>${adto.getToId()}</center></td>
<td><center>${adto.getMessage()}</center></td>
<td><center>${adto.getSubject() }</center></td></tr>


</table>
</body>
</html>