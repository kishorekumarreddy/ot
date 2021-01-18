<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8" />
 <link rel="stylesheet" href="main.css">
 <link rel="stylesheet" href="./style.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:400,500display=swap"
      rel="stylesheet" >
<title>Insert title here</title>
  <style>
     .d-form{
            display: flex;
            border: 1px solid;
            flex-flow: wrap;
            align-items: center;
            justify-content: center ;
            background-color: #c5ecfd;
     }
     .imgDiv{
         
          height: 434px;
          text-align:center;
          width: 40%;
          background-color : #f5f5f5;
     }
     .loginDiv{
         
          margin-top:50px;
          text-align:center;
          width: 40%;
          background-color: #f5f5f5;
          margin-bottom: 50px;
          
     }
     
     .d-login{
            text-align: left;
            margin-left: 72px;
     }
     .d-label{
           
            text-align: left;
            margin-left: 72px;
            margin-top:15px;
     }
     .started{
            margin-bottom:25px;
            text-align: center;
            font-size: xx-large;
     }
     
     .button{
	        margin-top: 50px;
	 }
	 .forPass{
	        display: inline;
	        margin-right: 16px;
	        cursor: pointer;
	 }
	 .btn-2{
	       display: inline;
	       cursor: pointer;
	 }
	  .input{
	       display: inline;
	       background: transparent;
	       border: 0;
	       font-size: 17px;
	       border-bottom: 2px solid #fa91d0;
	       outline: none;
	       width: 300px;
	       
	 }
	  
     .signIn{
			  border-radius: 6px;
			  width: 300px;
			  font-size: 20px;
			  padding: 12px;
			  outline: none;
			  margin-top: 8px;
			  margin-bottom: 25px;
			  background-color: #7189f5;
			  color: #fafafc;
			  cursor: pointer;
			    
			}
	 .google{
			  width: 150px;
			  font-size: 12px;
			  padding: 8px;
              outline: none;
			  background-color: #7189f5;
			  color: #fafafc;
			  cursor: pointer;
     }
      .facebook{
			  width: 150px;
			  font-size: 12px;
			  padding: 8px;
			  outline: none;
			  background-color: #7189f5;
			  color: #fafafc;
			  cursor: pointer;
     }
	 
	   .eye{
	   		  position: absolute;
	          cursor: pointer;
	          z-index:2;
	   }	
	   .register{
			   border: 0 auto;
			   background-color: #fa91d0;
			   margin-top: 40px;
			   outline: none;
			   color: #fff;
			   outline: none;
			   border-color: #fa91d0;
	   }
	   .log-btn{
			   outline: none;
			   color: #fa91d0;
			   border-color: #f5f5f5;
	   }
	   .log-reg-btns{
		       text-align: right;
		       padding-right: 15px;
	 }	
	 .gogle-div{
	     display: flex;
	     justify-content:space-evenly;
	 }
	 
			
  </style>
</head>
<body>
 <c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
       <div class="d-form">
          <div class="imgDiv">
            <div class="started">Get Started</div>
            <div>
            <img class="icon"  src="/ot/src/main/webapp/resources/images/laptop.jpg" width="220px">
             
            </div>
            <div class="gogle-div">
               <button class="google">Sign In with Google+</button>
               <button class="facebook">Sign In with Facebook+</button>
            </div>
            
              
            
          </div>
          <div class="loginDiv">
             <div class="log-reg-btns">
                <button class="log-btn">Log In</button>
                <button class="register">Register</button>
             </div>
             <div class="d-login">
	             <h1> Login</h1>
	          </div>
	             <div class="d-label">
	                 <label>Username</label>
	             </div>
                 <div class="tag">
		             <input type="text" class="loginId input" id="loginId" placeholder="type here your username"/>
		         </div>
		         <div class="d-label">
	                 <label>Password</label>
	             </div>
		         <div class="tag">
		             <input type="password" class="Password input" id="Password" placeholder="type here your Password" />
		         </div>
		         
		         
		       <div class="button" >
				      <button class="signIn " id="signIn"><span>Sign In</span></button>
		       </div>
		       <div class="tag forPass">  
		           <div class="forPass">Forgot Password?</div>
		         </div>
		       <div class="btn-2">
		           <span class="clickHere">Not a Member yet?</span>
		       </div>
          </div>
	      
    </div>
    <script>
			var contextPath="${contextPath}";
			var obj={};
		     $(document).ready(function(){
		    	 
		    	 $(".login").click(function(){
		    		 
		    		 window.location=contextPath+"/student/studentReg";
		    		 
		    	 });
                 $(".clickHere").click(function(){
		    		 
		    		 window.location=contextPath+"/student/studentReg";
		    		 
		    	 });
		    	 
		    	
		     });
		     
		</script>    
  </body>
</html>