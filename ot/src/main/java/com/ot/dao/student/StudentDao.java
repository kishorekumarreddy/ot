package com.ot.dao.student;

import org.apache.commons.lang.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ot.daoI.student.StudentDaoI;
import com.ot.validator.student.StudentValidator;

@Repository("studentDao")
public class StudentDao implements StudentDaoI{

	
	
	
	  @Override public void studentRegistrationSaving(JSONObject obj)throws JSONException { 
		  // TODO Auto-generated method stub
	  
	  }
	 
		
		 /* NamedParameterJdbcTemplate namedParameterJdbcTemplate;
		  StudentDao(NamedParameterJdbcTemplate namedParameterJdbcTemplate){
			  
		  this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
		  
		  }
		  
		  String INSERT_QUERY ="insert into  t_student_validator(student_fullName, parent_name, class_appears, syllabus_specialization, name_of_the_state, school_medium, dob,  school_name,  school_location,  current_location,  state,  mobile_number,  email,  communication_address )"
		  +
		  "values(:studentFullName, :parentName, :classAppears, :syllabusSpecialization, :nameOfTheState,   :schoolMedium, :dob, :schoolName,  :schoolLocation,  :currentLocation,  :state, :mobileNumber,  :email, :communicationAddress)"
		  ;
		  
		  @Override public void studentRegistrationSaving(JSONObject obj) throws JSONException { 
			  // TODO Auto-generated method stub
		  
		  StudentValidator stu = prepairStudentValidatorObj(obj);
		  
		   namedParameterJdbcTemplate.update(INSERT_QUERY, new  BeanPropertySqlParameterSource(stu)); } 
		  
		  
		  public StudentValidator prepairStudentValidatorObj(JSONObject obj) { 
			  // TODOAuto-generated method stub
		  
		  StudentValidator st = new StudentValidator();
		  
		  st.setNameOfTheState(StringUtils.isNotBlank(obj.optString("studentFullName"))? obj.getString("studentFullName") : null);
		  st.setParentName(StringUtils.isNotBlank(obj.optString("parentName")) ?obj.getString("parentName") : null);
		  st.setClassAppears(StringUtils.isNotBlank(obj.optString("classAppears")) ?obj.getString("classAppears") : null);
		  st.setSyllabusSpecialization(StringUtils.isNotBlank(obj.optString("syllabusSpecialization")) ? obj.getString("syllabusSpecialization") : null);
		  st.setNameOfTheState(StringUtils.isNotBlank(obj.optString("nameOfTheState"))? obj.getString("nameOfTheState") : null);
		  st.setSchoolMedium(StringUtils.isNotBlank(obj.optString("schoolMedium")) ?obj.getString("schoolMedium") : null);
		  st.setDob(StringUtils.isNotBlank(obj.optString("dob")) ? obj.getInt("dob") :null); 
		  st.setSchoolName(StringUtils.isNotBlank(obj.optString("schoolName")) ?obj.getString("schoolName") : null);
		  st.setSchoolLocation(StringUtils.isNotBlank(obj.optString("schoolLocation"))? obj.getString("schoolLocation") : null);
		  st.setCurrentLocation(StringUtils.isNotBlank(obj.optString("currentLocation")) ? obj.getString("currentLocation") : null);
		  st.setState(StringUtils.isNotBlank(obj.optString("state")) ?obj.getString("state") : null);
		  st.setMobileNumber(StringUtils.isNotBlank(obj.optString("mobileNumber")) ? obj.getString("mobileNumber") : null);
		  st.setEmail(StringUtils.isNotBlank(obj.optString("email")) ?obj.getString("email") : null);
		  st.setCommunicationAddress(StringUtils.isNotBlank(obj.optString("communicationAddress")) ? obj.getString("communicationAddress") : null);
		  
		  
		  return st;
		  
		  }*/
		 
}
