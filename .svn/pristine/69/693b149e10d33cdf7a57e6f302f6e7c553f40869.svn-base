package cn.itcast.shop.admin.article.action;

import java.util.List;

import javax.swing.text.html.HTMLEditorKit.LinkController;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.mapper.ActionMapping;
import org.springframework.beans.factory.annotation.Autowired;

import com.lxr.framework.BaseFilter;
import com.lxr.framework.utils.FileUtils;

import cn.itcast.shop.admin.BaseAction;
import cn.itcast.shop.admin.article.entity.Link;
import cn.itcast.shop.admin.article.entity.LinkType;
import cn.itcast.shop.admin.article.service.LinkService;

public class LinkAction extends BaseAction{

	@Autowired
	LinkService linkService;
	
	Link link = new Link();

	
	public String query() {
		
		putModel("page", linkService.queryForPage((LinkFilter)baseFilter)) ;
		putModel("linkTypes", commonService.query(LinkType.class));
		
		return INDEX;

	}
	
	
	
	public String update() {
		if(isIndex()){
			putModel("link", commonService.queryById(Link.class, link.getId()));
			putModel("linkTypes", commonService.query(LinkType.class));
			
			return EDIT;
		}
		
		if(link.getImg()!=null&&link.getImg().length>0){
			String path = FileUtils.upload(link.getImg()[0],  link.getImgFileName()[0]);
				
			link.setImage(path);
			
			}
		
		if(link.getType()!=null&&link.getType().getId()==null)link.setType(null);
		
		linkService.update(link);
		
		return SUCCESS;

	}
	
	public String add() {
		if(isIndex()){
			putModel("linkTypes", commonService.query(LinkType.class));
			
			return EDIT;
		}

		
		if(link.getImg()!=null&&link.getImg().length>0){
			String path = FileUtils.upload(link.getImg()[0],  link.getImgFileName()[0]);
				
			link.setImage(path);
			
			}
		
		if(link.getType()!=null&&link.getId()==null)link.setType(null);
		
		linkService.save(link);
		
		return SUCCESS;
	}
	
	
	@Override
	public Class getEntityClass() {
		return Link.class;
	}
	
	
	
	public Object getModel() {
		ActionMapping mapping = ServletActionContext.getActionMapping();
		
		if(mapping.getName().endsWith("_query")||mapping.getName().endsWith("_delete")){
			return this.baseFilter = new LinkFilter();
			
		}
		
		return link;
	}
	
public static class LinkFilter extends BaseFilter{
		
		
		LinkType linkType;

		public LinkType getLinkType() {
			return linkType;
		}

		public void setLinkType(LinkType linkType) {
			this.linkType = linkType;
		}
		
		
		
	}

}
