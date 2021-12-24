<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.Dao.UserDao"%>  
<jsp:useBean id="u" class="com.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=UserDao.save(u);  
if(i>0){  
response.sendRedirect("adduser-success.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  