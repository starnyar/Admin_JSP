<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Bean.AdminBean" %>
<%@ page import = "Bean.AdminDAO" %>
<%@ page import = "java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	AdminDAO adao = new AdminDAO();
	AdminBean bean = new AdminBean();
	
	bean.setName(request.getParameter("name"));
	bean.setId(request.getParameter("id"));
	bean.setPassword(request.getParameter("password"));
	bean.setPhoneNum((String)request.getParameter("tel1") + "-" + (String)request.getParameter("tel2")
						+ "-" + (String)request.getParameter("tel3"));
	
	adao.insertDB(bean);
	request.setAttribute("target", "addUserResult");
%>
<jsp:forward page = "template.jsp" />
