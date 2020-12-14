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
    
    @media screen and (min-width: 600px) {
  body {
           background-color: #0e1557;
       }
     }
  
	  *{
	           box-shadow: none; 
	          /* autolone:none; */
              box-sizing: border-box;
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
	 
	 .note{
	          color: #b8af14;
	          margin-left: 450px;
	 }
	 
	 .previous {
	          border-radius: 6px;
			  width: 500px;
			  font-size: 20px;
			  padding: 12px;
			  margin-top: 8px;
			  background-color: #b8af14;
			  color: #fafafc;
			  cursor: pointer;
	          border-radius: 26px;
	 }
	 .subjectSpecialization{
	          margin-left: -78px;
	 }
	  
     .next{
			  border-radius: 6px;
			  width: 500px;
			  font-size: 20px;
			  padding: 12px;
			  margin-top: 8px;
			  background-color: #35afb0;
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
	             <h1>Teacher Registration</h1>
	          </div>
	          <span class=""></span>
	          <div class="sub-titel">Enter Professional Details </div>
		       <div class="input-fields">
		         <div class="tag">
		           <input type="text" class="subject input" id="subject" placeholder="Subject"/>
		         </div>
		         <div class="tag" >
		           <input type="text" class="aboutSubject input" id="aboutSubject" placeholder="About Subject" />
		         </div>
		         <div class="tag">  
		           <div class="note">Please write about you which will be appear in your Profile in pic..</div>
		         </div>
		         <div class="tag" >
			          <select class="subjectSpecialization input" id="subjectSpecialization">
			               <option class="subSpl" >Subject Specialization</option>
			               <option>Mathematic</option>
			               <option>Science</option>
			               <option>EVS</option>
			               <option>Social</option>
			          </select>
		         </div>
		         <div class="tag" >  
			          <select class="syllabusSpecialization input" id="syllabusSpecialization">
			               <option >Syllabus Specialization</option>
			               <option>CBSE</option>
			               <option>ICSE</option>
			               <option>IB</option>
			               <option>STATE BOARD</option>
			          </select>
		        </div>
		        <div class="tag">  
		          <input type="text" class="nameofTheState input" id="nameofTheState" placeholder="Name of The State" />
		        </div>
		        <div class="tag">   
		          <select class="schoolMedium input" id="schoolMedium">
		               <option>School Medium</option>
		               <option>English</option>
		               <option>Hindi</option>
		               <option>Telugu</option>
		               <option>Tamil</option>
		               <option>Kannada</option>
		               <option>Malayali</option>
		               <option>Marati</option>
		               <option>Urdu</option>
		               <option>Gujarathi</option>
		               <option>Konkini</option>
		               <option>Bengali</option>
		               <option>Panjabi</option>
		               <option>Odia</option>
		               <option>Assamase</option>
		               <option>Kashmiri</option>
		           </select>
		        </div>
		        <div class="tag"> 
		          <input type="text" class="typeTheLanguage input" id="typeTheLanguage" placeholder="Type The Language" />
		        </div>
		        <div class="tag">
		          <input type="text" class="classCanBeHandle input" id="classCanBeHandle" placeholder="Class Can Be Handle" />
		        </div>
		        <div class="tag">
		          <textarea  type="text" class="adderssforCommunication input" id="adderssforCommunication" placeholder="Adderss for Communication"></textarea>
		        </div> 
		       <div class="button" >
		              <button class="previous " id="previous"><span>Previous</span></button>
				      <button class="next " id="next"><span>Next</span></button>
		       </div>
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
                 $(".previous").click(function(){
		    		 
		    		 window.location=contextPath+"/teacher/teacherReg";
		    		 
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
</body>
</html>