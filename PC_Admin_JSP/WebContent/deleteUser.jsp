<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Bean.AdminDAO" %>

<%
	String userid = request.getParameter("id");
	AdminDAO adao = new AdminDAO();
	adao.deleteDB(userid);
	request.setAttribute("target", "deleteUserResult");
%>
<jsp:forward page = "template.jsp" />
