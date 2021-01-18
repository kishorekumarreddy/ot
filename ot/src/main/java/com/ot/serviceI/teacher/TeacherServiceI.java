package com.ot.serviceI.teacher;

import java.util.List;
import java.util.Map;

import org.json.JSONObject;


public interface TeacherServiceI {
   
	  
	public void teacherRegistrationSaving(Map<String, Object> mapObj);
 
	public int teacherRegistrationUpdate(JSONObject obj);
	
	public void teacherRegistrationView(JSONObject obj);
	
	public void teacherRegistrationDelete(JSONObject obj);
	
	public boolean isValidUser(String loginId, String password)throws Exception;
	
	public boolean checkDuplicateTeacherMobileNum(String mobileNum)throws Exception;
	
	public boolean checkDuplicateTeacherEmailId(String  emailId)throws Exception;
	
	public List<net.sf.json.JSONObject> getEduMst();
	
}
