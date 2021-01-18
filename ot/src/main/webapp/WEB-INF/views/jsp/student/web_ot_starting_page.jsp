<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

  <style>
    .card-body{
      	 background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
    	}
  	
  </style>

 <c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
       
<div class="card">
     <div class="card-header text-center">
	             <h2>Online Tuition</h2>
	 </div>
	 <div class="card-body">
	         
		       <div class="text-center m-4 p-3" >
				      <button class="back btn btn-outline-primary btn-lg  teacher " id="back">Enter Teacher</button>
		       </div>
		       <div class="text-center m-4 p-3" >
				      <button class="next btn btn-outline-primary btn-lg  student" id="next">Enter Student</button>
		       </div>
     </div>
</div>  
<script>
			var contextPath="${contextPath}";
			var obj={};
		     $(document).ready(function(){
		    	 
		    	 $(".student").click(function(){
		    		 
		    		 window.location=contextPath+"/student/studentLogin";
		    		 
		    	 });
                 $(".teacher").click(function(){
		    		 
		    		 window.location=contextPath+"/teacher/teacherLogin";
		    		 
		    	 });
		    	 
		    	
		     });
		     
</script> 