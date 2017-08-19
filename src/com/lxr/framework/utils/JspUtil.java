package com.lxr.framework.utils;

import org.apache.struts2.ServletActionContext;

public class JspUtil {

	
	public static void putModel(String key,Object model) {
		ServletActionContext.getRequest().setAttribute(key, model);	

	}
	
}
