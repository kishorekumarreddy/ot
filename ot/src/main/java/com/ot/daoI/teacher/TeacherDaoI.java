package com.ot.daoI.teacher;

import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import com.ot.modal.teacher.OtTeacherInitRegTran;
import com.ot.modal.teacher.OtTeacherPaymentAccountDtlsTran;
import com.ot.modal.teacher.OtTeacherRegTran;

public interface TeacherDaoI {
     
	  
	public void teacherRegistrationSaving(OtTeacherRegTran otTeacherRegTran)throws JSONException; 
	
	public void teacherPaymentDtlsSaving(OtTeacherPaymentAccountDtlsTran otTeacherPaymentAccountDtlsTran) throws JSONException;
	
	public void teacherRegInitialSaving(OtTeacherInitRegTran otTeacherInitRegTran)  throws JSONException;
	
	public int teacherRegistrationUpdate(JSONObject obj)throws JSONException;
	
	public void teacherRegistrationView(JSONObject obj)throws JSONException;
	
	public void teacherRegistrationDelete(JSONObject obj)throws JSONException;
	
	public boolean isValidUser(String loginId, String password)throws JSONException;
	
	public boolean checkDuplicateTeacherMobileNum(String mobileNum)throws JSONException;
	
	public boolean checkDuplicateTeacherEmailId(String emailId)throws JSONException;

	public List<net.sf.json.JSONObject> getEduMst();

	

	
}
