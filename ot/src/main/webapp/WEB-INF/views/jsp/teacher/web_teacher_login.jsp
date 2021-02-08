<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <style>
   @media screen and (min-width: 400px) {
       
          body {
           background:#e9ebee;
       }
     }
  
	  *{
	          autolone:none;
              box-sizing:border-box;
           }
  .main-div{
          display: flex;
		  flex-flow: wrap;
		  align-items: center;
		  justify-content: center ;
		  background:#c7c7c7; 
          font-family: sans-serif;
          height: 600px;
}
.container{
		  margin: auto;
		  padding: 20px;
}
.login{
		  float:left;
		  background-color: #fafafa;
		  border-radius: 10px;
		  text-align: center;
		  padding-top: 100px;
		  width:350px;
          z-index: 1;
          position: absolute;
          margin-left: 350px;
}
.register{
         dispaly:inline-block;
	     background-image: linear-gradient(to right, #4facfe 0%, #00f2fe 100%);
	     border-radius: 10px;
	     color:#fff;
	     text-align: left;
	     width: 75%;
	     height:400px;
	     animation: background 6s ease infinite;
	     background-size: 200% 200%; 
		  
 }
.loginId{
	    width: 80%;
	    padding: 10px;
	    margin-bottom: 30px;
	    border: none;
	    background-color: #eeeeef;
	    outline: none;
}
.password{
        width: 80%;
	    padding: 10px;
	    margin-bottom: 30px;
	    border: none;
	    outline: none;
	    background-color: #eeeeef;
}
.loginBtn{
	    width: 80%;
	    margin: 30px 0;
	    padding: 10px;
	    border: none;
        background-image: linear-gradient(to right, #4facfe 0%, #00f2fe 100%);
	    color: #fff;
	    font-size: 20px;
	    cursor: pointer;
	    border: none;
	    outline: none;
	    border-radius: 5px;
	    animation: background 6s ease infinite;
	    background-size: 200% 200%; 
 }   
.registerBtn{
	    background-color: transparent;
	    border: 1px solid #FFF;
	    border-radius: 5px;
	    padding: 10px 20px;
	    color: #fff;
	    font-size: 20px;
}
.registerBtn:hover{
	    color: dodgerblue;
	    background: #FFF;
	    cursor: pointer;
	    outline: none;
}
.regDiv{
        padding-left:100px;
}     
h1{
        margin-bottom: 40px;
        font-size: 40px;
}
.dontAct{
        font-size: 20px;
        padding-top:60px;
        margin-left: 90px;
}
p{

       padding-top: 90px;
       padding-left: 110px;
}
 @keyframes background { 
  0% {
    background-position: 0% 50%;
  }
  
  50% {
    background-position: 100% 50%;
  }
  
  100% {
    background-position: 0% 50%;
  }
}	

</style>

 <c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
       
    <div class="main-div">
      <div class="register">
          <div class="container">
              <div class="dontAct">Don't have an account ?</div>
              <span class="line"></span>
              <p>Register to here...</p>
              <div class="regDiv">
              <button class="registerBtn">REGISTER <!-- <i class="fas fa-arrow-circle-right"></i> --></button>
              </div>
          </div>
      </div> 
      <div class="login">
         <div class="container">
              <h1>Log in</h1>
              <input type="text" class="loginId" id="loginId" placeholder="Login Id" />
              <input type="password" class="password" id="password" placeholder="Password" /><br>
              <a href="#">Forgot password?</a>
              <button class="loginBtn">log in</button>
         </div>
      </div> 
    </div>
    <script> 
			var contextPath="${contextPath}";
			var obj={};
		     $(document).ready(function(){
		    	 
		    	 $(".registerBtn").click(function(){
		    		 
		    		 window.location=contextPath+"/teacher/teacherReg";
		    		 
		    	 });
                 $(".loginBtn").click(function(){
		    		 
		    		 window.location=contextPath+"/teacher/teacherDashboard";
		    		 
		    	 });
		    	 
		    	
		     });
		     
		</script> 
