package cn.itcast.shop.admin.article.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.mapper.ActionMapping;
import org.springframework.beans.factory.annotation.Autowired;

import com.lxr.framework.BaseFilter;

import cn.itcast.shop.admin.BaseAction;
import cn.itcast.shop.admin.article.entity.LinkType;
import cn.itcast.shop.admin.article.service.LinkService;

public class LinkTypeAction extends BaseAction{

	LinkType linkType = new LinkType();
	
	List<LinkType> linkTypes;
	
	@Autowired
	LinkService linkService;
	
	
	public String query() {
		
		putModel("linkTypes", linkService.query(LinkType.class));
		return INDEX;

	}
	
	

	
	
	public String update() {
		if(isIndex()){
			
			putModel("linkType", commonService.queryById(LinkType.class, linkType.getId()));
			return EDIT;
			
		}
		linkService.update(linkType);
		return SUCCESS;

	}
	
	
	public String add() {
		if(isIndex()){
			return EDIT;
		}
		
		
		linkService.save(linkType);
		
		return SUCCESS;

	}
	
	@Override
	public Class getEntityClass() {
		// TODO Auto-generated method stub
		return LinkType.class;
	}
	
	
	public Object getModel() {
ActionMapping mapping = ServletActionContext.getActionMapping();
		
		if(mapping.getName().endsWith("_query")||mapping.getName().endsWith("_delete")){
			return this.baseFilter;
			
		}
		
		return linkType;
	}

}
