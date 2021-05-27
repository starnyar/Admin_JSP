<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<form>
		<%=session.getAttribute("user_name") %>님 접속 중
	</form>
	
	<%
		out.print("<a href = 'logout.jsp'>로그아웃</a>");
	%>
