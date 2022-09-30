<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<style>
.navContainer {
	display:flex;
	justify-content:space-between;
	align-items: center;
	height: 7vh;
	padding: 0 40px;
	background-color: #353A40;
}
.logo{
	position:relative;
	bottom: 5px;
	font-size: 40px;
	font-weight:600;
	color: white;
}
.nav {
	font-size: 20px;
	color: white;
}
.navList {
	display:flex;
	list-style:none;
}
.navList li {
	margin: 10px;
}
.navList li:hover {
	color: gray;
}
</style>
<body>
	<header class="navContainer">
 	<div class="logo">Logo</div>
 	<nav class="nav">
 		<ul class="navList">
 			<li><a href="./welcome.jsp">HOME</a></li>
 			<li><a href="./product.jsp">PRODUCT</a></li>
 			<li><a href="./addProduct.jsp">ADDPRODUCT</a></li>
 		</ul>
 	</nav>
 </header>
</body>
</html>