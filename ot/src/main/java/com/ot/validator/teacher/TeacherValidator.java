package com.ot.validator.teacher;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.json.JSONObject;
import org.springframework.stereotype.Component;

import com.ot.modal.teacher.OtTeacherRegTran;

@Component(value="teacherValidator")
public class TeacherValidator {
	/**
	 * Object Preparation
	 * Checking Server Side Validations
	 */
	
	public Map<String,Object> validateAndPrepareTeacherRegistrationObject(JSONObject obj){
		
		Map<String,Object> mapObj = new HashMap<String, Object>();
				mapObj.put("teacherRegObj", prepareTeacherRegistrationObject(obj));
		
		return mapObj;
		
	}
	
	public OtTeacherRegTran prepareTeacherRegistrationObject(JSONObject obj) {
		OtTeacherRegTran otTeacherRegTran = new OtTeacherRegTran();
		otTeacherRegTran.setFullNameOfTheTeacher(StringUtils.isNotBlank(obj.optString("fullNameOfTheTeacher")) ?
					obj.getString("fullNameOfTheTeacher") : null);
		
		
		
		return otTeacherRegTran;
	}
	
}
