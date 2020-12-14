<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
            position: absolute;
            background:#0e1557;
            padding: 0 20px;
            
            
     }
     .sub-titel{
            padding: 5px;
            background: #fff;
            font-size: 20px;
            color: #0e1557;
            width:300px;
            margin-left: 595px;
            border-radius: 16px;
     }
     .d-head{
           color: #fff;
     }
     .button{
	 
	          margin-top: 50px;
	 }
	  .input{
	       
	       margin: 10px 0;
	       background: transparent;
	       border: 0;
	       font-size: 17px;
	       border-bottom: 2px solid #c5ecfd;
	       padding: 25px 25px 0px 0px;
	       outline: none;
	       width: 500px;
	       color: #c5ecfd;
	 }
	  
     .login{
			  border-radius: 6px;
			  width: 500px;
			  font-size: 20px;
			  padding: 12px;
			  outline: none;
			  margin-top: 8px;
			  background-color: #35afb0;
			  color: #fafafc;
			  cursor: pointer;
			  border-radius: 26px;
			}
	 .clickHere{
			  width: 500px;
			  padding: 12px;
			  outline: none;
			  margin-top: 8px;
			  color: #fafafc;
			  cursor: pointer;
			  border-radius: 26px;
			}		
			
	.tag{
	         display: inline;
	         margin-right: 75px;
	}		
  </style>
</head>
<body>
 <c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
       
       <div class="d-form">
	      <div class="d-body">
	        <div class=""> </div>	
	          <div class="d-head">
	             <h1>Teacher Login</h1>
	          </div>
	          <span class=""></span>
		       <div class="input-fields">
		         <div class="tag">
		          <input type="text" class="loginId input" id="loginId" placeholder="Login Id"/>
		         </div>
		         <div class="tag">
		          <input type="password" class="Password input" id="Password" placeholder="Password" />
		         </div>
		         <div class="tag">  
		           <div class="note">Forgot Password?</div>
		         </div>
		       <div class="button" >
				      <button class="login " id="login"><span>Login</span></button>
		       </div>
		       <div>
		          <div>Don't have an account? <span class="clickHere">Click Here</span></div>
		       </div>
	       </div>
       </div>
    </div>   
    <script>
			var contextPath="${contextPath}";
			var obj={};
		     $(document).ready(function(){
		    	 
		    	 $(".login").click(function(){
		    		 
		    		 window.location=contextPath+"/teacher/teacherReg";
		    		 
		    	 });
                 $(".clickHere").click(function(){
		    		 
		    		 window.location=contextPath+"/teacher/teacherReg";
		    		 
		    	 });
		    	 
		    	
		     });
		     
		</script> 
</body>
</html>