<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepasitory" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세</title>
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
.productDetail {
display:flex;
flex-direction:column;
align-items:center;
}
.productDetail li {
	width: 400px;
}
.productImg {
	width: 100%;
}

.main a {
	position:relative;
	top: 10px;
	color : white;
	border-radius: 5px;
	padding : 5px;
	background-color: rgba(0,0,0,0.7);
}
</style>
<body>
<% 
String id = request.getParameter("id");
Product p = ProductRepasitory.getInctance().getProductById(id);
%>
<%@ include file= "menu.jsp" %>
<main>
<section class="title">
상품 상세
</section>
<section class="main">
<ul class='productDetail'>
<li><img class="productImg" src="./resources/images/<%= p.getProductImage() %>" alt="상품이미지"/></li>
<li>상품명 : <%= p.getPname() %></li>
<li><%= p.getDescription() %></li>
<li>제조사: <%= p.getManufacturer() %></li>
<li>가격  : <%= p.getUnitPrice() %></li>
<li>카테고리 : <%= p.getCategory() %></li>
<li>재고 : <%= p.getUnitsInstock() %></li>
<li>상태 : <%= p.getCondition() %></li>
<li>
<a href="#"> 상품 주문 &raquo;</a> 
<a	href="./product.jsp"> 상품 목록 &raquo;</a>
</li>
</ul>
</section>
</main>
<%@ include file= "footer.jsp" %>
</body>
</html>