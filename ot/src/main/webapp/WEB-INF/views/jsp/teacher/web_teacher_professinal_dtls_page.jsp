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
	         <h4 class="card-titel text-center">Enter Professional Details </h4>
	         <div class="row">
		          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
		          	     <input type="text" class="subject input" id="subject" placeholder="Subject"/>
		          	</div>
		          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
		          	     <input type="text" class="aboutSubject input" id="aboutSubject" placeholder="About Subject" />
		          	     
		          	</div>
		          	<!-- <p class="note">Please write about you which will be appear in your Profile in pic..</p> -->
		          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
		          	     <select class="subjectSpecialization input" id="subjectSpecialization">
				               <option value="-1" >Subject Specialization</option>
				               <option value="1">Mathematics</option>
				               <option value="2">Science</option>
				               <option value="3">EVS</option>
				               <option value="4">Social</option>
				          </select>
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
		          	     <input type="text" class="nameofTheState input" id="nameofTheState" placeholder="Name of The State" />
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
			               <option value="14">Kashmiri</option>
			           </select>
		          	</div>
		          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
		          	     <input type="text" class="typeTheLanguage input" id="typeTheLanguage" placeholder="Type The Language" />
		          	</div>
		          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
		          	     <input type="text" class="classCanBeHandle input" id="classCanBeHandle" placeholder="Class Can Be Handle" />
		          	</div>
		          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
		          	     <textarea  type="text" class="adderssforCommunication input" id="adderssforCommunication" placeholder="Adderss for Communication"></textarea>
		          	</div>
		          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4"></div>
		          	<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4"></div>
		     </div>
	    </div>
	         <div class="card-footer text-right">
		        <button class="back btn btn-dark" id="back"><span>Back</span></button>
			    <button class="next btn btn-primary" id="next"><span>Next</span></button>
		   </div>
	 </div>
</div>
       <script>
			var contextPath="${contextPath}";
			var obj={};
		     $(document).ready(function(){
		    	 
		    	 $(".next").click(function(){
		    		 
		    		 window.location=contextPath+"/teacher/teacherDtls";
		    		 
		    	 });
                 $(".back").click(function(){
		    		 
		    		 window.location=contextPath+"/teacher/teacherRegInitial";
		    		 
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
