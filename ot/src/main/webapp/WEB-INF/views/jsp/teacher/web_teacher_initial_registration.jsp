<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
    
<style>
.main-container{
	background: #c7c7c7;
	color:black;
}
.register-btn{
    box-shadow:0 0 20px 20px #ff61241f;
    background:linear-gradient(to left, #ff105f, #ffad06);
    border-radius: 17px;
	width:100%;
	margin-top: 7px;
}
.card-head{
     background-image: linear-gradient(to top, #00c6fb 0%, #005bea 100%);
     border-radius: 10px;
     padding: 10px;
}
.card-deck{
    border-top-left-radius: 40px;
    border-bottom-right-radius: 40px;
	width:422px;
	text-align:center;
	margin:0 auto;
}
.card-titel{
     padding: 10px;
}
.card-body label{
  display:inline-block;
  margin-top: 14px;
  width:150px;
  text-align:left;
  color: black;
  outline:none;
}
.form-control{
     border: none;
     border-bottom: 1px solid ;
     border-radius: 0px;
     outline :none;
     padding: 0px;
     margin-left: 20px;
}

.image-card{
        border-top-right-radius: 40px;
        border-bottom-left-radius: 40px;
	    width: 450px;
	    padding: 20px;
	    margin-bottom: 30px;
	    border: none;
	    background: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
	    outline: none;
}
 a{
	color:#72b5fd !important;
}
.back-btn{
        background-color: transparent;
	    border: 1px solid #FFF;
	    border-radius: 5px;
	    padding: 10px;
	    color: #fff;
	    font-size: 20px;
	    margin-left: 20px;
	    width: 100px;
}
.back-btn:hover{
	    background: #fff;
	    cursor: pointer;
	    outline: none;
}
</style>

<div class="page p-5">
 	<div class="row">
 		<div class="col-sm-12 col-md-6 col-lg-6 col-xl-6 d-flex align-items-center">
 			<div class="front-info">
 			   <h1><i class="fas fa-globe"></i>nline Tuitions</h1>
	 			<p class="text-justify"> Online Tuition Will help to improve your Skill Set through online. 
	 				<a href="#">ReadMore <i class="fas fa-angle-double-right"></i></a>
	 			</p>
 			  <div class="card box image-card" data-chooseFlg="1">
 				   <img src="${resourcePath}/images/teacher-video-chat-online-screen.jpg" alt="Teacher image">
	 		  </div> 	
	 		</div>
 		</div>
 		<div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
 			<span class="f-p-img"></span>
 			<div class="choose-container">
 				<div class="card card-deck bg-muted">
 				   <div class="card-body">
 				     <h4 class="card-titel text-center">Teacher Registration</h4>
	 				     <div class="form-inline m-1">
						      <label class="m1" for="name">Name :</label>
						      <input type="text" class="form-control " id="name" />
						 </div>
						 <div class="form-inline m-1">
						      <label for="name">Email :</label>
						       <input type="text" class="emailId form-control" id="emailId"  />
						 </div>
						 <div class="form-inline m-1">
						      <label for="mobilenumber">Mobile :</label>
						      <input type="text" class="mobile form-control" id="mobile"  />
						 </div>
						 <div class="form-inline m-1">
						      <label for="email">Where You From :</label>
						       <input type="text" class="fromPlace form-control" id="fromPlace" />
						 </div>
						 
						 <div class="form-inline">
						  <label class="">Gender :</label>
						     <label class="">
						        <input type="radio" class="" name="optradio">Male 
						    </label>
						    <label class="">
						        <input type="radio" class="" name="optradio">Fe-male
						    </label> 
						 </div>
						 <div class="form-inline m-1">
						      <label for="loginid">Login Id :</label>
						      <input type="text" class="loginId form-control" id="loginId"  />
						 </div>
						 <div class="form-inline m-1">
						      <label for="password">Password :</label>
						       <input type="password" class="password form-control" id="password"   />
						 </div>
						 <div class="form-inline m-1">
						      <label for="password">Re-enter Password :</label>
						      <input type="password" class="password form-control" id="reEnterPassword" />
					     </div>
					   <button class="btn register-btn" id="register">Register</button>
 				   </div>
 				</div>
 			</div>
 		</div>
 			<div class=" text-left">
 			<button class="btn back-btn" id="back">Back</button>
 		</div>
 		</div>
 	</div>
 <script> 
var contextPath="${contextPath}";

    $(document).ready(function(){
   
    $(".back-btn").click(function(){
         $(".loader").show();
   		 window.location=contextPath+"/teacher/teacherLogin";
   	 });
              $(".register-btn").click(function(){ 
            	if(validations()){  
             	     $(".loader").show();
			               $.ajax({
			    			url:contextPath+"/teacher/teacherRegInitialSaving",
			    		    type:"POST",
			    		    data:{"dataObj":JSON.stringify(prepareObj())},
			    		    success:function(response){
			    		    	  alert("Registration Sucess..!");
			    		    	 window.location=contextPath+"/teacher/teacherLogin";
			    		    },
			    		    error:function(error){
			    		    	alert("Error::"+JSON.stringify(error));
			    		    	 $(".loader").hide();
			    			 }
            		   });
            	    }        
              });
    });
      function prepareObj(){
     	 var obj1 = {};
     	 	obj1.name	           =	 $.trim($("#name").val());
     	 	obj1.emailId	 	   =     $.trim($("#emailId").val());
     	 	obj1.mobile	 	       =     $.trim($("#mobile").val());
     	 	obj1.fromPlace	       = 	 $.trim($("#fromPlace").val());
     	 	obj1.loginId	 	   =     $.trim($("#loginId").val());
     	 	obj1.password	 	   =     $.trim($("#password").val());
     	 	
     	 	
     	 return obj1;
      }
      
  
  function validations() {
	   var arr = [];
 		arr.push({id:"name",required:true,caption:"Name",fieldType:"INPUT"});
 		arr.push({id:"emailId",required:true,caption:"Email Id",fieldType:"INPUT"});
 		arr.push({id:"mobile",required:true,caption:" Mobile",fieldType:"INPUT"});
 		arr.push({id:"fromPlace",required:true,caption:"From Place",fieldType:"INPUT"});
 		arr.push({id:"loginId",required:true,caption:"Login Id",fieldType:"INPUT"});
 		arr.push({id:"password",required:true,caption:"Password",fieldType:"INPUT"});
 		arr.push({id:"reEnterPassword",required:true,caption:"Re-Enter Password",fieldType:"INPUT"});
 		
 		return validateForm(arr);
     
 }
      
     /*  function validations() {
    	  var flg = true;
    	  
    	  var password = $("#password").val();
          var confirmPassword = $("#ReEnterPassword").val();
          
          if (password != confirmPassword){
        	  flg = false;
              $(".err-msg").text("Passwords does not match!");
          } else{
        	  if(password != ""){
        		  flg = true;
                  $(".err-msg").text("Passwords match.");
        	  }else{
        		  flg = false;
        	  }
        	  
          }   
          
          return flg;
          
      }   */
      
 </script>