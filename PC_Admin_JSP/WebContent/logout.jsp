<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
	request.setAttribute("target", "LoginForm");
%>
<jsp:forward page = "template2.jsp"/>