<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    

	<div class="page">
	  <div class="card">
	      <div class="card-header header-bg">
	           <h2 class="text-left">Teacher Registration</h2>
	      </div>
	      <div class="card-body">
	           <h4 class="card-titel text-center">Enter Below Details </h4>
	           <div class="row">
	                <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	                     <select class="timingsAvailable input" id="timingsAvailable">
				               <option value="-1">Timings Available</option>
				               <option value="1">5AM-6AM</option>
				               <option value="2">6AM-7AM</option>
				               <option value="3">7AM-8AM</option>
				               <option value="4">8AM-9AM</option>
				               <option value="5">9AM-10AM</option>
				               <option value="6">10AM-11AM</option>
				               <option value="7">11AM-12Noon</option>
				               <option value="8">12Noon-1PM</option>
				               <option value="9">1PM-2PM</option>
				               <option value="10">2PM-3PM</option>
				               <option value="11">3PM-4PM</option>
				               <option value="12">4PM-5PM</option>
				               <option value="13">5PM-6PM</option>
				               <option value="14">6PM-7PM</option>
				               <option value="15">7PM-8PM</option>
				               <option value="16">8PM-9PM</option>
				          </select>
	                </div>
	                <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	                     <select class="monthlyFeeExpectationPerstudent input" id="monthlyFeeExpectationPerstudent">
				               <option value="-1">Monthly Fee Expectation per student</option>
				               <option value="1">500</option>
				               <option value="2">750</option>
				               <option value="3">1000</option>
				               <option value="4">1500</option>
				               <option value="5">2000</option>
				               <option value="6">2500</option>
				               <option value="7">3000</option>
				               <option value="8">3500</option>
				               <option value="9">4000</option>
				               <option value="10">4500</option>
				               <option value="11">5000</option>
				          </select>
	                </div>
	                <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	                      <select class="noofStudentsyoucanTeachAtaTime input" id="noofStudentsyoucanTeachAtaTime">
			               <option value="-1">No of Students you can teach at a time</option>
			               <option value="1">1</option>
			               <option value="2">2-5</option>
			               <option value="3">6-8</option>
			               <option value="4">8-10</option>
			               <option value="5">10+</option>
			          </select>
	                </div>           
	           </div>
	      </div>
	      <div class="card-footer text-right">
	           <button class="back btn btn-dark" id="back">Back</button>
			   <button class="next btn btn-primary" id="next">Next</button>
	      </div>
	 </div>
</div>
       <script>
			var contextPath="${contextPath}";
			var obj={};
		     $(document).ready(function(){
		    	 
		    	 $(".next").click(function(){
		    		 
		    		 window.location=contextPath+"/teacher/teacherPay";
		    		 
		    	 });
                 $(".back").click(function(){
		    		 
		    		 window.location=contextPath+"/teacher/teacherPro";
		    		 
		    	 });
		    	 
		    	/*  $(".login").click(function(){
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
