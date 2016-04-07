package com.haisijia.jdbc;

/**
 *
 *
 */
public class PersonVo {
	public long getPersonId() {
		return personId;
	}
	public void setPersonId(long personId) {
		this.personId = personId;
	}
	public String getPersonName() {
		return personName;
	}
	public void setPersonName(String personName) {
		this.personName = personName;
	}
	private long personId = 0;
	private String personName = null;
}
