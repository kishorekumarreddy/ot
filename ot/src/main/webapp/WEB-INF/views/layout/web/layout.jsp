<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %> 
<!DOCTYPE html>
<html> 
	<head>
		<meta charset="utf-8">
 		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><tiles:insertAttribute name="title" /></title>
		<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="session" />
		<c:set var="resourcePath" value="${pageContext.request.contextPath}/resources" scope="session" />
		
		<link rel="stylesheet" href="${resourcePath}/css/common/bootstrap/4/bootstrap.min.css" />
		<script src="${resourcePath}/js/common/jquery-3.5.1.min.js"></script>
		<script src="${resourcePath}/js/common/bootstrap/4/bootstrap.min.js"></script>
	
		<!-- Font Styles -->
		<link rel="stylesheet" href="${resourcePath}/css/common/fontaswome/css/all.min.css" />
		<script src="${resourcePath}/js/common/fontaswome/js/all.min.js"></script>
		
		<!-- Common CSS -->
		<link rel="stylesheet" href="${resourcePath}/css/common/layout/layout.css" />
		<link rel="stylesheet" href="${resourcePath}/css/common/layout/mobile_layout.css" />
		
		<!-- Common JS -->
		<script src="${resourcePath}/js/layout/layout.js"></script>
		<%-- <script src="${resourcePath}/js/common/form.js"></script> --%>
		
		<script>
			var contextPath 	= "${contextPath}";
			var resourcePath 	= "${resourcePath}";
		</script>
	</head> 
<body>

<div class="container-fluid">
	<!-- Application Loader -->
	<div class="loader">
		<span class="loader-icon"></span>
	</div>
	<div class="main-container">
		<div class="layout-header">
			 <tiles:insertAttribute name="header" />
			 <tiles:insertAttribute name="noteMsg" />
		</div>
	    
		<div class="layout-body p-3 mb-5">
		  <%-- <tiles:insertAttribute name="sidemenu" /> --%>
		  <tiles:insertAttribute name="body" />
		</div>
		<div class="layout-footer">
	 		<tiles:insertAttribute name="footer" />
	 	</div>
 	</div>
</div>
<script>
	$(document).ready(function(){
		var windowHt = $(window).height();
		/* $(".container-fluid").height(windowHt); */
		/* $(".main-container").attr("style","min-height:"+windowHt+"px"); */
	});

</script>
</body>
</html>