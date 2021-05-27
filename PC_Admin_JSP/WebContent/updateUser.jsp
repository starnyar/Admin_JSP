<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Bean.AdminDAO" %>
<%@ page import = "Bean.AdminBean" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<jsp:useBean id = "abean" class = "Bean.AdminBean" />
<jsp:setProperty property = "*" name = "abean" />
<% 
	AdminDAO adao = new AdminDAO();
	adao.updateDB(abean);
	request.setAttribute("target", "getUser");
%>

<jsp:forward page = "template.jsp" />