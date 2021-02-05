 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
 <style>
 	.accord-block{
  		display: block;
 	}
 	svg{
 		transition:all 0.5s;
 	}
 	.rotate{
 		transition:all 0.5s;
 		transform:rotate(180deg);
 	}
 	.coursesList  .card{
 		margin-bottom:25px;
 		align-items:center;
 		justify-content:center;
 		cursor:pointer;
 		transition:all 0.5s;
 		padding:0px;
 		overflow:hidden;
 	}
 	.coursesList  .card .card-body{
 		width:100%;
 	}
 	
 	.coursesList .card-img-top{
 		width:200px !important;
 		height:200px !important;
 	}
 	.coursesList  .not-selected{
 		transform:scale(0.95);
 	}
 	.not-selected .card-body{
 		background:#999;
 	}
 	
 	
 	.coursesList  .card.active{
 		transform:scale(1.05);
 		border-radius:20px;
 		box-shadow:0 0 20px rgba(0,223,182,0.25);
 		
 	}
 	.coursesList  .card.active .card-body{
 		background:#01be9b;
 	}
 	
 	
 </style>
 
 <div class="container">
 	<div class="selectedCourses">
		    <div class="row">
		        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
					 <div id="selectedCoursesAccord">
					   <div class="card">
					     <div class="card-header">
					       <a class="card-link accord-block" data-toggle="collapse" href="#selectedCoursesList">
					        Selected Courses <i class="fas fa-chevron-down float-right"></i>
					       </a>
					     </div>
					     <div id="selectedCoursesList" class="collapse" data-parent="#selectedCoursesAccord">
					       <div class="card-body">
					       		<div class="table-responsive">
					       			<table class="table table-bordered table-hover table-striped">
					       				<thead>
					       					<tr>
					       						<th>S.No</th>
					       						<th>Course Name</th>
					       						<th>Teacher Name</th>
					       						<th>Timings</th>
					       						<th>Fee (Rs.)</th>
					       					</tr>
					       				</thead>
					       				<tbody>
					       					<tr>
					       						<td>1</td>
					       						<td>English</td>
					       						<td>Sanjay T</td>
					       						<td>7AM-8AM</td>
					       						<td>250/-</td>
					       					</tr>
					       					<tr>
					       						<td>2</td>
					       						<td>Telugu</td>
					       						<td>Kethava T</td>
					       						<td>6AM-7AM</td>
					       						<td>250/-</td>
					       					</tr>
					       				</tbody>
					       			</table>
					       		</div>
					        </div>
					     </div>
					   </div>
					 </div>
				</div>
			</div>
	 </div>
	 <div class="coursesList mt-3">
	 	<h2 class="title text-left header-bg mb-4">List of courses</h2>
	 	<div class="coursesCardView row">
	 		<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	 			<div class="card">
	 				<img class="card-img-top img-fluid" src="${resourcePath}/images/book-img.jpg" alt="Subject image" style="width:100%">
	 				<div class="card-body">
	 					<h4 class="card-title text-center">Telugu</h4>
	 					<!-- <p class="card-text"></p> -->
	 				</div>
	 			</div>
	 		</div>
	 		<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	 			<div class="card">
	 				<img class="card-img-top img-fluid" src="${resourcePath}/images/book-img.jpg" alt="Subject image" style="width:100%">
	 				<div class="card-body">
	 					<h4 class="card-title text-center">Hindi</h4>
	 					<!-- <p class="card-text"></p> -->
	 				</div>
	 			</div>
	 		</div>
	 		<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	 			<div class="card">
	 				<img class="card-img-top img-fluid" src="${resourcePath}/images/book-img.jpg" alt="Subject image" style="width:100%">
	 				<div class="card-body">
	 					<h4 class="card-title text-center">English</h4>
	 					<!-- <p class="card-text"></p> -->
	 				</div>
	 			</div>
	 		</div>
	 		
	 		<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	 			<div class="card">
	 				<img class="card-img-top img-fluid" src="${resourcePath}/images/book-img.jpg" alt="Subject image" style="width:100%">
	 				<div class="card-body">
	 					<h4 class="card-title text-center">Mathematics</h4>
	 					<!-- <p class="card-text"></p> -->
	 				</div>
	 			</div>
	 		</div>
	 		
	 		<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	 			<div class="card">
	 				<img class="card-img-top img-fluid" src="${resourcePath}/images/book-img.jpg" alt="Subject image" style="width:100%">
	 				<div class="card-body">
	 					<h4 class="card-title text-center">Chemistry</h4>
	 					<!-- <p class="card-text"></p> -->
	 				</div>
	 			</div>
	 		</div>
	 		<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
	 			<div class="card">
	 				<img class="card-img-top img-fluid" src="${resourcePath}/images/book-img.jpg" alt="Subject image" style="width:100%">
	 				<div class="card-body">
	 					<h4 class="card-title text-center">Physics</h4>
	 					<!-- <p class="card-text"></p> -->
	 				</div>
	 			</div>
	 		</div>
	 	</div>
	 </div>
	 <div class="row">
	 	<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 text-right">
	 		<button class="btn btn-dark" id="back">Back</button>
	 		<button class="btn btn-primary" id="next">Next</button>
	 	</div>
	 </div>
</div>
<script>
	$(document).ready(function(){
		$(document).on('click','.accord-block',function(){
			var expand = $(this).attr("aria-expanded");
			if(expand == 'true'){
				$(".fa-chevron-down").addClass("rotate");
			}else{
				$(".fa-chevron-down").removeClass("rotate");
			}
		});
		$(document).on('click','.coursesList .card',function(){
			if(!$(this).hasClass("active")){
				$(".coursesList .card").removeClass("active").addClass("not-selected");
				$(this).addClass("active").removeClass("not-selected");
			}
		});
		$(document).on('click','#next',function(){
			window.location = contextPath+"/student/listInstructors"; 
		});
		$(document).on('click','#back',function(){
			window.location = contextPath+"/login/stuDashboard";
		});
		
	});
</script>
 
 