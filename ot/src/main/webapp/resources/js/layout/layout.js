$(document).ready(function(){
	
	$(document).on('click','.closeIcon',function(){
		$(this).parents(".note-msg").hide();
		$(".errMsg").hide();
	});
});