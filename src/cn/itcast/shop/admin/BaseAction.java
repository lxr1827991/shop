
package cn.itcast.shop.admin;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.shop.admin.article.entity.Article;

import com.lxr.framework.BaseFilter;
import com.lxr.framework.utils.BeanUtils;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public abstract class BaseAction extends ActionSupport  implements ModelDriven{

	
	public static final String INDEX="index";
	
	public static final String ADD="add";
	
	public static final String EDIT = "edit";
	
	public BaseFilter baseFilter = new BaseFilter();
	
	
	@Autowired
	public CommonService commonService;
	
	
	public void putModel(String key,Object model) {
		 ServletActionContext.getRequest().setAttribute(key, model);

	}
	

	
	public String getParameter(String key) {
		return  ServletActionContext.getRequest().getParameter(key);

	}
	
	public String[] getParametersValues(String key) {
		return ServletActionContext.getRequest().getParameterValues(key);

	}
	
	 public boolean isIndex() {
		 return INDEX.equals(getParameter("action"));
	}
	
	 
	 public String delete() {
		 HttpServletRequest  request = ServletActionContext.getRequest();
		 Integer[] ids = baseFilter.getId();
		List  list =  BeanUtils.attrsConvertBeans(ids, "id", getEntityClass());
		 
		commonService.delete(list);
		
		return SUCCESS;

	}
	 
	 public Class getEntityClass(){
		 
		return null; 
	 }




	 
	
	
}
