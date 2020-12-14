<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style.css">
<title>Insert title here</title>
  <style>
      
       @media screen and (min-width: 400px) {
       
          body {
           background-color: #0e1557;
       }
     }
  
	  *{
	         /*  box-shadow: none; */
	          autolone:none;
              box-sizing:border-box;
           }
     .d-form{
            text-align: center;
            position: relative;
            background-color: rgb(198, 230, 236);
            padding: 0 20px;
            
            
     }
     .d-head {
        font-size: 30px;
     }
     
     
	  .input{
	       
	       margin: 10px 0;
	       background: transparent;
	       border: 0;
	       font-size: 17px;
	       border-bottom: 2px solid #c5ecfd;
	       padding: 25px 25px 0px 0px;
	       outline: none;
	       width: 335px;
	       color: #c5ecfd;
	 }
	  
     .login{
			  border-radius: 6px;
			  width: 200px;
			  font-size: 20px;
			  padding: 12px;
			  outline: none;
			  margin-top: 100px;
			  background-color: #35afb0;
			  color: #fafafc;
			  cursor: pointer;
			  border-radius: 26px;
			}
	 .dontAccount{
	          margin-top: 100px;
	 }		
	 .clickHere{
			  width: 500px;
			  padding: 12px;
			  outline: none;
			  margin-top: 8px;
			  color: #0e1557;
			  cursor: pointer;
			  border-radius: 26px;
			}		
			
	.tag{
	         display: inline;
	         
	 }
	 .imgBody{
	         position: absolute;
	         margin-left: 470px;
	         margin-top: 38px;
             border-radius:26px 0px 0px 26px;
	         background-color: #93abaa;
	         text-align: center;
			 width: 380px;
			 height: 600px;
             
	 } 
	 .loginBody{
	        position: absolute;
	 }
	 .note{
	        margin-left: 200px;
	        cursor: pointer;
	 }
	 .container{
	        border-radius:0px  26px 26px 0px;
	        background-color: #fff;
	        text-align: center;
	        margin-left: 850px;
			width: 380px;
			height: 600px;
			  
	 }
		
  </style>
</head>
<body>
 <c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
       
       <div class="d-form">
          <div class="d-body">
	          <div class="imgBody">
	              <div class="">
	                 <div>
	                     <h1>Back to Study</h1>
	                     <div>Login to continue access</div>
	                     <img src='C:\Users\kethav reddy\Desktop\book.png' alt='book' />
	                 </div>
	              </div>
	          </div>
		      <div class="loginBody">
		         <div class="container">
		              <div class="d-head">
	                       <h1>Login</h1>
	                   </div>
		              <input type="loginId " class="input" placeholder="Login Id">
		              <input type="password" class="input" placeholder="Password">
		              <div class="tag">  
		                <div class="note">Forgot Password?</div>
		              </div>
		              <button class="login" >log in</button>
		              <div class="dontAccount">
				        <div>Don't have an account? <span class="clickHere">Click Here</span></div>
			          </div>
			       </div>   
		        </div>
		   </div>     
      </div>
    <script>
			var contextPath="${contextPath}";
			var obj={};
		     $(document).ready(function(){
		    	 
		    	 $("").click(function(){
		    		 
		    		 window.location=contextPath+"/student/studentReg";
		    		 
		    	 });
                 $(".clickHere").click(function(){
		    		 
		    		 window.location=contextPath+"/student/studentReg";
		    		 
		    	 });
		    	 
		    	
		     });
		     
		</script>    
  </body>
</html>