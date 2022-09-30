<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepasitory" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="jdbc.JDBCstudy" %>
<%
request.setCharacterEncoding("UTF-8");

String productImage = "";
String realFolder = "C:\\upload";
String encType = "UTF-8";
int maxSize = 5*1024*1024; // 5mb
MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());

String productId = request.getParameter("productId");
String pname = request.getParameter("name");
String unitPrice = request.getParameter("unitPrice");
String description = request.getParameter("description");
String manufacturer = request.getParameter("manufacturer");
String category = request.getParameter("category");
String unitsInstock = request.getParameter("unitsInStock");
String condition = request.getParameter("condition");

Integer price = 0;
if(unitPrice.isEmpty()) price = 0;
else price = Integer.parseInt(unitPrice);

long stock;
if(unitsInstock.isEmpty()) stock = 0;
else stock = Long.valueOf(unitsInstock);

Product newProduct = new Product();
newProduct.setProductId(productId);
newProduct.setPname(pname);
newProduct.setUnitPrice(price);
newProduct.setDescription(description);
newProduct.setManufacturer(manufacturer);
newProduct.setCategory(category);
newProduct.setUnitsInstock(stock);
newProduct.setCondition(condition);
newProduct.setProductImage(productImage);

ProductRepasitory.getInctance().addProduct(newProduct);

//String[] valueArr = {productId,pname,unitPrice,description,manufacturer,condition};
//JDBCstudy newJDBC = new JDBCstudy();
//newJDBC.add("product", valueArr);


response.sendRedirect("product.jsp");
%>