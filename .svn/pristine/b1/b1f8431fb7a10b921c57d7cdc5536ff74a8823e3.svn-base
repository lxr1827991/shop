package cn.itcast.shop.admin.article.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.mapper.ActionMapping;
import org.hibernate.Query;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;

import com.lxr.framework.BaseFilter;

import cn.itcast.shop.admin.BaseAction;
import cn.itcast.shop.admin.CommonService;
import cn.itcast.shop.admin.article.entity.Adsense;
import cn.itcast.shop.admin.article.entity.Column;
import cn.itcast.shop.admin.article.service.AdvertService;

/**
 * 广告位
 * @author Administrator
 *
 */
public class AdsenseAction extends BaseAction{

	
	Adsense adsense = new Adsense();
	
	
	public String query() {
		
		List<Adsense> adsenses = this.commonService.query(Adsense.class);
		putModel("adsenses", adsenses);
		return INDEX;

	}
	
	
	public String update() {
		if(isIndex()){
			putModel("adsense", commonService.queryById(getEntityClass(), adsense.getId()));
			return EDIT;
		}
		
		commonService.update(this.adsense);
		return SUCCESS;
	}
	

	
	public String add() {
		if("index".equals(getParameter("action"))){
			
			return EDIT;
		}
		commonService.save(this.adsense);
		return SUCCESS;
	}
	
	
	@Override
	public Class getEntityClass() {
		
		return Adsense.class;
	}
	
	public Object getModel() {
		ActionMapping mapping = ServletActionContext.getActionMapping();
		
		if(mapping.getName().endsWith("_query")||mapping.getName().endsWith("_delete"))
			return baseFilter = new BaseFilter();
		
		return adsense;
	}
	
	
	

}
