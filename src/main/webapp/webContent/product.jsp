<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepasitory" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
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
.product {
	width: 300px;
	margin: 10px;
}
.price {
	font-size: 23px;
	font-weight: 600;
	opacity: 0.7;
}
.description {
	font-size: 15px;
}
.productList {
	display:flex;
	max-width:100%;
	flex-wrap:wrap;
	padding: 0 5vw;
	
}
</style>
<body>
<%@ include file= "menu.jsp" %>
<main>
<section class="title">
상품목록
</section>
<section class="main">
<%
ArrayList<Product> list = ProductRepasitory.getInctance().getAllProducts();
String str = "";
str += "<ul class='productList'>";
for(Product p:list) {
	str += "<li class='product'>";
	str += "<a href='/productPage/webContent/products.jsp?id="+ p.getProductId() +"'>";
	str += "<h2>"+ p.getPname() +"</h2>";
	str += "<p class='price'> ₩" + p.getUnitPrice() + " </p>";
	str += "<p class='description'>" + p.getDescription() + " </p>";
	str += "</a>";
	str += "</li>";
}
str += "<ul>";
out.println(str); 
%>
</section>
</main>
<%@ include file= "footer.jsp" %>
</body>
</html>