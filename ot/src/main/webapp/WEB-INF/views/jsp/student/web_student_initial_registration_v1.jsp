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
img{
    width: 300px;
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
<div class="err-msg text-center"> </div>
<div class="page login-page-container">
 	<div class="card-columns d-flex  ">
 	    <div class="card ">
         	<div class="card-body text-center">
        		    <h1><i class="fas fa-globe"></i>nline Tuitions</h1>
		 			<p class="text-justify"> Online Tuition Will help to improve your Skill Set through online. 
		 				<a href="#">ReadMore <i class="fas fa-angle-double-right"></i></a>
		 			</p>
	 			   <div class=" image-card" data-chooseFlg="1">
	 				   <img src="${resourcePath}/images/student4.jpg" alt="Student image">
		 		   </div> 	
            </div>
      </div>
      <div class="card log-card">
          <div class="card-body text-center">
           	<h4 class="card-title">Student  Registration &nbsp;<span class="iconSpan"><i class="fas fa-user-graduate fa-1x"></i></span></h4>
           	<br class="mb-5">
		   <form   method="POST"   action="${contextPath}/login/loginHome"  autocomplete="off" class="mt-2">
	            <div class="form-inline m-1">
				     <label class="m1" for="name">Name :</label>
					 <input type="text"  name="name"  id="v" class="form-control if" autocomplete="off" />
				</div>
				<div class="form-inline m-1 ">
					  <label for="class">Class :</label>
					   <select id="grade" class="select-val form-control" style="width: 180px;">
							           <option  value="-1">    --select--   </option>
						               <option value="1"> 1</option>
						               <option value="2"> 2</option>
						               <option value="3"> 3</option>
						               <option value="4"> 4</option>
						               <option value="5"> 5</option>
						               <option value="6"> 6</option>
						               <option value="7"> 7</option>
						               <option value="8"> 8</option>
						               <option value="9"> 9</option>
						               <option value="10"> 10</option>
				      </select>
				 </div>
				<div class="form-inline m-1">
				     <label class="m1" for="parentName">Parent Name :</label>
					 <input type="text"  name="parentName"  id="parentName" class="form-control if" autocomplete="off" />
				</div>
				<div class="form-inline m-1">
				     <label class="m1" for="loginId">Parent Mobile :</label>
					 <input type="text"  name="loginId"  id="loginId" class="form-control if" autocomplete="off" />
				</div>
				<div class="form-inline m-1">
				     <label class="m1" for="parentEmail">Parent Email :</label>
					 <input type="text"  name="parentEmail"  id="parentEmail" class="form-control if" autocomplete="off" />
				</div>
				<div class="form-inline m-1">
				     <label class="m1" for="loginId">Login Id :</label>
					 <input type="text"  name="loginId"  id="loginId" class="form-control if" autocomplete="off" />
				</div>
				<div class="form-inline m-1">
				     <label class="m1" for="password">Password :</label>
					 <input type="password"  name="password"  id="password" class="form-control if" autocomplete="off" />
				</div>
				<div class="form-inline m-1">
				     <label class="m1" for="name">Re-enter Password :</label>
					 <input type="text"  name="name"  id="v" class="form-control if" autocomplete="off" />
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

    $(document).ready(function(){
   
    $(".back-btn").click(function(){
             $(".loader").show();
   		 window.location=contextPath+"/student/studentLogin";
   	 });
           $(".register-btn").click(function(){ 
             	if(validations()){
             		 $(".loader").show();
			               $.ajax({
			    			url:contextPath+"/student/studentRegInitialSaving",
			    		    type:"POST",
			    		    data:{"dataObj":JSON.stringify(prepareObj())},
			    		    success:function(response){
			    		    	 alert("Registration Sucess..!");
			    		    	 window.location=contextPath+"/student/studentLogin";
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
	     	 	obj1.stuClass	       =	 $.trim($("#grade").val());
	     	 	obj1.parentName	 	   =     $.trim($("#parentName").val());
	     	 	obj1.parentMobile	   =     $.trim($("#parentMobile").val());
	     	 	obj1.parentEmail	   = 	 $.trim($("#parentEmail").val());
	     	 	obj1.loginId	 	   =     $.trim($("#loginId").val());
	     	 	obj1.password	 	   =     $.trim($("#password").val());
     	 	
     	 	
     	 return obj1;
      }
      
       function validations() {
    	   var arr = [];
      		arr.push({id:"name",required:true,caption:"Name",fieldType:"INPUT"});
      		arr.push({id:"grade",required:true,caption:"Class",fieldType:"SELECT"}); 
      		arr.push({id:"parentName",required:true,caption:"Parent Name",fieldType:"INPUT"});
      		arr.push({id:"parentMobile",required:true,caption:"Parent Mobile",fieldType:"INPUT"});
      		arr.push({id:"parentEmail",required:true,caption:"Parent Email",fieldType:"INPUT"});
      		arr.push({id:"loginId",required:true,caption:"Login Id",fieldType:"INPUT"});
      		arr.push({id:"password",required:true,caption:"Password",fieldType:"INPUT"});
      		arr.push({id:"reEnterPassword",required:true,caption:"Re-Enter Password",fieldType:"INPUT"});
      		
      		return validateForm(arr);
          
      }
     
 </script>	
