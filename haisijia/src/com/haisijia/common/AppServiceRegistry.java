package com.haisijia.common;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;

import com.haisijia.model.AppModel;

/**
 * 服务注册表类
 * 闫涛
 */
public class AppServiceRegistry {
	/**
	 * 获取唯一实例
	 * @return
	 * 【闫涛 2016.02.28】初始版本
	 */
	public static AppServiceRegistry getInstance() {
		if (null == instance) {
			instance = new AppServiceRegistry();
		}
		return instance;
	}
	
	/**
	 * 注册应用服务
	 * @param serviceName
	 * @param className
	 * @param methodName
	 * @param paramsClass
	 * @return
	 * 【闫涛 2016.03.04】初始版本
	 */
	public static String registerAppService(String serviceName, String className, String methodName) {
		String rst = "Ok";		
		Class[] methodParams = new Class[] {AppMessage.class};
		try {
			Class serviceClass = Class.forName(className);
			Method serviceMethod = serviceClass.getMethod(methodName, methodParams);
			serviceMap.put(serviceName, serviceMethod);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			rst = "Error1";
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			rst = "Error2";
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			rst = "Error3";
		}
		return rst;
	}
	
	/**
	 * 注册应用服务
	 * @param serviceName
	 * @param service
	 */
	public void registerService(String serviceName, Method service) {
		serviceMap.put(serviceName, service);
	}
	
	/**
	 * 注销应用服务
	 * @param serviceName
	 * @param service
	 */
	public void unregisterService(String serviceName) {
		serviceMap.remove(serviceName);
	}
	
	/**
	 * 获取服务实例
	 * @param serviceName
	 * @return
	 */
	public Optional<Method> getService(String serviceName) {
		return Optional.ofNullable(serviceMap.get(serviceName));
	}
	
	public void putModel(String key, AppModel appModel) {
		models.put(key, appModel);
	}
	
	public Optional<AppModel> getModel(String key) {
		return Optional.ofNullable(models.get(key));
	}
	
	private static AppServiceRegistry instance = null;
	//private static Map<String, Function<AppMessage, String>> serviceMap = new HashMap<String, Function<AppMessage, String>>();
	private static Map<String, Method> serviceMap = new HashMap<String, Method>();
	private static Map<String, AppModel> models = new HashMap<String, AppModel>();
}
