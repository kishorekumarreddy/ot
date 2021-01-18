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
	          	     <input type="text" class="accountNumber input" id="accountNumber" placeholder="Account Number"/>
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="iFSCCode input" id="iFSCCode" placeholder="IFSC Code" />
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="gPayNumber input" id="gPayNumber" placeholder="GPay Number" />
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="phonePayNumber input" id="phonePayNumber" placeholder="Phone Pay Number" />
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="paytmNumber input" id="paytmNumber" placeholder="Paytm Number" />
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
			var obj={};
		     $(document).ready(function(){
		    	 
		    	 $(".back").click(function(){
		    		 
		    		 window.location=contextPath+"/teacher/teacherDtls";
		    		 
		    	 });
		    	 
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
		    	 }); */
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
		    	  return flag; */
		     }
</script>
