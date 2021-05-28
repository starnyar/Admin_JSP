<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Bean.AdminDAO" %>
<%@ page import = "Bean.AdminLoginBean" %>
<%@ page import = "Bean.UserDAO" %>
<%@ page import = "Bean.UserBean" %>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	AdminDAO adao = new AdminDAO();
	UserDAO udao = new UserDAO();
	
	AdminLoginBean albean = adao.readDB_By_AdminId(id);
	UserBean ubean = udao.readDB_By_UserId(id);
	
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
	} else if(password.equals(ubean.getPassword())) {
		session.setAttribute("user_name", ubean.getName());
		session.setAttribute("user_id", ubean.getId());
		request.setAttribute("target", "home");
		%>
		<jsp:forward page = "templateForUser.jsp" />
		<% 
	} else {
		request.setAttribute("target","LoginForm");
		%>
		<jsp:forward page = "template2.jsp" />
		<% } %>


