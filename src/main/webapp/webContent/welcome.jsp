<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
</head>
<style>
* {
	box-sizing:border-box;
	margin:0;
	padding:0;
}
a {
	text-decoration:none;
	color:inherit;
}
ul {
	list-style:none;
	display:flex;
}
.title {
display:flex;
justify-content: center;
align-items:center;
height: 230px;
font-size: 70px;
font-weight: 100;
background-color: #ECECF1;
}
.main {
display:flex;
justify-content: center;
align-items:center;
color:#252640;
font-size: 20px;	
border-bottom: 1px solid #EAE8EA;
margin: 0 30px;
padding: 30px 0;
}
</style>
<body>
<%! 
String greeting = "Welcome to Web Shopping Mall";
String tagline = "Welcome to Web Market!";
%>
<%@ include file= "menu.jsp" %>
<main>
<section class="title">
<% out.println(greeting); %>
</section>
<section class="main">
<% out.println(tagline); %>
</section>
</main>
<%@ include file= "footer.jsp" %>
</body>
</html>