<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
<style>
	.input{
      background: transparent;
      border: 0;
      font-size: 17px;
      border-bottom: 1px solid #8b7682;
      outline: none;
      width: 100%;
      position: relative;
      z-index: 1;
       padding:0px;
 }
 label.lbl-float {
    position: absolute;
    left: 20px;
    top: 50%;
    transform: translate(-50%,-50%);
    z-index: 0;
}

.input:focus+.lbl-float {
    top: 0px;
    font-size: 12px;
}
.instructorsList .card{
	cursor:pointer;
}
.instructorsList .card p, .instructorsList .card span{
	font-size:12px !important;
}
.instructorsList .card .card-title{
	font-size:15px !important;
	font-weight:bold;
}
.fee{
	background: orange;
    color: #5b1212;
    padding-left: 5px;
    font-weight: bold;
    margin-right: 11px;
}
.fee svg{
	font-size:10px;
}
.slot-time{
	background: #30ff53;
    color: #124a5b;
    padding-left: 5px;
    font-weight: bold;
}
.selectedSubject label {
    font-size: 15px !important;
    margin: 0px !important;
    font-weight: normal !important;
}
.selectedSubject{
	font-weight: bold;
    font-size: 20px;
    position: absolute;
    right: 0;
    top: -22px;
    background: #fff;
}
.selectedSubject svg.svg-inline--fa.fa-thumbtack.fa-w-12 {
    position: absolute;
    top: -10px;
    transform: rotate(-20deg);
    left: 0;
}
</style>
 <div class="container">
 	<div class="inner">
		    <div class="row">
		        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
		        	<h2 class="title text-left header-bg mb-2">List of instructors</h2>
		        	<div class="search-box row mb-5">
		        		 <h4 class="col-sm-12 col-md-12 col-lg-12 sub-title text-left">Search Filter</h4>
	        			  <div class="col-sm-12 col-md-3 col-lg-3 col-xl-3">
	        			  	<div class="form-group pr">
	        			  		<input type="text" id="timings" class="input"/>
	        			  		<label class="lbl-float">Timings</label>
	        			  	</div>
	        			 </div>
	        			  <div class="col-sm-12 col-md-3 col-lg-3 col-xl-3">
	        			  	<div class="form-group pr">
	        			  		<input type="text" id="rating" class="input"/>
	        			  		<label class="lbl-float">Rating</label>
	        			  	</div>
	        			</div>
	        			<div class="col-sm-12 col-md-3 col-lg-3 col-xl-3">
	        			  	<div class="form-group text-right">
	        			  		<button class="btn btn-dark" id="clear">Clear</button>
	        			  		<button class="btn btn-primary" id="clear">Search</button>
	        			  	</div>
	        			</div>
	        			
		        	</div>
				</div>
			</div>
	 </div>
	 <div class="instructorsList box pr">
	 	<h4 class="title text-left mb-3">Instructors
	 		<span class="selectedSubject float-right btn btn-outline-success">
	 			<label>Selected Subject:</label> Mathematics
	 			<i class="fas fa-thumbtack"></i>
	 		</span>
	 	</h4>
	 	<div class="instructorsListCardView row">
	 		 <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
	 		 	 <div class="card mb-2">
	                <div class="card-body">
	                	<div class="d-flex">
	                		<div class="person-img pr-3 fb30 pr">
	                			<i class="fas fa-user-tie  fa-5x"></i>
	                		</div>
	                		<div class="person-info fb70">
	                			<h4 class="card-title"> K. Kishore Kumar Reddy   <span class="designation float-right"> M.Sc MEd</span></h4>
	                			<p class="card-text d-flex">
	                				<span class="subject flex-fill"><i class="fas fa-book"></i> Mathematics</span> 
	                				<span class="experience flex-fill"><i class="fas fa-briefcase"></i>  35 Years CBSE</span>
	                			</p>
	                			<p class="card-text d-flex">
	                				<span class="fee flex-fill"> <i class="fas fa-money-bill-wave"></i> Fee : <i class="fas fa-rupee-sign"></i>250.00</span>
	                				<span class="slot-time flex-fill"><i class="far fa-clock"></i>  Slots Available :	6AM	to	7AM </span>
	                			</p>
	                			<p class="card-text text-justify">
	                			Tarakaramarao Did	his	M.Sc Med	from	Andhra	
								University	Mathematics	as	a	specialisation.	<a href="#">Read More <i class="fas fa-angle-double-right"></i></a>
	                			</p>
	                		</div>
	                	</div>
			        </div>
			     </div>
	 		 </div>
	 		   <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
	 		 	 <div class="card mb-2">
	                <div class="card-body">
	                	<div class="d-flex">
	                		<div class="person-img pr-3 fb30 pr">
	                			<i class="fas fa-user-tie  fa-5x"></i>
	                		</div>
	                		<div class="person-info fb70">
	                			<h4 class="card-title"> K. Kishore Kumar Reddy   <span class="designation float-right"> M.Sc MEd</span></h4>
	                			<p class="card-text d-flex">
	                				<span class="subject flex-fill"><i class="fas fa-book"></i> Mathematics</span> 
	                				<span class="experience flex-fill"><i class="fas fa-briefcase"></i>  35 Years CBSE</span>
	                			</p>
	                			<p class="card-text d-flex">
	                				<span class="fee flex-fill"> <i class="fas fa-money-bill-wave"></i> Fee : <i class="fas fa-rupee-sign"></i>250.00</span>
	                				<span class="slot-time flex-fill"><i class="far fa-clock"></i>  Slots Available :	6AM	to	7AM </span>
	                			</p>
	                			<p class="card-text text-justify">
	                			Tarakaramarao Did	his	M.Sc Med	from	Andhra	
								University	Mathematics	as	a	specialisation.	<a href="#">Read More <i class="fas fa-angle-double-right"></i></a>
	                			</p>
	                		</div>
	                	</div>
			        </div>
			     </div>
	 		 </div>
	 		 <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
	 		 	 <div class="card mb-2">
	                <div class="card-body">
	                	<div class="d-flex">
	                		<div class="person-img pr-3 fb30 pr">
	                			<i class="fas fa-user-tie  fa-5x"></i>
	                		</div>
	                		<div class="person-info fb70">
	                			<h4 class="card-title"> K. Kishore Kumar Reddy   <span class="designation float-right"> M.Sc MEd</span></h4>
	                			<p class="card-text d-flex">
	                				<span class="subject flex-fill"><i class="fas fa-book"></i> Mathematics</span> 
	                				<span class="experience flex-fill"><i class="fas fa-briefcase"></i>  35 Years CBSE</span>
	                			</p>
	                			<p class="card-text d-flex">
	                				<span class="fee flex-fill"> <i class="fas fa-money-bill-wave"></i> Fee : <i class="fas fa-rupee-sign"></i>250.00</span>
	                				<span class="slot-time flex-fill"><i class="far fa-clock"></i>  Slots Available :	6AM	to	7AM </span>
	                			</p>
	                			<p class="card-text text-justify">
	                			Tarakaramarao Did	his	M.Sc Med	from	Andhra	
								University	Mathematics	as	a	specialisation.	<a href="#">Read More <i class="fas fa-angle-double-right"></i></a>
	                			</p>
	                		</div>
	                	</div>
			        </div>
			     </div>
	 		 </div>
	 		 <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
	 		 	 <div class="card mb-2">
	                <div class="card-body">
	                	<div class="d-flex">
	                		<div class="person-img pr-3 fb30 pr">
	                			<i class="fas fa-user-tie  fa-5x"></i>
	                		</div>
	                		<div class="person-info fb70">
	                			<h4 class="card-title"> K. Kishore Kumar Reddy   <span class="designation float-right"> M.Sc MEd</span></h4>
	                			<p class="card-text d-flex">
	                				<span class="subject flex-fill"><i class="fas fa-book"></i> Mathematics</span> 
	                				<span class="experience flex-fill"><i class="fas fa-briefcase"></i>  35 Years CBSE</span>
	                			</p>
	                			<p class="card-text d-flex">
	                				<span class="fee flex-fill"> <i class="fas fa-money-bill-wave"></i> Fee : <i class="fas fa-rupee-sign"></i>250.00</span>
	                				<span class="slot-time flex-fill"><i class="far fa-clock"></i>  Slots Available :	6AM	to	7AM </span>
	                			</p>
	                			<p class="card-text text-justify">
	                			Tarakaramarao Did	his	M.Sc Med	from	Andhra	
								University	Mathematics	as	a	specialisation.	<a href="#">Read More <i class="fas fa-angle-double-right"></i></a>
	                			</p>
	                		</div>
	                	</div>
			        </div>
			     </div>
	 		 </div>
	 		  <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
	 		 	 <div class="card mb-2">
	                <div class="card-body">
	                	<div class="d-flex">
	                		<div class="person-img pr-3 fb30 pr">
	                			<i class="fas fa-user-tie  fa-5x"></i>
	                		</div>
	                		<div class="person-info fb70">
	                			<h4 class="card-title"> K. Kishore Kumar Reddy   <span class="designation float-right"> M.Sc MEd</span></h4>
	                			<p class="card-text d-flex">
	                				<span class="subject flex-fill"><i class="fas fa-book"></i> Mathematics</span> 
	                				<span class="experience flex-fill"><i class="fas fa-briefcase"></i>  35 Years CBSE</span>
	                			</p>
	                			<p class="card-text d-flex">
	                				<span class="fee flex-fill"> <i class="fas fa-money-bill-wave"></i> Fee : <i class="fas fa-rupee-sign"></i>250.00</span>
	                				<span class="slot-time flex-fill"><i class="far fa-clock"></i>  Slots Available :	6AM	to	7AM </span>
	                			</p>
	                			<p class="card-text text-justify">
	                			Tarakaramarao Did	his	M.Sc Med	from	Andhra	
								University	Mathematics	as	a	specialisation.	<a href="#">Read More <i class="fas fa-angle-double-right"></i></a>
	                			</p>
	                		</div>
	                	</div>
			        </div>
			     </div>
	 		 </div>
	 		  <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
	 		 	 <div class="card mb-2">
	                <div class="card-body">
	                	<div class="d-flex">
	                		<div class="person-img pr-3 fb30 pr">
	                			<i class="fas fa-user-tie  fa-5x"></i>
	                		</div>
	                		<div class="person-info fb70">
	                			<h4 class="card-title"> K. Kishore Kumar Reddy   <span class="designation float-right"> M.Sc MEd</span></h4>
	                			<p class="card-text d-flex">
	                				<span class="subject flex-fill"><i class="fas fa-book"></i> Mathematics</span> 
	                				<span class="experience flex-fill"><i class="fas fa-briefcase"></i>  35 Years CBSE</span>
	                			</p>
	                			<p class="card-text d-flex">
	                				<span class="fee flex-fill"> <i class="fas fa-money-bill-wave"></i> Fee : <i class="fas fa-rupee-sign"></i>250.00</span>
	                				<span class="slot-time flex-fill"><i class="far fa-clock"></i>  Slots Available :	6AM	to	7AM </span>
	                			</p>
	                			<p class="card-text text-justify">
	                			Tarakaramarao Did	his	M.Sc Med	from	Andhra	
								University	Mathematics	as	a	specialisation.	<a href="#">Read More <i class="fas fa-angle-double-right"></i></a>
	                			</p>
	                		</div>
	                	</div>
			        </div>
			     </div>
	 		 </div>
	 	</div>
	 	<div class="btn-sec text-right">
	 			<button class="btn btn-warning">Find More <i class="fas fa-search"></i></button>
	 	</div>
	 </div>
	 
	 <div class="row mt-2 mb-2">
	 	<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 text-right">
	 		<button class="btn btn-dark" id="back">Back</button>
	 		<button class="btn btn-primary" id="submit">Submit</button>
	 	</div>
	 </div>
</div>
<script>
	$(document).ready(function(){
		$(document).on('click','#back',function(){
			window.location = contextPath+"/student/otListCourses";
		});
		
		
	});
</script>
 
 