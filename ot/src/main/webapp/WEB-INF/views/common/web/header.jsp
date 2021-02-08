
<style>
	.bell{
    color: #d92550;
}
.bellIcon{
   background: #ffd8a1;
    padding: 7px;
    border-radius: 26px;
    cursor: pointer;
    position: absolute;
    left: 90%
}
.daught{
    background:  #d92550;
    border-radius: 26px;
    width: 8px;
    height: 8px;
    position: absolute;
    top: 0;
    left: 70%;
}

.popup {
    position: absolute;
    right: 10px;
    top: 56px;
    z-index: 99999;
    box-shadow: 0 0 10px rgba(0,0,0,0.55);
    height: 300px;
    border-radius: 5px;
    background: #fff;
    display:none; 
    font-size:12px;
}

.popup::after {
    content: "";
    top: -9px;
    right: 103px;
    position: absolute;
    border-left: 20px solid #f7f7f7;
    border-top: 20px solid transparent;
    transform: rotate(135deg);
}

.popup.active{
	display:block;
}
.stu-notification.d-flex {
    box-shadow: 0 0 10px rgb(6 0 190 / 15%);
    padding: 10px;
    border-radius: 5px;
    margin-bottom:5px;
}

</style>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <a href="#" class="navbar-brand">
	    <span class="brand"><i class="fas fa-globe"></i> &nbsp;T</span>
	  	<span class="sub-brand">Online Tuition</span>
    </a>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
        <div class="navbar-nav">
            <a href="#" class="nav-item nav-link active" id="home">Home</a>
            <a href="#" class="nav-item nav-link">About US</a>
            <a href="#" class="nav-item nav-link">Contact US</a>
        </div>
          <div class="navbar-nav bellIcon">
             <i class="fas fa-bell bell "></i>
             <span class="daught"></span>
        </div>
       <!--  <div class="popupDiv">
           <div class="popupCloseBtn">
               <a href="#">&times;</a>
		   <span>Name : Ram</span>
           </div>
		</div> -->
		
		<div class="popup">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title text-center">Student Notification</h4>
				</div>
				<div class="card-body p-1">
					<div class="stu-notification d-flex">
						<span class="stuName">Kethava Reddy K</span>
						<span class="edu">10th</span>
						<span class="c-fee">Rs.500/-</span>
						<span class="accept">Accept</span>
						<span class="reject">Reject</span>
					</div>
					<div class="stu-notification d-flex">
						<span class="stuName">Kethava Reddy K</span>
						<span class="edu">10th</span>
						<span class="c-fee">Rs.500/-</span>
						<span class="accept">Accept</span>
						<span class="reject">Reject</span>
					</div>
				</div>
			</div>
		</div>
        <div class="navbar-nav">
            <a href="#" class="nav-item nav-link"  id="logout">Logout</a>
        </div>
    </div>
</nav>


<script>
$(document).ready(function(){
		$(document).on('click','#home',function(){
			$(".loader").show();
			window.location = contextPath+"/login/dashboard";
		});
		$(document).on('click','#logout',function(){
			$(".loader").show();
			window.location = contextPath+"/teacher/teacherLogin";
		});
		 //show popup
		 $(".bellIcon").click(function(){
			 $(".popup").toggleClass("active");
		 });
 });
</script>


