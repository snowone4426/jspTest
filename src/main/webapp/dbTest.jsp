<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jdbc.JDBCstudy" %>
<%@ page import="java.util.Vector" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String tName = "test";
String[] keyArr = {"id","name","context"};
JDBCstudy testJDBC = new JDBCstudy();
String[] valueArr = {"u03","name","context"};
String id = "u03";
if(testJDBC.update(tName,id,keyArr,valueArr)) {
	
	Vector<Vector<String>> selectArr = testJDBC.select(tName,keyArr);
	
	for (Vector<String> x:selectArr) {
		for(String y: x) {
			out.print(y);
		}
		out.print("<br/>");
	}
} else {
	out.print("false");
}

%>

</body>
</html>