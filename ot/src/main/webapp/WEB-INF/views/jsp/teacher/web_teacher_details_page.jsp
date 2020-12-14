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
	              box-sizing: border-box;
           }
     .d-form{
	            text-align: center;
	            position: absolute;
	            background:#0e1557;
	            width: 100%;
	            padding: 0 20px;
	            height: 721px;
            
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
	 
	 .input-fields{
	          margin-top: 100px;
	 }
	 .button{
	 
	          margin-top: 200px;
	 }
	 .note{
	          color: #b8af14;
	          margin-left: 420px;
	 }
	 
	 .previous{
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
	          <div class="sub-titel">Enter Below Details </div>
		       <div class="input-fields">
		         <div class="tag">  
			          <select class="timingsAvailable input" id="timingsAvailable">
			               <option>Timings Available</option>
			               <option>5AM-6AM</option>
			               <option>6AM-7AM</option>
			               <option>7AM-8AM</option>
			               <option>8AM-9AM</option>
			               <option>9AM-10AM</option>
			               <option>10AM-11AM</option>
			               <option>11AM-12Noon</option>
			               <option>12Noon-1PM</option>
			               <option>1PM-2PM</option>
			               <option>2PM-3PM</option>
			               <option>3PM-4PM</option>
			               <option>4PM-5PM</option>
			               <option>5PM-6PM</option>
			               <option>6PM-7PM</option>
			               <option>7PM-8PM</option>
			               <option>8PM-9PM</option>
			          </select>
		         </div>
		         <div class="tag">
			          <select class="monthlyFeeExpectationPerstudent input" id="monthlyFeeExpectationPerstudent">
			               <option>Monthly Fee Expectation per student</option>
			               <option>500</option>
			               <option>750</option>
			               <option>1000</option>
			               <option>1500</option>
			               <option>2000</option>
			               <option>2500</option>
			               <option>3000</option>
			               <option>3500</option>
			               <option>4000</option>
			               <option>4500</option>
			               <option>5000</option>
			          </select>
		         </div class="tag">  
		          <div class="note">Note: Base on the selection more students may approach you</div>
		         <div class="tag"> 
		          <select class="noofStudentsyoucanTeachAtaTime input" id="noofStudentsyoucanTeachAtaTime">
		               <option>No of Students you can teach at a time</option>
		               <option>1</option>
		               <option>2-5</option>
		               <option>6-8</option>
		               <option>8-10</option>
		               <option>10+</option>
		          </select>
		        </div>  
		       </div>
		       <div class="button" >
		              <button class="previous " id="previous"><span>Previous</span></button>
				      <button class="next " id="next"><span>Next</span></button>
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
                 $(".previous").click(function(){
		    		 
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