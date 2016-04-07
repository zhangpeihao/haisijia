package com.haisijia.fp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 响应doGet的函数
 * @author Administrator
 *
 */
@FunctionalInterface  
public interface FServletDoGet {
    public void doGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException;
}
