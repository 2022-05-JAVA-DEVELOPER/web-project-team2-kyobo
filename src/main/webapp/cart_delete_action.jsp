<%@page import="com.itwill.book.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>

<%

if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("kyobo_main.jsp");
	return;
}

String c_no = request.getParameter("c_no");

CartService cartService  = new CartService();

%>
