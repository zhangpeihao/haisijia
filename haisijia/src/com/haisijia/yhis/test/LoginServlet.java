package com.haisijia.yhis.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.haisijia.yhis.model.LoginModel;
import com.haisijia.yhis.model.UserModel;
import com.haisijia.yhis.model.UserVo;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        LoginModel loginModel = new LoginModel();
        String loginName = "";
        if (request.getParameter("loginName") != null && !request.getParameter("loginName").equals("")) {
        	loginName = request.getParameter("loginName");
        }
        loginModel.setLoginName(loginName);
        String loginPwd = "";
        if (request.getParameter("loginPwd") != null && !request.getParameter("loginPwd").equals("")) {
        	loginPwd = request.getParameter("loginPwd");
        }
        loginModel.setLoginPwd(loginPwd);
        long userId = loginModel.loginUser(loginName, loginPwd);
        UserVo userVo = null;
        JSONObject json = new JSONObject();
        if (userId > 0) {
            UserModel userModel = new UserModel();
        	userVo = userModel.getUserVoById(userId).orElse(new UserVo());
        	json.put("status", "Ok");
            json.put("userId", userId);
            json.put("userName", "" + userVo.getUserName().length());
        } else {
        	json.put("status", "Error");
        	json.put("userId", userId);
        }
        //json.put("userName", userVo.getUserName());
        ServletOutputStream sos = response.getOutputStream();
        sos.print(json.toString());
        sos.flush();
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
    private static final long serialVersionUID = -1915463532411657452L;
}
