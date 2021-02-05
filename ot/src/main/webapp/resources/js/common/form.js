var fieldTypeArr;
$(function(){
	 fieldTypeArr = ['INPUT','input','SELECT','select','TEXTAREA','textarea','RADIO','radio','CHECKBOX','checkbox'];
		
});


function validateForm(validationArr){
	var vflg = true;
	if(validationArr.length > 0){
		$.each(validationArr, function( index, obj ) {
			$(".note-msgs").hide();
			$(".note-msgs  .msg-info").html('');
			
			var id 				= $.trim(obj.id);
			id  				= "#"+id;
			var value 			= $.trim($("#"+obj.id).val());
			var fieldType		= $.trim(obj.fieldType).toLowerCase();
			var caption			= $.trim(obj.caption);
			var required		= $.trim(obj.required);
			var minLength		= $.trim(obj.minLength);
			var maxLength		= $.trim(obj.maxLength);
			var validationType	= $.trim(obj.validationType).toLowerCase();// validationType:mobile,email,date,time,datetime
			var timeFormat		= $.trim(obj.timeFormat);//if validationType:time 24hrs or 12 hrs format required
			
			var inputFlg 		= false;
			var inputTypeFlg	= false;
			var selectFlg 		= false;
			
			var validationTypeFlg	= false;
			var mobileFlg 		= false;
			var emailFlg 		= false;
			var dateFlg 		= false;
			var timeFlg 		= false;
			var dateTimeFlg 	= false;
			
			var captionCauseMsg 	= "";
			var captionActionMsg 	= "";
			
			if(typeof id !== 'undefined' && id != ''){
				if($.inArray(fieldType,fieldTypeArr) == '-1' && required){
					var tagName = $(id).prop('tagName').toLowerCase();
					if($.inArray(tagName,fieldTypeArr) != '-1'){
						if(tagName == 'input'|| tagName == 'textarea' ){
							inputFlg = true;
							var type = $(id).attr("type").toLowerCase();
								if(type == 'checkbox' || type == 'radio'){
									inputTypeFlg = true;
								}
						}else{
							selectFlg = true;
						}		
					}
				}else{
					if(required && ( fieldType == 'input' || fieldType == 'textarea')){ 
						var tagName = $(id).prop('tagName').toLowerCase();
							if($.inArray(tagName,fieldTypeArr) != '-1'){
								var type = $(id).attr("type").toLowerCase();
								if(type == 'checkbox' || type == 'radio'){
									var name	= $(id).attr("name"); 
									if(!$("input[name="+name+"]").is(":checked")){
										inputFlg = true;
										inputTypeFlg = true;
									}
									
								}else{
									if($.trim(value) != "" &&  typeof $.trim(value) !== "undefined" && $.trim(value) != "undefined"){
										if(validationType == 'mobile'){
											value = value.replace(/\D+/g,''); // removing spaces and dashes
											var regEx = new RegExp("/[0-9]/");
											if(!value.match(regEx)){
												validationTypeFlg = true; // invalid mobile
												inputFlg	= true;
												captionCauseMsg 	= 	" Invalid "+caption+"!";
												captionActionMsg	=	 "Please enter valid "+caption;
												
											}else if(maxLength != value.length || maxLength != 10){
												validationTypeFlg = true;
												inputFlg	= true;
												captionCauseMsg 	= 	" Invalid "+caption+"!";
												captionActionMsg	=	 caption+" Should not exceed max length 10 characters : current characters : "+value.length;
											}
										}else if(validationType == 'email' || validationType == 'mail'){
										
										}else if(validationType == 'date'){
										
										}else if(validationType == 'time'){
										
										}else if(validationType == 'datetime'){
										
										}else{
										
										}
									}else{
										inputFlg = true;
									}
								
								}
							}
							
						
					}else if(required && fieldType == 'select'){
						selectFlg = true;
					}
				
				}
				
			} //--
			
			// Input fields error messages
			if(inputFlg && !inputTypeFlg && !validationTypeFlg){
				captionCauseMsg 	= 	caption+" Should not be empty !";
				captionActionMsg	=	"Please Enter "+caption;
			}else if(inputFlg && inputTypeFlg && !validationTypeFlg){
				captionCauseMsg 	= 	caption+" not selected !";
				captionActionMsg	=	"Please Select at least one "+caption+" option.";
			}else if(selectFlg){
				captionCauseMsg 	= 	caption+" Should not be empty !";
				captionActionMsg	=	"Please Select "+caption;
			}
			
			if(inputFlg || selectFlg){
				var htm = '';
					htm+='<span class="note-cause d-flex align-items-center justify-content-center">'+
						'	<label class="lbl">Problem:</label>'+
						'	<span class="cause-msg">'+captionCauseMsg+'</span>'+
						'</span> '+
						'<span class="note-action d-flex  align-items-center justify-content-center">'+
						'	<label class="lbl">Solution:</label>'+
						'	<span class="action-msg">'+captionActionMsg+'</span>'+
						'</span>';
				
					$(".note-msgs").show();
					$(".errMsg").show();
					$(".note-msgs  .errMsg .msg-info").append(htm);
					$("#"+obj.id).focus();
					vflg = false;
					return false;
			}
			
			
		
		});
		
	}
	
	return vflg;
}



	
	