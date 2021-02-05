<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

  <style>
  
     .input{
	       margin: 10px 0;
	       background: transparent;
	       border: 0;
	       font-size: 17px;
	       border-bottom: 2px solid #c5ecfd;
	       padding: 20px 20px 0px 0px;
	       outline: none;
	       width: 100%;
	 }
.adderssforCommunication {
           padding: 0px;
           margin: 0px;
           resize:none;
           height: 56px;
         }			
.err-msg{
	       text-align: center;
	       color:#c70f02;
	       background-color: #fff;
	}	
.btn{
		   width:100px;
	}	
.confirmToRegister{
           width: 200px;
}
  </style>

 <c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
  <div class="err-msg text-center"> </div>
  <div class="card">
      <div class="card-header header-bg">
           <h2 class="text-left">Teacher Registration</h2>
      </div>
      <div class="card-body">
           <h4 class="card-titel text-center">Enter Payment Details  </h4>
         <div class="row">
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="accountNo input" id="accountNo" placeholder="Account Number"/>
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="ifscCode input" id="ifscCode" placeholder="IFSC Code" />
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="gpayNo input" id="gpayNo" placeholder="GPay Number" />
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="phonePayNo input" id="phonePayNo" placeholder="Phone Pay Number" />
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="paytmNo input" id="paytmNo" placeholder="Paytm Number" />
	          	</div>
	    </div>      	
      </div>
      <div class="card-footer text-right">
           <button class="back btn btn-dark" id="back"><span>Back</span></button>
		   <button class="confirmToRegister btn btn-primary" id="confirmToRegister"><span>Confirm to Register</span></button>
      </div>
  </div>
        <script>
		    	 var contextPath="${contextPath}";

		    	    $(document).ready(function(){
		    	   	 
		    	   	
		    	    $(".back").click(function(){
		    	             	 $(".loader").show();
		    	             	window.location=contextPath+"/teacher/teacherDtls";
		    	   	 });
		    	              $(".confirmToRegister").click(function(){ 
		    	             	 $(".loader").show();
		    				               $.ajax({
		    				    			url:contextPath+"/teacher/",
		    				    		    type:"POST",
		    				    		    data:{"dataObj":JSON.stringify(prepareObj())},
		    				    		    success:function(response){
		    				    		    	 //$(".loader").hide();
		    				    		    	 window.location=contextPath+"/teacher/";
		    				    		    },
		    				    		    error:function(error){
		    				    		    	alert("Error::"+JSON.stringify(error));
		    				    		    	 $(".loader").hide();
		    				    			 }
		    	            		 });
		    	              });
		    	    });
		    	      function prepareObj(){
		    	     	 var obj = {};
		    	     	 	 obj.accountNo	      =     $.trim($("#accountNo").val());
		    	     	 	 obj.ifscCode	 	  =     $.trim($("#ifscCode").val());
		    	     	 	 obj.gpayNo	 	      =     $.trim($("#gpayNo").val());
		    	     	 	 obj.phonePayNo	      = 	$.trim($("#phonePayNo").val());
		    	     	 	 obj.paytmNo	 	  =     $.trim($("#paytmNo").val());
		    	     	 	
		    	     	 	
		    	     	 return obj;
		    	      } 
		    	 
		    	/*  $(".confirmToRegister").click(function(){
		    		 obj.loginId=$("#loginId").val();
		    		 obj.password=$("#pwd").val();
		    		 
		    		  alert(JSON.stringify(obj)); 
		    		 if(validations()){
		    		 $.ajax({
		    			url:contextPath+"/login/loginSaving",
		    		    type:"post",
		    		    data:{"dataObj":JSON.stringify(obj)},
		    		    success:function(responsr){
		    		    	alert(JSON.stringify(response))
		    		    },
		    		    error:function(error){
		    		    	alert("Error::"+JSON.stringify(response));
		    		    }
		    		 });
		    		 
		    		 
		    		 window.location=contextPath+"/login/loginScreen";
		    		 }
		    	 }); 
		     });
		     function validations(){
		    	 /*  var flag = true;
		    	  if($("#loginId").val() == ""){
		              $(".err-msg").text("please enter your Login Id");
		              $("#loginId").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            }
		    	  if($("#pwd").val() == ""){
		              $(".err-msg").text("please enter your Password");
		              $("#pwd").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            }
		    	  return flag; 
		     }*/
</script>
