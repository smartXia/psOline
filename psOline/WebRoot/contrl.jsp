<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
  		String name = (String)session.getAttribute("user.uname");
  		if(null==name){
  			response.sendRedirect("loginByUser.jsp");
  		}
 %>

