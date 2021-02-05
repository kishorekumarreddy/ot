<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    
  <style>

.communicationAddress {
           padding: 0px;
           margin: 0px;
           resize:none;
           height: 56px;
         }					
.err-msg{
	       color:#c70f02;
	       background-color: #fff;
	}	
.btn{
		   width:100px;
	}
	
  </style>

 <c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
 
 <div class="err-msg text-center"> </div>
<div class="card">
   <div class="card-header header-bg">
      <h2 class="text-left">Student Registration</h2>
   </div>
   
   <div class="card-body">
          <h4 class="card-title text-center">Enter Basic Details</h4>
       <div class="row">
          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
		          <input type="text" class="studentFullName input" id="studentFullName" placeholder="Student full Name"/>
          	</div>
          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
		         <input type="text" class="parentName input" id="parentName" placeholder="Parent/Guardian Name" />
          	</div>
          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
		          <input type="text" class="classAppears input" id="classAppears" placeholder="Class appears" />
          	</div>
          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
		            <select class="syllabusSpecialization input" id="syllabusSpecialization">
			               <option value="-1">Syllabus Specialization</option>
			               <option value="1">CBSE</option>
			               <option value="2">ICSE</option>
			               <option value="3">IB</option>
			               <option value="4">STATE BOARD</option>
			      </select>
          	</div>
          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
		         	       <select class="nameOfTheState input" id="nameOfTheState">
			               <option value="-1">Name Of The State</option>
			               <option value="1">Andhra Pradesh</option>
			               <option value="2">Assam</option>
			               <option value="3">Arunachal Pradesh</option>
			               <option value="4">Bihar</option>
			               <option value="5">Chatisgarh</option>
			               <option value="6">Goa</option>
			               <option value="7">Gujarath</option>
			               <option value="8">Haryana</option>
			               <option value="9">Himachal Pradesh</option>
			               <option value="10">Jammu and Kashmir</option>
			               <option value="11">Jharkhand</option>
			               <option value="12">Karnataka</option>
			               <option value="13">Kerala</option>
			               <option value="14">Madhya Pradesh</option>
			               <option value="15">Maharastra</option>
			               <option value="16">Manipur</option>
			               <option value="17">Meghalaya</option>
			               <option value="18">Mizoram</option>
			               <option value="19">Nagaland</option>
			               <option value="20">Odisha</option>
			               <option value="21">Punjab</option>
			               <option value="22">Rajasthan</option>
			               <option value="23">Sikkim</option>
			               <option value="24">Tamil Nadu</option>
			               <option value="25">Thipura</option>
			               <option value="26">Telangana</option>
			               <option value="27">Uttara Pradesh</option>
			               <option value="28">Uttarakhand</option>
			               <option value="29">West Bengal</option>
			               <option value="-2" disabled >UT:-</option>
			               <option value="30">Andaman and Nicobar</option>
			               <option value="31">Chandigarh</option>
			               <option value="32">Delhi</option>
			               <option value="33">Dadra and Nagar Haveli</option>
			               <option value="34">Daman and Diu</option>
			               <option value="35">Jammu and Kashmir</option>
			               <option value="36">Ladakh</option>
			               <option value="37">Lakshdweep</option> 
			               <option value="38">Puducherry</option>
			          </select>
          </div>
          <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
		          <select class="schoolMedium input" id="schoolMedium">
		               <option value="-1">School Medium</option>
		               <option value="1">English</option>
		               <option value="2">Hindi</option>
		               <option value="3">Telugu</option>
		               <option value="4">Tamil</option>
		               <option value="5">Kannada</option>
		               <option value="6">Malayali</option>
		               <option value="7">Marati</option>
		               <option value="8">Urdu</option>
		               <option value="9">Gujarathi</option>
		               <option value="10">Konkini</option>
		               <option value="11">Bengali</option>
		               <option value="12">Panjabi</option>
		               <option value="13">Odia</option>
		               <option value="14">Assamase</option>
		               <option value="15">Kashmiri</option>
		               <option value="16">Other [ Type the qualification in case you select it ]</option>
		           </select>
          	</div>
          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
          	     <input type="text" class="dob input" id="dob" placeholder="DOB" />
          	</div>
          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
          	     <input type="text" class="schoolName input" id="schoolName" placeholder="School Name" />
          	</div>
          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
          	     <input type="text" class="schoolLocation input" id="schoolLocation" placeholder="School Location" />
          	</div>
          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
          	     <input type="text" class="currentLocation input" id="currentLocation" placeholder="Current Location" />
          	</div>
          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
          	     <input type="text" class="state input" id="state" placeholder="State" />
          	</div>
          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
          	     <input type="text" class="motherTounge input" id="motherTounge" placeholder="Mother Tounge"/>
          	</div> 
          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
          	     <input type="text" class="mobileNumber input" id="mobileNumber" placeholder="Mobile Number [ User Id ]" />
          	</div>
          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
          	     <input type="text" class="emailAddress input" id="emailAddress" placeholder="Email Address" />
          	</div>
          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
          	     <textarea  rows="1.5"  class="communicationAddress input" id="communicationAddress" placeholder="Communication Address"></textarea>
          	</div>
       </div>
   </div>	
    <div class="card-footer text-right">
         <button class="back btn btn-dark" id="back"><span>Back</span></button>
		 <button class="submit btn btn-primary" id="submit"><span>Submit</span></button>
    </div> 
</div> 
       
        
    
    <script>
			var contextPath="${contextPath}";
			var obj={};
		     $(document).ready(function(){
		    	 
		    	 $(".back").click(function(){
		    		 
		    		 window.location=contextPath+"/student/studentLogin";
		    		 
		    	 });
		    	 
		    	  $(".submit").click(function(){
		    		 obj.studentFullName         =   $("#studentFullName").val();
		    		 obj.parentName              =   $("#parentName").val();
		    		 obj.classAppears            =   $("#classAppears").val();
		    		 obj.syllabusSpecialization  =   $("#syllabusSpecialization").val();
		    		 obj.nameOfTheState          =   $("#nameOfTheState").val();
		    		 obj.schoolMedium            =   $("#schoolMedium").val();
		    		 obj.dob                     =   $("#dob").val();
		    		 obj.schoolName              =   $("#schoolName").val();
		    		 obj.schoolLocation          =   $("#schoolLocation").val();
		    		 obj.currentLocation         =   $("#currentLocation").val();
		    		 obj.state                   =   $("#state").val();
		    		 obj.mobileNumber            =   $("#mobileNumber").val();
		    		 obj.emailAddress            =   $("#emailAddress").val();
		    		 obj.communicationAddress    =   $("#communicationAddress").val();
		    		 
		    		  /* alert(JSON.stringify(obj)); */  
		    		 if(validations()){
		    		 $.ajax({
		    			url:contextPath+"/student/studentRegionSaving",
		    		    type:"post",
		    		    data:{"dataObj":JSON.stringify(obj)},
		    		    success:function(responsr){
		    		    	alert(JSON.stringify(response))
		    		    },
		    		    error:function(error){
		    		    	alert("Error::"+JSON.stringify(response));
		    		    }
		    		 });
		    		 
		    		 window.location=contextPath+"/student/studentDashboard";
		    		 }
		    	 }); 
		     });
		     function validations(){
		    	   var flag = true;
		    	  if($("#studentFullName").val() == ""){
		              $(".err-msg").text("please enter Student Full Name");
		              $("#studentFullName").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            }
		    	  if($("#parentName").val() == ""){
		              $(".err-msg").text("please enter Parent Name");
		              $("#parentName").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            }
		    	  if($("#classAppears").val() == ""){
		              $(".err-msg").text("please enter Class Appears");
		              $("#classAppears").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            }
		    	  if($("#syllabusSpecialization").val() == ""){
		              $(".err-msg").text("please enter Syllabus Specialization");
		              $("#syllabusSpecialization").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            }
		    	  if($("#communicationAddress").val() == ""){
		              $(".err-msg").text("please enter Communication Address");
		              $("#communicationAddress").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            }
		    	 
		    	  if($("#nameOfTheState").val() == ""){
		              $(".err-msg").text("please enter Name Of The State");
		              $("#nameOfTheState").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            } 
		    	  if($("#schoolMedium").val() == ""){
		              $(".err-msg").text("please enter School Medium");
		              $("#schoolMedium").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            }
		    	  if($("#dob").val() == ""){
		              $(".err-msg").text("please enter DOB");
		              $("#dob").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            }
		    	  if($("#schoolName").val() == ""){
		              $(".err-msg").text("please enter School Name");
		              $("#schoolName").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            }
		    	  if($("#schoolLocation").val() == ""){
		              $(".err-msg").text("please enter School Location");
		              $("#schoolLocation").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            }
		    	  if($("#currentLocation").val() == ""){
		              $(".err-msg").text("please enter Current Location");
		              $("#currentLocation").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            }
		    	 
		    	  if($("#state").val() == ""){
		              $(".err-msg").text("please enter State");
		              $("#state").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            }
		    	  if($("#motherTounge").val() == ""){
		              $(".err-msg").text("please enter State");
		              $("#motherTounge").focus();
		              $(".err-msg").show();
		              flag = false;
		              return false;
		            }
		    	  
		    	  if($("#mobileNumber").val() == ""){
		                $(".err-msg").text("please enter mobile");
		                $("#mobileNumber").focus();
		                $(".err-msg").show();
		                flag = false;
		                return false;
		              }else if($("#mobileNumber").val().length!=10){
		                $(".err-msg").text("please enter mobile with  10 characters. current characters are::"+$("#mobileNumber").val().length);
		                $("#mobileNumber").focus();
		                $(".err-msg").show();
		                flag = false;
		                return false;
		              }else{
		                var ph = $("#mobileNumber").val();
		                var reg =  /^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
		              
		              if(!reg.test(ph)){
		                 $(".err-msg").text("please enter valid Mobile");
		                 $("#mobileNumber").focus();
		                 $(".err-msg").show();
		                 flag = false;
		                 return false;
		              }
		             }
		    	  
		    	  if($("#emailAddress").val() == ""){
		                $(".err-msg").text("please enter Email");
		                $("#emailAddress").focus();
		                $(".err-msg").show();
		                flag = false;
		                return false;
		              }else if($("#emailAddress").val().length >50){
		                $(".err-msg").text("please enter Email with  50 characters. current characters are::"+$("#emailAddress").val().length);
		                $("#emailAddress").focus();
		                $(".err-msg").show();
		                flag = false;
		                return false;
		              }else{
		                var email = $("#emailAddress").val();
		                var reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		                if(!reg.test(email)){
		                  $(".err-msg").text("please enter valid Email");
		                  $("#emailAddress").focus();
		                  $(".err-msg").show();
		                  flag = false;
		                  return false;
		                }
		              }
		    	  
		    	  return flag; 
		     }
		</script>  
