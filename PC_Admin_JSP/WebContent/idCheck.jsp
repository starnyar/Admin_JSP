<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Bean.AdminDAO"%>

<%
	String cid = request.getParameter("cid");
	AdminDAO admindao = new AdminDAO();
	request.setAttribute("cid", cid);
	if(admindao.checkId(cid))
		request.setAttribute("result", "true");
	else
		request.setAttribute("result", "false");
%>
<jsp:forward page = "id.jsp"/>