package com.haisijia.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@FunctionalInterface  
public interface FResetSetter<T> {  
    public List<T> getResultSet(ResultSet rst) throws SQLException;  
}  
