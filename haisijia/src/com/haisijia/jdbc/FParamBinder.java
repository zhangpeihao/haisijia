package com.haisijia.jdbc;

import java.sql.PreparedStatement;
import java.sql.SQLException;

@FunctionalInterface  
public interface FParamBinder<T> {  
    public void bindParams(PreparedStatement stmt, T param) throws SQLException;  
}  