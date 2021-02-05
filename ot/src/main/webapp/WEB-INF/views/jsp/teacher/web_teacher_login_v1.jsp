<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
<style>

.login-page-container .card{
	 height: 420px;
	 width: 350px;
}
.login-page-container .reg-card{
	 background: linear-gradient(120deg, #fccb90 0%, #d57eeb 100%);
}
.reg-bottom {
    position: absolute;
    bottom: 30px;
    width: 100%;
    left: 0;
    right: 0;
}
.log-btn{
       box-shadow:0 0 20px 20px #ff61241f;
       background:linear-gradient(to right, #ff105f, #ffad06);
       border-radius: 25px;
}
.if{
	    border: none;
	    border-bottom: 2px solid;
	    outline: none;
	    border-radius:0px;
} 
.form-control:focus{
	box-shadow:none;
}
.card-columns{
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 100%;
}

.reg-card {
    position: absolute;
    left: 15%;
    border-radius:40px 0 40px 0;
}

.card.log-card {
    position: absolute;
    right: 15%;
    border-radius:0 40px 0 40px;
}
</style>

<div class="page login-page-container">
     <div class="card-columns d-flex justify-content-center align-items-center">
      <div class="card reg-card">
         	<div class="card-body text-center">
        		<p class="card-text font-italic font-weight-600 mt-5 font-size-larger">Don't have an account ?</p>
	        	<div class="reg-bottom">
		            <p class="card-text reg-here">Register here...</p>
		            <button class="btn btn-dark registerBtn">REGISTER <i class="fas fa-arrow-circle-right"></i></button>
	           </div>
            </div>
      </div>
      <div class="card log-card">
          <div class="card-body text-center">
           	<h4 class="card-title">Teacher Login &nbsp;<span class="iconSpan"><i class="fas fa-user-graduate fa-1x"></i></span></h4>
           	<br class="mb-5">
		   <form   method="POST"   action="${contextPath}/login/loginHome"  autocomplete="off" class="mt-2">
	            <div class="form-group mb-4">
	               <input type="text"  name="loginId"  id="loginId" class="form-control if"  placeholder="LoginId"  autocomplete="off" />
	            </div>
	            <div class="form-group mb-4">
	                <input type="password"  name="password"  id="password" class="form-control if" placeholder="Password"  autocomplete="off"  />
	            </div>
	            <div class="text-right mb-5 pb-5">
	           		<a class="forgot font-weight-lighter" href="#">Forgot password?</a>
	            </div>
	            <div class="form-group log-btn mt-5">
	               <button class="btn btn-primary btn-block log-btn">Login</button>
	            </div>
	      </form>
          </div>
       </div>
   </div>   
</div>
<script> 
var contextPath="${contextPath}";
var obj={};
$(document).ready(function(){
  	 $(".registerBtn").click(function(){
  		 window.location=contextPath+"/teacher/teacherRegInitial";
  	 });
	$(".clickHere").click(function(){
  		 window.location=contextPath+"/teacher/teacherReg";
  	 });
});     
</script> 