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
	  
     .submit{
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
        .communicationAddress {
           padding: 0px;
           margin:0px;
           resize:none;
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
	             <h1>Student Registration</h1>
	          </div>
	          <span class=""></span>
	          <div class="sub-titel">Enter Basic Details </div>
		       <div class="input-fields">
		         <div class="tag">
		          <input type="text" class="studentFullName input" id="studentFullName" placeholder="Student full Name"/>
		         </div>
		         <div class="tag">
		          <input type="text" class="parentName input" id="parentName" placeholder="Parent/Guardian Name" />
		         </div>
		         <div class="tag">    
		          <input type="text" class="classAppears input" id="classAppears" placeholder="Class appears" />
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
			     <div class="tag" >  
			          <select class="nameOfTheState input" id="nameOfTheState">
			               <option >Name Of The State</option>
			               <option>Andhrapradesh</option>
			               <option>Assam</option>
			               <option>Arunachal Pradesh</option>
			               <option>Bihar</option>
			               <option>Chatisgarh</option>
			               <option>Goa</option>
			               <option>Gujarath</option>
			               <option>Haryana</option>
			               <option>Himachal Pradesh</option>
			               <option>Jammu and Kashmir</option>
			               <option>Jharkhand</option>
			               <option>Karnataka</option>
			               <option>Kerala</option>
			               <option>Madhya Pradesh</option>
			               <option>Maharastra</option>
			               <option>Manipur</option>
			               <option>Meghalaya</option>
			               <option>Mizoram</option>
			               <option>Nagaland</option>
			               <option>Odisha</option>
			               <option>Punjab</option>
			               <option>Rajasthan</option>
			               <option>Sikkim</option>
			               <option>Tamil Nadu</option>
			               <option>Thipura</option>
			               <option>Telangana</option>
			               <option>Uttara Pradesh</option>
			               <option>Uttarakhand</option>
			               <option>West Bengal</option>
			               <option>UT:-</option>
			               <option>Andaman and Nicobar</option>
			               <option>Chandigarh</option>
			               <option>Delhi</option>
			               <option>Dadra and Nagar Haveli</option>
			               <option>Daman and Diu</option>
			               <option>Jammu and Kashmir</option>
			               <option>Ladakh</option>
			               <option>Lakshdweep</option> 
			               <option>Puducherry</option>
			          </select>
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
		               <option>Other [ Type the qualification in case you select it ]</option>
		           </select>
		        </div>   
		         <div class="tag">  
		          <input type="text" class="dob input" id="dob" placeholder="DOB" />
		         </div>
		         <div class="tag">  
		          <input type="text" class="schoolName input" id="schoolName" placeholder="School Name" />
		         </div>
		         <div class="tag">  
		          <input type="text" class="schoolLocation input" id="schoolLocation" placeholder="School Location" />
		         </div>
		         <div class="tag">  
		          <input type="text" class="currentLocation input" id="currentLocation" placeholder="Current Location" />
		         </div>
		         <div class="tag">  
		          <input type="text" class="state input" id="state" placeholder="State" />
		         </div>
		         <div class="tag">  
		          <input type="text" class="mobileNumber input" id="mobileNumber" placeholder="Mobile Number [ User Id ]" />
		         </div>
		         <div class="tag">  
		          <input type="text" class="emailAddress input" id="emailAddress" placeholder="Email Address" />
		         </div>
		         <div class="tag">  
		          <textarea  rows="2"  class="communicationAddress input" id="communicationAddress" placeholder="Communication Address"></textarea>
		         </div>
		         
		       <div class="button" >
				      <button class="submit " id="submit"><span>Submit</span></button>
		       </div> 
	       </div>
       </div>
    </div>   
</body>
</html>