package com.haisijia.jdbc;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 *
 */
public class PersonDao {
	/**
	 *
	 */
	public static int processPersonName(String personName) {
		int personId = getPersonId(personName);
		if (personId <= 0) {
			PersonVo vo = new PersonVo();
			vo.setPersonName(personName);
			personId = addPerson(vo);
		}
		return personId;		
	}
	
	/**
	 *
	 */
	public static int getPersonId(String personName) {
		String sql = "select person_id from t_person where person_name=?";
		FParamBinder<String> binder = (PreparedStatement stmt,
				String param) -> {
			stmt.setString(1, param);
		};
		FResetSetter<Integer> setter = (ResultSet rst) -> {  
	        List<Integer> items = new ArrayList<Integer>();  
	        Integer item = null;  
	        while (rst.next()) {  
	            item = Integer.valueOf(rst.getInt(1));
	            items.add(item);  
	        }  
	        return items;  
	    };  
	    List<Integer> ids = JdbcDao.executeQuery(sql, binder, personName, setter);
	    int personId = 0;
	    if (ids.size() >= 1) {
	    	personId = ids.get(0).intValue();
	    }
	    return personId;		
	}
	
	/**
	 *
	 */
	public static int addPerson(PersonVo vo) {
		String sql = generateInsertSql(vo);
		FParamBinder<PersonVo> binder = generateInsertBinder(vo);
		JdbcResult rst = JdbcDao.executeUpdate(sql, binder, vo);
		int personId = 0;
		if (1 == rst.getAffectedRows()) {
			personId = (int)rst.getPk();
		}
		return personId;
	}
	
	/**
	 *
	 */
	private static String generateInsertSql(PersonVo vo) {
		StringBuilder sqlFields = new StringBuilder("insert into t_person(person_name) ");
		StringBuilder sqlValues = new StringBuilder("values(?)");
		return sqlFields + " " + sqlValues;
	}
	
	/**
	 *
	 */
	private static FParamBinder<PersonVo> generateInsertBinder(PersonVo vo) {
		return (PreparedStatement stmt,
				PersonVo param) -> {
			stmt.setString(1, param.getPersonName());
		};
	}
}
