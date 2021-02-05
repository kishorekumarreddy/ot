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
	});
</script>