package com.haisijia.common;

import java.io.IOException;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

public class AppUtil {
	public static String getParameter(HttpServletRequest request, String paramName) {
		return getParameter(request, paramName, "");
	}
	
	public static String getParameter(HttpServletRequest request, String paramName, String defaultValue) {
		String param = request.getParameter(paramName);
		if (null == param || param.equals("")) {
			param = defaultValue;
		}
		return param;
	}
	
	public static void sendHttpAjaxResponse(HttpServletResponse response, JSONObject json) throws IOException {
		response.setCharacterEncoding("utf-8");
        ServletOutputStream sos = response.getOutputStream();
        PrintStream printStream = new PrintStream(sos);
        printStream.write(json.toString().getBytes("utf-8"));
        //sos.print(json.toString());
        //sos.flush();
	}
	
	public static String getCookieValue(HttpServletRequest request, String key) {
		Cookie[] cookies = request.getCookies();
		String value = "0";
        if (null != cookies) {
	        for (Cookie cookie : cookies) {
	        	if (cookie.getName().equals(key)) {
	        		value = cookie.getValue();
	        	}
	        }
        }
        return value;
	}
	
	/**
	 * ����ָ���ַ�����SHA1ժҪ������������֤
	 * @param text
	 * @return
	 * ������ 2016.03.05����ʼ�汾
	 */
	public static String encodeSha1(String text) {
		if (null == text) {
			return null;
		}
		StringBuilder sha1 = new StringBuilder();
		try {
			MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
			messageDigest.update(text.getBytes());
			byte[] bytes = messageDigest.digest();
			int len = bytes.length;
			for (int i=0; i<len; i++) {
				sha1.append(HEX_DIGITS[(bytes[i]>>4)&0xf]);
				sha1.append(HEX_DIGITS[bytes[i] & 0x0f]);
			}
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sha1.toString();
	}
	
	public static String transStrToUtf8(String raw) {
		try {
			String a1 = new String(raw.getBytes("ISO8859-1"), "UTF-8");
			return raw;
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return  "";
	}
	
	private static final char[] HEX_DIGITS = { '0', '1', '2', '3', '4', '5',
		'6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
}
