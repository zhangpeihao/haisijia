package com.haisijia.jdbc;

public class JdbcResult {
	public long getPk() {
		return pk;
	}
	public void setPk(long pk) {
		this.pk = pk;
	}
	public int getAffectedRows() {
		return affectedRows;
	}
	public void setAffectedRows(int affectedRows) {
		this.affectedRows = affectedRows;
	}
	private long pk = 0;
	private int affectedRows = 0;
}
