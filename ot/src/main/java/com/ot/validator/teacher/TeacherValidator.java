package com.ot.validator.teacher;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.json.JSONObject;
import org.springframework.stereotype.Component;

import com.ot.modal.teacher.OtTeacherInitRegTran;
import com.ot.modal.teacher.OtTeacherPaymentAccountDtlsTran;
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
		otTeacherRegTran.setFullNameOfTheTeacher(StringUtils.isNotBlank(obj.optString("fullNameOfTheTeacher")) 
				                                                      ? obj.getString("fullNameOfTheTeacher") : null);
		otTeacherRegTran.setMobileNo(StringUtils.isNotBlank(obj.optString("mobileNo")) 
                                                                      ? obj.getString("mobileNo") : null);
		otTeacherRegTran.setEmailId(StringUtils.isNotBlank(obj.optString("emailId")) 
                                                                       ? obj.getString("emailId") : null);
		otTeacherRegTran.setCurrentLocation(StringUtils.isNotBlank(obj.optString("currentLocation")) 
                                                                      ? obj.getString("currentLocation") : null);
		otTeacherRegTran.setState(StringUtils.isNotBlank(obj.optString("state")) 
                                                                      ? obj.getString("state") : null);
		otTeacherRegTran.setPassedOutYear(StringUtils.isNotBlank(obj.optString("passedOutYear")) 
                                                                      ? obj.getInt("passedOutYear") : null);
		otTeacherRegTran.setUniversityBoardClgInstitute(StringUtils.isNotBlank(obj.optString("universityBoardClgInstitute")) 
                                                                      ? obj.getString("universityBoardClgInstitute") : null);
		
		

		return otTeacherRegTran;
	}
	
  public Map<String,Object> validateAndPrepareTeacherPaymentDtlsObject(JSONObject obj){
		
		Map<String,Object> mapObj = new HashMap<String, Object>();
				mapObj.put("teacherPaymentObj", prepareTeacherPaymentDtlsObject(obj));
		
		return mapObj;
	}
        public OtTeacherPaymentAccountDtlsTran prepareTeacherPaymentDtlsObject(JSONObject obj) {
        	
        	OtTeacherPaymentAccountDtlsTran otTeacherPaymentAccountDtlsTran = new OtTeacherPaymentAccountDtlsTran();
        	
        	otTeacherPaymentAccountDtlsTran.setAccountNo(StringUtils.isNotBlank(obj.optString("accountNo")) 
    				                                                          ? obj.getString("accountNo") : null);
        	otTeacherPaymentAccountDtlsTran.setIfscCode(StringUtils.isNotBlank(obj.optString("ifscCode")) 
                                                                              ? obj.getString("ifscCode") : null);
        	otTeacherPaymentAccountDtlsTran.setGpayNo(StringUtils.isNotBlank(obj.optString("gpayNo")) 
                                                                              ? obj.getString("gpayNo") : null);
        	otTeacherPaymentAccountDtlsTran.setPhonePayNo(StringUtils.isNotBlank(obj.optString("phonePayNo")) 
                                                                              ? obj.getString("phonePayNo") : null);
        	otTeacherPaymentAccountDtlsTran.setPaytmNo(StringUtils.isNotBlank(obj.optString("paytmNo")) 
                                                                              ? obj.getString("paytmNo") : null);
        	otTeacherPaymentAccountDtlsTran.setLoginId(StringUtils.isNotBlank(obj.optString("loginId")) 
                                                                              ? obj.getString("loginId") : null);
    		
    		
    		return otTeacherPaymentAccountDtlsTran;
    	}
        
        
 public Map<String,Object> validateAndPrepareTeacherInitDtlsObject(JSONObject obj){
    		
    		Map<String,Object> mapObj = new HashMap<String, Object>();
    				mapObj.put("teacherInitObj", prepareTeacherInitDtlsObject(obj));
    		
    		return mapObj;
    	}	
 public OtTeacherInitRegTran prepareTeacherInitDtlsObject(JSONObject obj) {
        	
	 OtTeacherInitRegTran otTeacherInitRegTran = new OtTeacherInitRegTran();
        	
	 otTeacherInitRegTran.setName(StringUtils.isNotBlank(obj.optString("name")) 
    				                                                          ? obj.getString("name") : null);
	 otTeacherInitRegTran.setEmailId(StringUtils.isNotBlank(obj.optString("emailId")) 
                                                                              ? obj.getString("emailId") : null);
	 otTeacherInitRegTran.setMobile(StringUtils.isNotBlank(obj.optString("mobile")) 
                                                                              ? obj.getString("mobile") : null);
	 otTeacherInitRegTran.setFromPlace(StringUtils.isNotBlank(obj.optString("fromPlace")) 
                                                                              ? obj.getString("fromPlace") : null);
	 otTeacherInitRegTran.setLoginId(StringUtils.isNotBlank(obj.optString("loginId")) 
                                                                              ? obj.getString("loginId") : null);
	 otTeacherInitRegTran.setPassword(StringUtils.isNotBlank(obj.optString("password")) 
                                                                              ? obj.getString("password") : null);
	 
	 otTeacherInitRegTran.setCreatedDt(new Date());
		 
	 otTeacherInitRegTran.setRecordStatus("A");
		
    		
    		return otTeacherInitRegTran;
    	}
  
        
}
