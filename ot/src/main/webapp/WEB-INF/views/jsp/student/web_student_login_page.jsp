<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    

  <style>
      
       @media screen and (min-width: 400px) {
       
       /*    body {
           background-color: #0e1557;
       } */
     }
     
     *{
     	box-sizing:border-box;
     }
 .main{
 	position:relative;
 	min-height:500px;
 } 
.card.login-card {
	display: flex;
	flex-flow: wrap;
	align-items: initial;
	width: 74%;
	margin: 10px auto;
	min-height: 500px;
	justify-content: flex-start;
	border:none;	
	
	position:absolute;
	top:50%;
	left:50%;
	transform:translate(-50%,-50%);
}
.imgCard {
  flex-basis: 49%;
  border: 1px solid;
}
.loginBodyCard {
  flex-basis: 49%;
  border: 1px solid;
}
		
  </style>
  
  <div class="main">
	  <div class="card login-card">
	  	<div class="imgCard">
	  		Img
	  	</div>
	  	<div class="loginBodyCard">
	  		<div class="inner-logincard p-2 ">
	  			<div class="login-header">
	  				<h1>Login</h1>
	  			</div>
	  			<div class="login-body p-5">
	  				<div class="loginDiv">
	  					<label>Login:</label>
	  					<input type="text" id="loginId" name="loginId" placeholder="LoginId"/>
	  				</div>
	  				<div class="pwdDiv">
	  				<label>Password:</label>
	  					<input type="password" id="pwd" name="pwd" placeholder="Password"/>
	  				</div>
	  				<div class="fpDiv">
	  					<a href="#">forgot password ?</a>
	  				</div>
	  				<div class="submitDiv">
	  					<button class="btn btn-primary btn-block">Login</button>
	  				</div>
	  			</div>
	  			<div class="login-footer p-5">
	  				<div class="newAcntDiv"> 
	  					<span>Don't have an account ?</span>
	  					<a href="#">&nbsp; Click Here</a>
	  				</div>
	  			</div>
	  		</div>
	  	</div>
	  </div>
	</div>
  <!-- <div class="d-form">
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
      </div> -->
    <script>
			var obj={};
		     $(document).ready(function(){
		    	 
		    	 $("").click(function(){
		    		 
		    		 window.location=context+"/student/studentReg";
		    		 
		    	 });
                 $(".clickHere").click(function(){
		    		 
		    		 window.location=context+"/student/studentReg";
		    		 
		    	 });
		    	 
		    	
		     });
		     
		</script>    
