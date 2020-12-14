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
              box-sizing:border-box;
           }
     .d-form{
            text-align: center;
            position: absolute;
            background:#0e1557;
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
     .input-fields{
	          margin-top: 100px;
	 }
	 .button{
	 
	          margin-top: 150px;
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
	  
     .confirmToRegister{
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
	          <div class="sub-titel">Enter Payment Details </div>
		       <div class="input-fields">
		           <div class="tag">
			          <input type="text" class="accountNumber input" id="accountNumber" placeholder="Account Number"/>
			       </div>
			       <div class="tag">   
			          <input type="text" class="iFSCCode input" id="iFSCCode" placeholder="IFSC Code" />
			       </div>
			       <div class="tag">
			          <input type="text" class="gPayNumber input" id="gPayNumber" placeholder="GPay Number" />
			       </div>
			       <div class="tag">
			          <input type="text" class="phonePayNumber input" id="phonePayNumber" placeholder="Phone Pay Number" />
			       </div>
			       <div class="tag">
			          <input type="text" class="paytmNumber input" id="paytmNumber" placeholder="Paytm Number" />
		           </div>
		       </div>
		       <div class="button" >
		              <button class="previous" id="previous">Previous</button>
				      <button class="confirmToRegister " id="confirmToRegister"><span>Confirm to Register</span></button>
		       </div>
	       </div>
       </div>
        <script>
			var contextPath="${contextPath}";
			var obj={};
		     $(document).ready(function(){
		    	 
		    	 $(".previous").click(function(){
		    		 
		    		 window.location=contextPath+"/teacher/teacherDtls";
		    		 
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