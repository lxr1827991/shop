package com.lxr.framework.struts;

public class JsonResult {
	
	
	
	
	String msg;
	

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
	
	public static JsonResult createResult(String msg) {
		JsonResult result= new JsonResult();
		result.setMsg(msg);
		return result;
		

	}

}
