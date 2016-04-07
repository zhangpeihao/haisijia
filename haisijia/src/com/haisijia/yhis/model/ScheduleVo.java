package com.haisijia.yhis.model;

import java.io.Serializable;

public class ScheduleVo implements Serializable {
	public long getPatientId() {
		return patientId;
	}
	public void setPatientId(long patientId) {
		this.patientId = patientId;
	}
	public String getPatientName() {
		return patientName;
	}
	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}
	public String getResidentHospitalCode() {
		return residentHospitalCode;
	}
	public void setResidentHospitalCode(String residentHospitalCode) {
		this.residentHospitalCode = residentHospitalCode;
	}
	public int getMedicalInsuranceTypeId() {
		return medicalInsuranceTypeId;
	}
	public void setMedicalInsuranceTypeId(int medicalInsuranceTypeId) {
		this.medicalInsuranceTypeId = medicalInsuranceTypeId;
	}
	public long getAccountId() {
		return accountId;
	}
	public void setAccountId(long accountId) {
		this.accountId = accountId;
	}
	public int getGenderId() {
		return genderId;
	}
	public void setGenderId(int genderId) {
		this.genderId = genderId;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	private long patientId = 0;
	private String patientName = null;
	private String residentHospitalCode = null;
	private int medicalInsuranceTypeId = 0; 
	private long accountId = 0;
	private int genderId = 0;
	private String birthday = null;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
}
