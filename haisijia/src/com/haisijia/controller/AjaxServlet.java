package com.haisijia.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.haisijia.common.AppUtil;

/**
 * 处理Ajax请求的Servlet
 * 闫涛
 *
 */
public class AjaxServlet extends AppServlet {
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	doRequest(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        doRequest(request, response);
    }
    
    private void doRequest(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        JSONObject json = new JSONObject();
        String cmd = "home";
        if (request.getParameter("cmd")!=null && !request.getParameter("cmd").equals("")) {
        	cmd = request.getParameter("cmd");
        }
        long userId = Long.parseLong(AppUtil.getCookieValue(request, "userId"));
        if (userId <= 0 && cmd.indexOf("loginUser")<0 && cmd.indexOf("setCookie")<0) {
        	json.put("status", "Error");
        	json.put("reason", "Fail to pass the authentication process!");
            ServletOutputStream sos = response.getOutputStream();
            sos.print(json.toString());
            sos.flush();
            return ;
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
    public String getServletInfo() {
        return "MyFirstServlet";
    }
    private static final long serialVersionUID = -1915463532411657453L;
}
