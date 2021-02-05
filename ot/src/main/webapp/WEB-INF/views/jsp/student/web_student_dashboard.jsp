<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
<style>
.main-div{
  display: flex;
  position: absolute;
  flex-flow: wrap;
  align-items: center;
  justify-content: center ;
}
.card-1{
  border : 4px solid;
  text-align:center;
}
.card-2{
 
  text-align:center;
  width: 65%;
}

.btn-1 {
		 border: 1px solid;
	     background:linear-gradient(to right, #434343 0%, black 100%);
	     padding: 2px;
		 transform: rotateX(45deg);
		 cursor: pointer;
		 transition-duration: .5s;
		 color: #9c771c;
}
.btn-1:hover{
		 transform: scale(1.2);
		 box-shadow: none;
		 color: #DB6B13;
	}
.pro-card {
	     width: 170px;
	     padding: 15px;
	     border: 1px solid;
	     border-radius: 8px;
	     margin-left: 32px;
} 	
.btn-icon{
  		 margin: 12px;
  		 border: 1px solid;
         padding: 6px;
         background: linear-gradient(to right, #434343 0%, black 100%); 
}


</style>

<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
            <div class="card">
                <div class="card-body">
	                <div class="text-center pro-card">
			            <span class="iconSpan"><i class="fas fa-user-graduate fa-9x "></i></span>
		            </div>
		            <div class="btn-icon text-center">
		               <span class="m-1 ">
		                   <button class="btn btn-1"><i class="fas fa-user-edit"></i></button>
		               </span >
		                <span class="m-1 ">
		                   <button class="btn btn-1">Pay the fee</button>
		               </span>
		                <span class="m-1  ">
		                   <button class="btn btn-1">Logout</button>
		               </span>
		            </div>
		            <form action="action_page.php">
						  <div class="list-item">
						    <label for="name">Name :</label>
						  </div>
						  <div class="list-item">
						    <label for="name">Date :</label>
						  </div>
						  <div class="list-item">
						    <label for="name">age :</label>
						  </div>
						  <div class="list-item">
						    <label for="name">Education :</label>
						  </div>
						  <div class="list-item">
						    <label for="name">Date of Enrollment :</label>
						  </div>
						  <div class="list-item">
						    <label for="name">Net fee Date :</label>
						  </div>
				   </form>
                </div>
            </div>
         </div>
         <div class="col-sm-12 col-md-8 col-lg-8 col-xl-8">
         <h2 class="title text-left">
         	Enrolled Courses
         	<button class="btn btn-success float-right" id="addCourse"><i class="fas fa-plus-square"></i> Course</button>
         </h2>
          <div class="enrolled-courses">
            <div class="card mb-2">
                <div class="card-body">
                	<div class="d-flex">
                		<div class="person-img pr-3 fb30 pr">
                			<i class="fas fa-user-tie  fa-5x"></i>
                		</div>
                		<div class="person-info fb70">
                			<h4 class="card-title"> K. Kishore Kumar Reddy <span class="fee float-right"> Fee : $250.00</span> </h4>
                			<p class="card-text d-flex">
                				<span class="person-exp flex-fill"><i class="fas fa-briefcase"></i> Economy 15years experience (CBSC)</span> 
                				<span class="slot-time flex-fill"><i class="far fa-clock"></i> Enrolled slot 6pm to 7pm</span>
                			</p>
                			<p class="card-text text-justify">
                				Bootstrap 4 is the newest version of Bootstrap; with new components, faster stylesheet and more 
							     responsiveness. <a href="#">Read More <i class="fas fa-angle-double-right"></i></a>
                			</p>
                		</div>
                	</div>
		        </div>
		     </div>
		    <div class="card mb-2">
                <div class="card-body">
                	<div class="d-flex">
                		<div class="person-img pr-3 fb30 pr">
                			<i class="fas fa-user-tie  fa-5x"></i>
                		</div>
                		<div class="person-info fb70">
                			<h4 class="card-title"> K. Kishore Kumar Reddy <span class="fee float-right"> Fee : $250.00</span> </h4>
                			<p class="card-text d-flex">
                				<span class="person-exp flex-fill"><i class="fas fa-briefcase"></i> Economy 15years experience (CBSC)</span> 
                				<span class="slot-time flex-fill"><i class="far fa-clock"></i> Enrolled slot 6pm to 7pm</span>
                			</p>
                			<p class="card-text text-justify">
                				Bootstrap 4 is the newest version of Bootstrap; with new components, faster stylesheet and more 
							     responsiveness. <a href="#">Read More <i class="fas fa-angle-double-right"></i></a>
                			</p>
                		</div>
                	</div>
		        </div>
		     </div>
		     <div class="card mb-2">
                <div class="card-body">
                	<div class="d-flex">
                		<div class="person-img pr-3 fb30 pr">
                			<i class="fas fa-user-tie  fa-5x"></i>
                		</div>
                		<div class="person-info fb70">
                			<h4 class="card-title"> K. Kishore Kumar Reddy <span class="fee float-right"> Fee : $250.00</span> </h4>
                			<p class="card-text d-flex">
                				<span class="person-exp flex-fill"><i class="fas fa-briefcase"></i> Economy 15years experience (CBSC)</span> 
                				<span class="slot-time flex-fill"><i class="far fa-clock"></i> Enrolled slot 6pm to 7pm</span>
                			</p>
                			<p class="card-text text-justify">
                				Bootstrap 4 is the newest version of Bootstrap; with new components, faster stylesheet and more 
							     responsiveness. <a href="#">Read More <i class="fas fa-angle-double-right"></i></a>
                			</p>
                		</div>
                	</div>
		        </div>
		     </div>
		     <div class="card mb-2">
                <div class="card-body">
                	<div class="d-flex">
                		<div class="person-img pr-3 fb30 pr">
                			<i class="fas fa-user-tie  fa-5x"></i>
                		</div>
                		<div class="person-info fb70">
                			<h4 class="card-title"> K. Kishore Kumar Reddy <span class="fee float-right"> Fee : $250.00</span> </h4>
                			<p class="card-text d-flex">
                				<span class="person-exp flex-fill"><i class="fas fa-briefcase"></i> Economy 15years experience (CBSC)</span> 
                				<span class="slot-time flex-fill"><i class="far fa-clock"></i> Enrolled slot 6pm to 7pm</span>
                			</p>
                			<p class="card-text text-justify">
                				Bootstrap 4 is the newest version of Bootstrap; with new components, faster stylesheet and more 
							     responsiveness. <a href="#">Read More <i class="fas fa-angle-double-right"></i></a>
                			</p>
                		</div>
                	</div>
		        </div>
		     </div>
		   </div>
        </div>
    </div>
</div>

<script> 
		var contextPath="${contextPath}";
		var obj={};
		 $(document).ready(function(){
			 
			 $(".log-btn").click(function(){
				 
				 window.location=contextPath+"/student/studentLogin";
				 
			 });
		     $(".registerBtn").click(function(){
				 
				 window.location=contextPath+"/student/studentRegInitial";
				 
			 });
		     $(document).on('click','#addCourse',function(){
		    	 window.location=contextPath+"/student/otListCourses";
		     });
		 });
</script> 
