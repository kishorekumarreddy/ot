<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    

 <div class="err-msg text-center"> </div>
 <div class="page">
	<div class="card">
	   <div class="card-header header-bg">
	        <h2 class="text-left">Teacher Registration</h2>
	   </div>
	   <div class="card-body">
	         <h4 class="card-title text-center">Enter Basic Details</h4>
	        <div class="row">
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="input"  id="fullNameOfTheTeacher"  placeholder="Full Name of The Teacher"/>
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="mobileNo input" id="mobileNo" placeholder="Mobile No" />
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="emailId input" id="emailId" placeholder="Email Id" />
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="currentLocation input" id="currentLocation" placeholder="Current Location" />
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="state input" id="state" placeholder="State" />
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <select class="qualification input" id="qualification">
			               <option value="-1">Highest Education Qualification</option>
			               <option value="1">Ph.D/Doctorate</option>
			               <option value="2">M.Phil</option>
			               <option value="3">Other PPG [ Type the qualification in case you select it ]</option>
			               <option value="4">M.ed</option>
			               <option value="5">M.Tech</option>
			               <option value="6">M.Pharma</option>
			               <option value="7">M.S/M.D</option>
			               <option value="8">M.Sc</option>
			               <option value="9">M.Com</option>
			               <option value="10">MBA</option>
			               <option value="11">MCA</option>
			               <option value="12">MA</option>
			               <option value="13">CA</option>
			               <option value="14">CS</option>
			               <option value="15">Other PG [ Type the qualification in case you select it ]</option>
			               <option value="16">B.Ed</option>
			               <option value="17">B.E</option>
			               <option value="18">B.Tech</option>
			               <option value="19">B.Sc</option>
			               <option value="20">BBA</option>
			               <option value="21">BCA</option>
			               <option value="22">BA</option>
			               <option value="23">MBBS</option>
			               <option value="24">LLD</option>
			               <option value="25">Diploma</option>
			               <option value="26">AIME</option>
			               <option value="27">Other [ Type the qualification in case you select it ]</option>
		             </select>
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="passedOutYear input" id="passedOutYear" placeholder="Passed Out Year" />
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <input type="text" class="university input" id="university" placeholder="University/Board/College/Institute" />
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <select class="experience input" id="experience">
			               <option value="-1">Experience</option>
			               <option value="1">0</option>
			               <option value="2">1</option>
			               <option value="3">2</option>
			               <option value="4">3</option>
			               <option value="5">4</option>
			               <option value="6">5</option>
			               <option value="7">6</option>
			               <option value="8">7</option>
			               <option value="9">8</option>
			               <option value="10">9</option>
			               <option value="11">10</option>
		             </select>
	          	</div>
	          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	          	     <select class="totalYearofExperience input" id="totalYearofExperience">
			               <option value="-1">Total Year of Experience</option>
			               <option value="1">0</option>
			               <option value="2">1</option>
			               <option value="3">2</option>
			               <option value="4">3</option>
			               <option value="5">4</option>
			               <option value="6">5</option>
			               <option value="7">6</option>
			               <option value="8">7</option>
			               <option value="9">8</option>
			               <option value="10">9</option>
			               <option value="11">10</option>
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

    $(document).ready(function(){
   	 
   	/*  $(".next").click(function(){
   		 $(".loader").show();
   		 window.location=contextPath+"/teacher/teacherPro";
   		 
   	 }); */
    $(".back").click(function(){
             	 $(".loader").show();
   		 window.location=contextPath+"/teacher/teacherLogin";
   	 });
              $(".next").click(function(){ 
             	 $(".loader").show();
			               $.ajax({
			    			url:contextPath+"/teacher/saveTeacherRegDtls",
			    		    type:"POST",
			    		    data:{"dataObj":JSON.stringify(prepareObj())},
			    		    success:function(response){
			    		    	 //$(".loader").hide();
			    		    	 window.location=contextPath+"/teacher/teacherPro";
			    		    },
			    		    error:function(error){
			    		    	alert("Error::"+JSON.stringify(error));
			    		    	 $(".loader").hide();
			    			 }
            		 });
              });
    });
      function prepareObj(){
     	 var obj1 = {};
     	 	obj1.fullNameOfTheTeacher	 =	 $.trim($("#fullNameOfTheTeacher").val());
     	 	obj1.mobileNo	 	         =   $.trim($("#mobileNo").val());
     	 	obj1.emailId	 	         =   $.trim($("#emailId").val());
     	 	obj1.currentLocation	     = 	 $.trim($("#currentLocation").val());
     	 	obj1.state	 	             =   $.trim($("#state").val());
     	 	obj1.qualification	 	     =   $.trim($("#qualification").val());
     	 	obj1.passedOutYear	 	     =   $.trim($("#passedOutYear").val());
     	 	obj1.university	 			 =	 $.trim($("#university").val());
     	 	obj1.experience	 			 =	 $.trim($("#experience").val());
     	 	obj1.totalYearofExperience	 =	 $.trim($("#totalYearofExperience").val());
     	 	
     	 return obj1;
      }
    
   	 /*  $(".back").click(function(){
   		 obj.fullNameofTheTeacher     =    $("#fullNameofTheTeacher").val();
   		 obj.mobileNo                 =    $("#mobileNo").val();
   		 obj.emailId                  =    $("#emailId").val();
   		 obj.currentLocation          =    $("#currentLocation").val();
   		 obj.state                    =    $("#state").val();
   		 obj.qualification            =    $("#qualification").val();
   		 obj.passedOutYear            =    $("#passedOutYear").val();
   		 obj.university               =    $("#university").val();
   		 obj.experience               =    $("#experience").val();
   		 obj.totalYearofExperience    =    $("#totalYearofExperience").val();
   		 
   		 
   		
   		 
   		 
   		  /* alert(JSON.stringify(obj));  
   	 if(validations()){
   		 $.ajax({
   			url:contextPath+"/teacher/teacherPro",
   		    type:"post",
   		    data:{"dataObj":JSON.stringify(obj)},
   		    success:function(responsr){
   		    	alert(JSON.stringify(response))
   		    },
   		    error:function(error){
   		    	alert("Error::"+JSON.stringify(response));
   		    }
   		 });
   		 
   		 window.location=contextPath+"/teacher/teacherDtls";
   		 }
   	 }); 
    });
    function validations(){
   	   var flag = true;
   	  if($("#fullNameofTheTeacher").val() == ""){
             $(".err-msg").text("please enter Full Name of The Teacher");
             $("#fullNameofTheTeacher").focus();
             $(".err-msg").show();
             flag = false;
             return false;
           }
   	  /* if($("#mobileNo").val() == ""){
             $(".err-msg").text("please enter your Mobile No);
             $("#mobileNo").focus();
             $(".err-msg").show();
             flag = false;
             return false;
           } 
   	  
   	  
   	  if($("#mobileNo").val() == ""){
               $(".eerr-msg").text("please enter mobile");
               $("#mobileNo").focus();
               $(".err-msg").show();
               flag = false;
               return false;
             }else if($("#mobileNo").val().length!=10){
               $(".err-msg").text("please enter mobile with  10 characters. current characters are::"+$("#mobileNo").val().length);
               $("#mobileNo").focus();
               $(".err-msg").show();
               flag = false;
               return false;
             }else{
               var ph = $("#mobileNo").val();
               var reg =  /^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
             
             if(!reg.test(ph)){
                $(".err-msg").text("please enter valid Mobile");
                $("#mobileNo").focus();
                $(".err-msg").show();
                flag = false;
                return false;
             }
            }
   	  
   	  if($("#emailId").val() == ""){
               $(".err-msg").text("please enter Email");
               $("#emailId").focus();
               $(".err-msg").show();
               flag = false;
               return false;
             }else if($("#emailId").val().length >50){
               $(".err-msg").text("please enter Email with  50 characters. current characters are::"+$("#emailId").val().length);
               $("#emailId").focus();
               $(".err-msg").show();
               flag = false;
               return false;
             }else{
               var email = $("#emailId").val();
               var reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
               if(!reg.test(email)){
                 $(".err-msg").text("please enter valid Email");
                 $("#emailId").focus();
                 $(".err-msg").show();
                 flag = false;
                 return false;
               }
             }
   	  
   	  if($("#currentLocation").val() == ""){
             $(".err-msg").text("please enter your Current Location");
             $("#currentLocation").focus();
             $(".err-msg").show();
             flag = false;
             return false;
           }
   	  if($("#state").val() == ""){
             $(".err-msg").text("please enter your State");
             $("#state").focus();
             $(".err-msg").show();
             flag = false;
             return false;
           }
   	  if($("#passedOutYear").val() == ""){
             $(".err-msg").text("please enter your Passed Out Year");
             $("#passedOutYear").focus();
             $(".err-msg").show();
             flag = false;
             return false;
           }
   	  if($("#university").val() == ""){
             $(".err-msg").text("please enter your University");
             $("#university").focus();
             $(".err-msg").show();
             flag = false;
             return false;
           }
   	  if($("#experience").val() == ""){
             $(".err-msg").text("please enter your Experience");
             $("#experience").focus();
             $(".err-msg").show();
             flag = false;
             return false;
           }
   	  if($("#totalYearofExperience").val() == ""){
             $(".err-msg").text("please enter your Total Year of Experience");
             $("#totalYearofExperience").focus();
             $(".err-msg").show();
             flag = false;
             return false;
           } 
   	  
   	  
   	 
             
             /* if($("#password").val() == ""){
               $(".err-msg").text("please enter Password");
               $("#password").focus();
               $(".err-msg").show();
               flag = false;
               return false;
             }else if($("#password").val().length > 50){
               $(".err-msg").text("please enter Password minimum 6characters with less than 50 characters. current characters are::"+$("#password").val().length);
               $("#password").focus();
               $(".err-msg").show();
               flag = false;
               return false;
             }else{
               var password = $("#password").val();
               var reg = /^(?=\S*[a-z])(?=\S*)(?=\S*\d)(?=\S*[^\w\s])\S{6,}$/;
               if(!reg.test(password)){
                 $(".err-msg").text("please enter valid Password");
                 $("#password").focus();
                 $(".err-msg").show();
                 flag = false;
                 return false;
               }
             } 
           
         
           
   	 
   	  return flag; 
    } */


		     
</script> 
     
