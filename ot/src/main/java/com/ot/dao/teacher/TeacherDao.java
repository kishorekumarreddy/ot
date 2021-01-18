package com.ot.dao.teacher;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ot.daoI.teacher.TeacherDaoI;
import com.ot.modal.teacher.OtTeacherRegTran;
import com.ot.teacher.sqlConsatnts.TeacherSqlConstants;

@Repository("teacherDao")
public class TeacherDao implements TeacherDaoI {

//	private DataSource dataSource;
//	public TeacherDao(DataSource dataSource){
//		this.dataSource= dataSource;
//	}
//	
//	NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);

	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
	    this.namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public void teacherRegistrationSaving(OtTeacherRegTran otTeacherRegTran) throws JSONException {

//			tWc2OtherDtls.setWc2OtherDtlsId(DaoUtils.getSequenceByKey(
//					TeacherSqlConstants.INS_TEACHER_REG_TRAN_QUERY,
//					getNamedParameterJdbcTemplate()));
//			DaoUtils.setAuditInsertData(tWc2OtherDtls);
			 namedParameterJdbcTemplate.update(
					 TeacherSqlConstants._INS__OT_TEACHER_REG_TRAN,
					new BeanPropertySqlParameterSource(otTeacherRegTran)); 

		
	}

	@Override	
	public int teacherRegistrationUpdate(JSONObject obj) throws JSONException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void teacherRegistrationView(JSONObject obj) throws JSONException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void teacherRegistrationDelete(JSONObject obj) throws JSONException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isValidUser(String loginId, String password) throws JSONException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean checkDuplicateTeacherMobileNum(String mobileNum) throws JSONException {
		// TODO Auto-generated method stub
		return false;
		
	}

	@Override
	public boolean checkDuplicateTeacherEmailId(String emailId) throws JSONException {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
	public List<net.sf.json.JSONObject> getEduMst(){
		String query = TeacherSqlConstants._GET_EDU_MST;
		
			return namedParameterJdbcTemplate.query(
					query, 
					new RowMapper<net.sf.json.JSONObject>() {
				public net.sf.json.JSONObject mapRow(ResultSet resultSet, int rowCount) 
						throws SQLException {
						net.sf.json.JSONObject jsonObject = new net.sf.json.JSONObject();
						jsonObject.put("highest_edu_qual_mst_id", resultSet.getString("highest_edu_qual_mst_id"));
						jsonObject.put("highest_edu_qual_mst_cd", resultSet.getString("highest_edu_qual_mst_cd"));
						jsonObject.put("highest_edu_qual_mst_desc", resultSet.getString("highest_edu_qual_mst_desc"));
						System.out.println("DAO::"+jsonObject);
						return jsonObject;
				}
			});
	}
     
	/*
	 * @Autowired private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	 * 
	 * String INSERT_QUERY = "";
	 * 
	 * @Override public void teacherRegistrationSaving(JSONObject obj) throws
	 * JSONException { // TODO Auto-generated method stub
	 * 
	 * TeacherValidator stu = prepairTeacherValidator(obj);
	 * 
	 * namedParameterJdbcTemplate.update(INSERT_QUERY, new
	 * BeanPropertySqlParameterSource(stu));
	 * 
	 * }
	 * 
	 * private TeacherValidator prepairTeacherValidator(JSONObject obj) { // TODO
	 * Auto-generated method stub
	 * 
	 * TeacherValidator teacher = new TeacherValidator();
	 * 
	 * teacher.setCurrentLocation(StringUtils.isNotBlank(obj.optString(
	 * "currentLocation")) ? obj.getString("currentLocation") : null);
	 * teacher.setEmailId(StringUtils.isNotBlank(obj.optString("emailId")) ?
	 * obj.getString("emailId") : null);
	 * teacher.setExperience(StringUtils.isNotBlank(obj.optString("experience")) ?
	 * obj.getInt("experience") : null);
	 * teacher.setFullNameofTheTeacher(StringUtils.isNotBlank(obj.optString(
	 * "fullNameofTheTeacher")) ? obj.getString("fullNameofTheTeacher") : null);
	 * teacher.setMobileNo(StringUtils.isNotBlank(obj.optString("mobileNo")) ?
	 * obj.getString("mobileNo") : null);
	 * teacher.setPassedOutYear(StringUtils.isNotBlank(obj.optString("passedOutYear"
	 * )) ? obj.getInt("passedOutYear") : null);
	 * teacher.setQualification(StringUtils.isNotBlank(obj.optString("qualification"
	 * )) ? obj.getString("qualification") : null);
	 * teacher.setState(StringUtils.isNotBlank(obj.optString("state")) ?
	 * obj.getString("state") : null);
	 * teacher.setTotalYearofExperience(StringUtils.isNotBlank(obj.optString(
	 * "totalYearofExperience")) ? obj.getInt("totalYearofExperience") : null);
	 * teacher.setUniversity(StringUtils.isNotBlank(obj.optString("university")) ?
	 * obj.getString("university") : null);
	 * 
	 * return teacher; }
	 */

}
