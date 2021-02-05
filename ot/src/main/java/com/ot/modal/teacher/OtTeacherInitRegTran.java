package com.ot.modal.teacher;

import java.util.Date;

public class OtTeacherInitRegTran{ 
	private Integer otTeacherInitRegTranId;
	private String name;
	private String emailId;
	private String mobile;
	private String fromPlace;
	private String loginId;
	private String password;
	private Integer loginTranId;
	 
	

	private Date createdDt;
	private String recordStatus;
	
	
	
      public void setOtTeacherInitRegTranId(Integer otTeacherInitRegTranId) {
	  this.otTeacherInitRegTranId=otTeacherInitRegTranId;
	}

      public Integer getOtTeacherInitRegTranId() {
	  return otTeacherInitRegTranId;
	}

      public void setName(String name) {
	  this.name=name;
	}

      public String getName() {
	  return name;
	}

      public void setEmailId(String emailId) {
	  this.emailId=emailId;
	}

      public String getEmailId() {
	  return emailId;
	}

      public void setMobile(String mobile) {
	  this.mobile=mobile;
	}

      public String getMobile() {
	  return mobile;
	}

      public void setFromPlace(String fromPlace) {
	  this.fromPlace=fromPlace;
	}

      public String getFromPlace() {
	  return fromPlace;
	}

      public void setLoginId(String loginId) {
	  this.loginId=loginId;
	}

      public String getLoginId() {
	  return loginId;
	}

      public void setPassword(String password) {
	  this.password=password;
	}

      public String getPassword() {
	  return password;
	}

      public void setLoginTranId(Integer loginTranId) {
	  this.loginTranId=loginTranId;
	}

      public Integer getLoginTranId() {
	  return loginTranId;
	}
      
      public Date getCreatedDt() {
  		return createdDt;
  	}

  	public void setCreatedDt(Date createdDt) {
  		this.createdDt = createdDt;
  	}

  	public String getRecordStatus() {
  		return recordStatus;
  	}

  	public void setRecordStatus(String recordStatus) {
  		this.recordStatus = recordStatus;
  	}
  	
 }
