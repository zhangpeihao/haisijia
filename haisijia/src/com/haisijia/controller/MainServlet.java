package com.haisijia.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haisijia.common.AppUtil;
import com.haisijia.fp.FServletDoGet;


public class MainServlet extends AppServlet {
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String cmd = "showHome";
        if (request.getParameter("cmd")!=null && !request.getParameter("cmd").equals("")) {
        	cmd = request.getParameter("cmd");
        }
        long userId = Long.parseLong(AppUtil.getCookieValue(request, "userId"));
        if (userId <= 0) {
        	cmd = "showLogin";
        	request.setAttribute("loginMode", "1");
        } else {
        	request.setAttribute("userId", "" + userId);
        }
        try {
			httpRequestMap.get(cmd).invoke(null, request, response, cmd);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
 
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        //Do some other work
    }
 
    @Override
    public String getServletInfo() {
        return "MyFirstServlet";
    }
    
}