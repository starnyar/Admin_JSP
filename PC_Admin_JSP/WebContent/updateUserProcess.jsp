<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Bean.AdminBean" %>
<%@ page import = "Bean.AdminDAO" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%
	String cid = request.getParameter("id");
	
	AdminDAO adao = new AdminDAO();
	AdminBean abean = adao.readDB_By_Id(cid);
	request.setAttribute("abean", abean);
	request.setAttribute("target", "updateUserForm");

%>
<jsp:forward page = "template.jsp" />