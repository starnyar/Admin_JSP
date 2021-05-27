<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Bean.AdminDAO" %>
<%@ page import = "Bean.AdminLoginBean" %>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	AdminDAO adao = new AdminDAO();
	AdminLoginBean albean = adao.readDB_By_AdminId(id);
	String pass = albean.getAdminPassword();
	out.println("읽은 pass = " + pass);
	out.println("파라메터 pass = " + password);
	
	if(password.equals(albean.getAdminPassword())){
		session.setAttribute("user_name", albean.getAdminName());
		session.setAttribute("user_id", albean.getAdminId());
		request.setAttribute("target", "home");
		%>
		<jsp:forward page = "template.jsp" />
		<% 
	}else {
		request.setAttribute("target","LoginForm");
		%>
		<jsp:forward page = "template2.jsp" />
		<% } %>


