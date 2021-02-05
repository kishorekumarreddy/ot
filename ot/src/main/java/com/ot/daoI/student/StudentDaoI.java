package com.ot.daoI.student;

import org.json.JSONException;
import org.json.JSONObject;

import com.ot.modal.student.OtStudentInitRegTran;

public interface StudentDaoI {
   

	public void studentRegInitialSaving(OtStudentInitRegTran otStudentInitRegTran)throws JSONException ;

	
}
