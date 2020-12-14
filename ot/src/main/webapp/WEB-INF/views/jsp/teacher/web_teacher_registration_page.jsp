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
      
       @media screen and (min-width: 400px) {
       
          body {
           background-color: #0e1557;
       }
     }
  
	  *{
	         /*  box-shadow: none; */
	          autolone:none;
              box-sizing:border-box;
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
	  
     .next{
			  border-radius: 6px;
			  width: 500px;
			  font-size: 20px;
			  padding: 12px;
			  outline: none;
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
	          <div class="sub-titel">Enter Basic Details </div>
		       <div class="input-fields">
		         <div class="tag">
		          <input type="text" class="fullNameofTheTeacher input" id="fullNameofTheTeacher" placeholder="Full Name of The Teacher"/>
		         </div>
		         <div class="tag">
		          <input type="text" class="mobileNo input" id="mobileNo" placeholder="Mobile No" />
		         </div>
		         <div class="tag">    
		          <input type="text" class="emailId input" id="emailId" placeholder="Email Id" />
		         </div>
		         <div class="tag">  
		          <input type="text" class="currentLocation input" id="currentLocation" placeholder="Current Location" />
		         </div>
		         <div class="tag">  
		          <input type="text" class="state input" id="state" placeholder="State" />
		         </div>
		         <div class="tag">
		          <select class="qualification input" id="qualification">
		               <option>Highest Education Qualification</option>
		               <option>Ph.D/Doctorate</option>
		               <option>M.Phil</option>
		               <option>Other PPG [ Type the qualification in case you select it ]</option>
		               <option>M.ed</option>
		               <option>M.Tech</option>
		               <option>M.Pharma</option>
		               <option>M.S/M.D</option>
		               <OPTION>M.Sc</OPTION>
		               <option>M.Com</option>
		               <option>MBA</option>
		               <option>MCA</option>
		               <option>MA</option>
		               <option>CA</option>
		               <option>CS</option>
		               <option>Other PG [ Type the qualification in case you select it ]</option>
		               <option>B.Ed</option>
		               <option>B.E</option>
		               <option>B.Tech</option>
		               <option>B.Sc</option>
		               <option>BBA</option>
		               <option>BCA</option>
		               <option>BA</option>
		               <option>MBBS</option>
		               <option>LLD</option>
		               <option>Diploma</option>
		               <option>AIME</option>
		               <option>Other [ Type the qualification in case you select it ]</option>
		               
		          </select>
		          </div>
		         <div class="tag">
		          <input type="text" class="passedOutYear input" id="passedOutYear" placeholder="Passed Out Year" />
		          </div>
		         <div class="tag">
		          <input type="text" class="university input" id="university" placeholder="University/Board/College/Institute" />
		          </div>
		         <div class="tag">
		          <select class="experience input" id="experience">
		               <option>Experience</option>
		               <option>0</option>
		               <option>1</option>
		               <option>2</option>
		               <option>3</option>
		               <option>4</option>
		               <option>5</option>
		               <option>6</option>
		               <option>7</option>
		               <option>8</option>
		               <option>9</option>
		               <option>10</option>
		          </select>
		         </div>
		         <div class="tag"> 
		          <select class="totalYearofExperience input" id="totalYearofExperience">
		               <option>Total Year of Experience</option>
		               <option>0</option>
		               <option>1</option>
		               <option>2</option>
		               <option>3</option>
		               <option>4</option>
		               <option>5</option>
		               <option>6</option>
		               <option>7</option>
		               <option>8</option>
		               <option>9</option>
		               <option>10</option>
		          </select>
		          
		       </div>
		       <div class="button" >
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
     
</body>
</html>