<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    

<title>Insert title here</title>
 <style>
 .login-card{
          z-index: 111;
          position:absolute;
          border-radius: 10px;
          width: 350px;
          height: 400px;	
          
     }
.reg-card{
         display: block;
         position: relative;
	     background: linear-gradient(to right, #4facfe 0%, #00f2fe 100%);
	     border-radius: 10px;
	     height: 350px;
	     margin-top: 30px;
	     width: 100%;
     }
     
</style>

 <div class="page p-5">
   <div class="row">
	 <div class="container">
		<div class="card-deck"> 
		  <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6  ">
			 <div class="card">
		        <div class=" reg-card">
		            <p class="card-text">Don't have an account ?</p>
		            <p>Register to here...</p>
		            <button class="btn btn-dark registerBtn">REGISTER <i class="fas fa-arrow-circle-right"></i></button>
		         </div>
	           </div> 
		       <div class="ol-sm-12 col-md-6 col-lg-6 col-xl-6">
		         <div class=" text-center login-card bg-success">
		              <h1 class="card-title">Log in</h1>
		              <input type="text" class="loginId input" id="loginId" placeholder="Login Id" />
		              <input type="password" class="password input" id="password" placeholder="Password" /><br>
		              <a href="#">Forgot password?</a>
		              <button class="btn btn-primary loginBtn">log in</button>
		            </div>
		          </div> 
		       </div>  
	       </div>   
		</div>
	 </div>
 </div>
 	 
   <script>
			var contextPath="${contextPath}";
			var obj={};
		     $(document).ready(function(){
		    	 
		    	 $(".loginBtn").click(function(){
		    		 
		    		 window.location=contextPath+"/student/studentLogin";
		    		 
		    	 });
                 $(".registerBtn").click(function(){
		    		 
		    		 window.location=contextPath+"/student/studentRegInitial";
		    		 
		    	 });
		    	 
		    	
		     });
		     
		</script>    
  