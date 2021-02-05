<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<style>
.choose-container svg{
		position: absolute;
	    top: 3px;
	    right: 4px;
	    color: #999;
	}
.choose-container .card{
	cursor:pointer;
}
.choose-container .card-title{
	color:#999;
}

.choose-container .active svg{
	color:green;
	top: -6px;
    right: -6px;
    background: #fff;
    border-radius: 50%;
}
.choose-container .active .card-title{
	color:#000;
}
.choose-container .card.active{
	box-shadow:0 0 20px rgba(4,42,147,0.55);
	transform:scale(1.05);
	transition:all 0.5s;
	background:linear-gradient(120deg, #d4fc79 0%, #96e6a1 100%);
	animation:background 0.5s infinite; 
}
.main-container{
	background-image: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
	color:#fff;
}
.card-deck{
	width:70%;
	text-align:center;
	margin:0 auto;
}
 a{
	color:#72b5fd !important;
}
</style>
 <div class="page p-5">
 	<div class="row">
 		<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4 d-flex align-items-center">
 			<div class="front-info">
	 			<h1><i class="fas fa-globe"></i>nline Tuitions</h1>
	 			<p class="text-justify"> Online Tuition Will help to improve your Skill Set through online. 
	 				<a href="#">ReadMore <i class="fas fa-angle-double-right"></i></a>
	 			</p>
	 		</div>
 		</div>
 		<div class="col-sm-12 col-md-8 col-lg-8 col-xl-8">
 			<span class="f-p-img"></span>
 			<div class="choose-container">
 				<div class="card-deck">
 					<div class="card box teacher-card" data-chooseFlg="1">
 						<img class="card-img-top p-2" src="${resourcePath}/images/teacher.jpg" alt="Teacher image">
 						<div class="card-body">
 							<div class="choose-item">
	 							<!-- <span class="img-responsive teacher-img"></span> -->
	 							<i class="far fa-check-circle"></i>
	 							<h4 class="card-title text-center">Enter as Teacher</h4>
 							</div>
 						</div>
 					</div>
 					<div class="card box student-card" data-chooseFlg="2">
 						<img class="card-img-top p-2" src="${resourcePath}/images/student.jpg" alt="Student image">
 						<div class="card-body">
 							<div class="choose-item">
	 							<!-- <span class="img-responsive student-img"></span> -->
	 							<i class="far fa-check-circle"></i>
	 							<h4 class="card-title text-center">Enter as Student</h4>
 							</div>
 						</div>
 					</div>
 				</div>
 				<div class="row mt-5">
 					<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 text-right">
 						<button class="btn btn-primary" disabled="disabled" id="continue">Continue</button>
 					</div>
 				</div>
 			</div>
 		</div>
 	</div>
 </div>
 
 
 
 <script>
 	$(document).ready(function(){
 		$(document).on('click','.choose-container .card',function(){
 			$(".choose-container .card").removeClass("active");
 			$(this).addClass("active");
 			$("#continue").removeAttr("disabled");
 		});
 		
 		$(document).on('click','#continue',function(){
 			$(".loader").show();
 			var chooseFlg = $(".card.active").attr("data-chooseFlg");
 			if(chooseFlg == 1){
 				window.location = contextPath+"/teacher/teacherLogin";
 			}else if(chooseFlg == 2){
 				window.location = contextPath+"/student/studentLogin";
 			}
 			
 		});
 	});
 </script>