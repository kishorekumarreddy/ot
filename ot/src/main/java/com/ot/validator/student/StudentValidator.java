package com.ot.validator.student;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.json.JSONObject;
import org.springframework.stereotype.Component;

import com.ot.modal.student.OtStudentInitRegTran;


@Component(value="studentValidator")
public class StudentValidator {
	
	public Map<String,Object> validateAndPrepareStudentInitDtlsObject(JSONObject obj){
 		
 		Map<String,Object> mapObj = new HashMap<String, Object>();
 				mapObj.put("studentInitObj", prepareStudentInitDtlsObject(obj));
 		
 		return mapObj;
 	}	
   public OtStudentInitRegTran prepareStudentInitDtlsObject(JSONObject obj) {
	     	
	   OtStudentInitRegTran otStudentInitRegTran = new OtStudentInitRegTran();
	     	
		   otStudentInitRegTran.setName(StringUtils.isNotBlank(obj.optString("name")) 
		 				                                                          ? obj.getString("name") : null);
		   otStudentInitRegTran.setstuClass(StringUtils.isNotBlank(obj.optString("stuClass")) 
		                                                                           ? obj.getInt("stuClass") : null);
		   otStudentInitRegTran.setParentName(StringUtils.isNotBlank(obj.optString("parentName")) 
		                                                                           ? obj.getString("parentName") : null);
		   otStudentInitRegTran.setParentMobile(StringUtils.isNotBlank(obj.optString("parentMobile")) 
		                                                                           ? obj.getString("parentMobile") : null);
		   otStudentInitRegTran.setParentEmail(StringUtils.isNotBlank(obj.optString("parentEmail")) 
		                                                                           ? obj.getString("parentEmail") : null);
		   otStudentInitRegTran.setLoginId(StringUtils.isNotBlank(obj.optString("loginId")) 
                                                                                   ? obj.getString("loginId") : null);
		   otStudentInitRegTran.setPassword(StringUtils.isNotBlank(obj.optString("password")) 
		                                                                           ? obj.getString("password") : null);
		   
		   otStudentInitRegTran.setCreatedDt(new Date());
		   
		   otStudentInitRegTran.setRecordStatus("A");
 		return otStudentInitRegTran;
 	}


}
