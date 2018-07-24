<%--
	1.jsp주석	: jsp가 서블릿으로 변환될 때 무시됨
	2.<%@	: directive Tag : 현재 페이지에 대한 설정을 지정할 때 사용
			    이 페이지에서 필요한 import문 사용
 --%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>01HELLO JSP</title>
</head>
<body>
	<%!
	//5.<%!		:Declearaion Tag : 멤버변수 선언
	//							 , 메소드 선언이 들어가는 위치
	
	//멤버 변수 선언
	private int result;
	
	//int 값 2개를 받아서 add()하고 결과를 리턴하는 메소드 정의
	public int add(int x, int y){
		return x+y;
	}
	
	%>
	

	<%	//<% ... : Scriptlet tag : 
		//	JSP안에서 순수 자바코드를 쓸 수 있는 태그
		//	너무 많이 사용하면 가독성을 떨어뜨림
		//	이 태그안에는 완전한 자바 [문장]이 들어감
		//	문장 : ;로 끝나는 한줄
		//	(1)할당문	: 변수에 값 저장 
		//	(2)메소드 호출문
		//	(3)제어구조 : if, while, for...
		// 	(4)지역변수 선언문
	
		//	문장이 아닌 것 : (메소드선언, 클래스 선언등)은 불가능
		int age = 55;
		List<Integer> ages = new ArrayList<>();
		ages.add(12);
		ages.add(20);
		ages.add(30);
		ages.add(45);
		ages.add(age);
		
		for(int age2:ages){
			System.out.println("구성원의 나이 : " + age2);	
		
		
	%>
		<!-- 여기는 화면에 반복출력할 html을 구성 -->
		<%-- 4.<%= : Expression Tag : 변수 값 하나를 출력할 때 사용 
				;을 쓰지 않는다--%>
		
		구성원의 나이 : <%=age2 %><br/>
	<%
	}
		for(int idx = 0; idx < 5; idx++){
			
	%>
	<!-- Scriptlet의 바깥 부분 출력한 HTML을 구성할 수 있다. -->
	안녕하세요 JSP! 반복실행 <%=idx %> <br/>
	
	<%
		}
	%>
	
<%
	result = add(100,200);
	//메소드 선언된 add()를 사용
	
%>
	add(100,200) = <%=result %>
	
	
</body>
</html>