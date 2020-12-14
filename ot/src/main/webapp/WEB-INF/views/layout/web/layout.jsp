<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>  


<html> 
	<head>
		<meta charset="ISO-8859-1">
		<title><tiles:insertAttribute name="title" /></title>
		<c:set var="context" value="${pageContext.request.contextPath}" />
		
		<link rel="stylesheet" href="${context}/resources/css/common/bootstrap/4/bootstrap.min.css" />
		<script src="${context}/resources/js/common/bootstrap/4/bootstrap.min.js"></script>
		<script src="${context}/resources/js/common/jquery.min.js"></script>
		<!-- Font Styles -->
		<link rel="stylesheet" href="${context}/resources/css/common/fontaswome/all.min.css" />
		<script src="${context}/resources/js/common/fontaswome/all.min.js"></script>
		
		<link rel="stylesheet" href="${context}/resources/css/common/layout/layout.css" />
	</head> 
<body>

<div class="container">
	<div class="flex-container">
	     <tiles:insertAttribute name="header" /> 
		 <article class="article">
		     <tiles:insertAttribute name="body" />
		 </article>
	 <tiles:insertAttribute name="footer" />
 	</div>
</div>
</body>
</html>