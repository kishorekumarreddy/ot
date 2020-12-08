<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>  
<html> 
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	</head> 
<body>

<div class="flex-container">
     <tiles:insertAttribute name="header" /> 
	 <article class="article">
	     <tiles:insertAttribute name="body" />
	 </article>
 <tiles:insertAttribute name="footer" />
 </div>
</body>
</html>