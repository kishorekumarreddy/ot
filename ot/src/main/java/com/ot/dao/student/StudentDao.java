package com.ot.dao.student;

import javax.sql.DataSource;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ot.daoI.student.StudentDaoI;
import com.ot.modal.student.OtStudentInitRegTran;
import com.ot.student.sqlConsatnts.StudentSqlConstants;

@Repository("studentDao")
public class StudentDao implements StudentDaoI{

	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
	    this.namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public void studentRegInitialSaving(OtStudentInitRegTran otStudentInitRegTran) throws JSONException {
		// TODO Auto-generated method stub
		String query =  StudentSqlConstants._INS__OT_STUDENT_INIT_REG_TRAN;
		otStudentInitRegTran.setOtStudentInitRegTranId(getSequenceValue(StudentSqlConstants.OT_STUDENT_INIT_REG_TRAN_SEQ, namedParameterJdbcTemplate));
		namedParameterJdbcTemplate.update(
				query,
				new BeanPropertySqlParameterSource(otStudentInitRegTran)); 
	}
	
	public Integer getSequenceValue(String sequence, NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		String query = "SELECT NEXTVAL(:sequence)";
		MapSqlParameterSource paramMap = new MapSqlParameterSource(); 
		paramMap.addValue("sequence", sequence);
		return  namedParameterJdbcTemplate.queryForObject(query, paramMap, Integer.class);
	}

	
}
