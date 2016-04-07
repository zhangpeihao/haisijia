package com.haisijia.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haisijia.model.AppModel;
import com.haisijia.model.MenuVo;

public interface AppController {
	public static void doGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {}
	
	public static void doAjaxGet(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {}
	
	public static void doPost(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {}
	
	public static void doAjaxPost(HttpServletRequest request,
            HttpServletResponse response, String cmd) throws ServletException, IOException {}
}
