<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>02Secure JSP</title>
</head>
<body>
	<h1>WEB-INF아래 위치하는 안전한 경로에 있는 JSP입니다.</h1>
	<%for (int idx = 0; idx < 5; idx++){%>
		안녕하세요,여기는 안전한 위치의 JSP입니다.<%=idx %><br/>
		
	<% } %>
</body>
</html>