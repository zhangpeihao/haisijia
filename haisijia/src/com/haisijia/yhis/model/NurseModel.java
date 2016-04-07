package com.haisijia.yhis.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.ResourceBundle;

import com.haisijia.jdbc.FParamBinder;
import com.haisijia.jdbc.FResetSetter;
import com.haisijia.jdbc.JdbcDao;
import com.haisijia.jdbc.JdbcResult;
import com.haisijia.jdbc.PersonVo;
import com.haisijia.model.AppModel;
import com.haisijia.model.JspParamsVo;

public class NurseModel extends AppModel {	
	public JspParamsVo getJspParamsVo() {
		return jspParamsVo;
	}

	public void setJspParamsVo(JspParamsVo jspParamsVo) {
		this.jspParamsVo = jspParamsVo;
	}
	
	/**
	 * 向t_patient表中添加记录
	 * @param patientVo
	 * @return
	 * 【闫涛 2016.03.28】初始版本
	 */
	public static long addPatient(PatientVo patientVo) {
		FParamBinder<PatientVo> binder = generateAddPatientParamBinder(patientVo);
		JdbcResult rst = JdbcDao.executeUpdate(SQL_ADD_PATIENT, binder, patientVo);
		long patientId = 0;
		if (1 == rst.getAffectedRows()) {
			patientId = (int)rst.getPk();
		}
		return patientId;
	}
	
	public static int deletePatient(long patientId) {
		FParamBinder<Map<String, String>> binder = (PreparedStatement stmt,
				Map<String, String> dbParams) -> {
			stmt.setLong(1, Long.parseLong(dbParams.get("patientId")));
		};
		Map<String, String> params = new HashMap<>();
		params.put("patientId", "" + patientId);
		JdbcResult rst = JdbcDao.executeUpdate(SQL_DELETE_PATIENT, binder, params);
		return rst.getAffectedRows();
	}
	
	public static int updatePatient(PatientVo patientVo) {
		FParamBinder<PatientVo> binder = generateUpdatePatientParamBinder(patientVo);
		JdbcResult rst = JdbcDao.executeUpdate(SQL_UPDATE_PATIENT, binder, patientVo);
		return rst.getAffectedRows();
	}
	
	/**
	 * 根据模询条件求出符合条件的患者列表
	 * @param params
	 * @return
	 * 【闫涛 2016.03.28】初始版本
	 */
	public static List<PatientVo> getPatients(Map<String, String> params, int startIndex, int amount) {
		String patientName = "";
		if (params.get("patientName") !=null ) {
			patientName = "%" + params.get("patientName") + "%";
		} else {
			patientName = "%%";
		}
		FParamBinder<Map<String, String>> binder = (PreparedStatement stmt,
				Map<String, String> dbParams) -> {
			stmt.setString(1, dbParams.get("patientName"));
			stmt.setInt(2, Integer.parseInt(dbParams.get("startIndex")));
			stmt.setInt(3, Integer.parseInt(dbParams.get("amount")));
		};
		FResetSetter<PatientVo> setter = (ResultSet rst) -> {  
	        List<PatientVo> items = new ArrayList<PatientVo>();  
	        PatientVo patientVo = null;  
	        while (rst.next()) {  
	            patientVo = new PatientVo();
	            patientVo.setPatientId(rst.getLong(1));
	            patientVo.setPatientName(rst.getString(2));
	            patientVo.setGenderId(rst.getInt(3));
	            patientVo.setResidentHospitalCode(rst.getString(4));
	            patientVo.setMedicalInsuranceTypeId(rst.getInt(5));
	            patientVo.setAccountId(rst.getInt(6));
	            items.add(patientVo);  
	        }  
	        return items;  
	    };
	    Map<String, String> cond = new HashMap<>();
	    cond.put("patientName", patientName);
	    cond.put("startIndex", "" + (startIndex - 1));
	    cond.put("amount", "" + amount);
	    List<PatientVo> patients = JdbcDao.executeQuery(SQL_GET_PATIENTS, binder, cond, setter);
		return patients;
	}
	public static int getPatientsTotal(Map<String, String> params) {
		String patientName = "";
		if (params.get("patientName") !=null ) {
			patientName = "%" + params.get("patientName") + "%";
		} else {
			patientName = "%%";
		}
		FParamBinder<Map<String, String>> binder = (PreparedStatement stmt,
				Map<String, String> dbParams) -> {
			stmt.setString(1, dbParams.get("patientName"));
		};
		FResetSetter<Integer> setter = (ResultSet rst) -> {  
	        List<Integer> items = new ArrayList<>();  
	        PatientVo patientVo = null;  
	        while (rst.next()) {  
	            items.add(rst.getInt(1));  
	        }  
	        return items;  
	    };
	    Map<String, String> cond = new HashMap<>();
	    cond.put("patientName", patientName);
	    List<Integer> recs = JdbcDao.executeQuery(SQL_GET_PATIENTS_TOTAL, binder, cond, setter);
	    if (recs.size() > 0) {
	    	return recs.get(0);
	    } else {
	    	return 0;
	    }
	}
	
	public static PatientVo getPatientDetail(long patientId) {
		FParamBinder<Map<String, String>> binder = (PreparedStatement stmt,
				Map<String, String> dbParams) -> {
			stmt.setLong(1, Long.parseLong(dbParams.get("patientId")));
		};
		FResetSetter<PatientVo> setter = (ResultSet rst) -> {  
	        List<PatientVo> items = new ArrayList<PatientVo>();  
	        PatientVo patientVo = null;  
	        while (rst.next()) {  
	            patientVo = new PatientVo();
	            patientVo.setPatientName(rst.getString(1));
	            patientVo.setResidentHospitalCode(rst.getString(2));
	            patientVo.setMedicalInsuranceTypeId(rst.getInt(3));
	            patientVo.setAccountId(rst.getInt(4));
	            patientVo.setGenderId(rst.getInt(5));
	            patientVo.setBirthday(rst.getString(6));
	            items.add(patientVo);  
	        }  
	        return items;  
	    };
	    Map<String, String> cond = new HashMap<>();
	    cond.put("patientId", "" + patientId);
	    List<PatientVo> patients = JdbcDao.executeQuery(SQL_GET_PATIENT_DETAIL, binder, cond, setter);
	    PatientVo patient = null;
	    if (patients.size() > 0) {
	    	patient = patients.get(0);
	    	patient.setPatientId(patientId);
	    	return patient;
	    } else {
	    	return null;
	    }
	}
	
	public List<PatientVo> getPatients() {
		return patients;
	}

	public void setPatients(List<PatientVo> patients) {
		this.patients = patients;
	}

	public int getPatientsTotal() {
		return patientsTotal;
	}

	public void setPatientsTotal(int patientsTotal) {
		this.patientsTotal = patientsTotal;
	}
	
	public PatientVo getPatientVo() {
		return patientVo;
	}

	public void setPatientVo(PatientVo patientVo) {
		this.patientVo = patientVo;
	}

	private static FParamBinder<PatientVo> generateAddPatientParamBinder(PatientVo patientVo) {
		return (PreparedStatement stmt,
				PatientVo param) -> {
			stmt.setString(1, param.getPatientName());
			stmt.setString(2, param.getResidentHospitalCode());
			stmt.setInt(3, param.getMedicalInsuranceTypeId());
			stmt.setLong(4, param.getAccountId());
			stmt.setInt(5, param.getGenderId());
			stmt.setString(6, param.getBirthday());
		};
	}
	
	private static FParamBinder<PatientVo> generateUpdatePatientParamBinder(PatientVo patientVo) {
		return (PreparedStatement stmt,
				PatientVo param) -> {
			stmt.setString(1, param.getPatientName());
			stmt.setString(2, param.getResidentHospitalCode());
			stmt.setInt(3, param.getMedicalInsuranceTypeId());
			stmt.setLong(4, param.getAccountId());
			stmt.setInt(5, param.getGenderId());
			stmt.setString(6, param.getBirthday());
			stmt.setLong(7, param.getPatientId());
		};
	}
	
	private final static String SQL_ADD_PATIENT = "insert into t_patient(patient_name, resident_hospital_code, "
			+ "medical_insurance_type_id, account_id, gender_id, birthday, "
			+ "id_card_type_id) values(?, ?, ?, ?, ?, ?, 1)";
	private final static String SQL_GET_PATIENTS = "select patient_id, patient_name, gender_id, "
			+ "resident_hospital_code, medical_insurance_type_id, "
			+ "account_id from t_patient where patient_name like ? order by patient_id desc limit ?,?";
	private final static String SQL_GET_PATIENTS_TOTAL = "select count(patient_id) from "
			+ "t_patient where patient_name like ?";
	private final static String SQL_DELETE_PATIENT = "delete from t_patient where patient_id=?";
	private final static String SQL_GET_PATIENT_DETAIL = "select patient_name, resident_hospital_code, "
			+ "medical_insurance_type_id, account_id, gender_id, birthday from t_patient "
			+ "where patient_id=?";

	private final static String SQL_UPDATE_PATIENT = "update t_patient set patient_name=?, resident_hospital_code=?, "
			+ "medical_insurance_type_id=?, account_id=?, gender_id=?, birthday=? where patient_id=? ";
	private JspParamsVo jspParamsVo = null;
	private List<PatientVo> patients = null;
	private int patientsTotal = 0;
	private PatientVo patientVo = null;
}
