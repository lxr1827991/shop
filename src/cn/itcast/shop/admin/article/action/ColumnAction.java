package cn.itcast.shop.admin.article.action;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.mapper.ActionMapping;
import org.aspectj.weaver.patterns.ThisOrTargetAnnotationPointcut;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.shop.admin.BaseAction;
import cn.itcast.shop.admin.article.entity.Article;
import cn.itcast.shop.admin.article.entity.Column;
import cn.itcast.shop.admin.article.service.ColumnService;

import com.lxr.framework.BaseFilter;
import com.lxr.framework.utils.BeanUtils;
import com.lxr.framework.utils.FileUtils;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class ColumnAction extends BaseAction{

	@Autowired
	ColumnService columnService;
	
	Column column = new Column();
	
	public String add() {
		if(isIndex()){
			
			List list = columnService.query(getEntityClass());
			//JSONArray json = 
			putModel("columns", list);
			putModel("columnsJson", new JSONArray(list));
			return EDIT;
		}
		
		
		
		if(column.getImg()!=null&&column.getImg().length>0){
		String path = FileUtils.upload(column.getImg()[0],  column.getImgFileName()[0]);
			
		column.setImage(path);
		
		}
		
		columnService.save(column);
		
		return SUCCESS;
	}
	
	
	public String update() {
	
		
		if(isIndex()){
			putModel("column", columnService.queryById(getEntityClass(), column.getId()));
			List list = columnService.query(getEntityClass());
			//JSONArray json = 
			putModel("columns", list);
			putModel("columnsJson", new JSONArray(list));
			
			return EDIT;
		}
		
		
		if(column.getImg()!=null&&column.getImg().length>0){
			String path = FileUtils.upload(column.getImg()[0],  column.getImgFileName()[0]);
				
			column.setImage(path);
			
			}
		
		if(column.getParent()!=null&&column.getParent().getId()==null)column.setParent(null);
	
	columnService.update(column);
	
	return SUCCESS;
	
	}
	
	
	
	public String query() {
		
		List list = columnService.query(Column.class);
		
		putModel("columns", list);
		putModel("columnsJson", new JSONArray(list));
		
		
		
		return INDEX;
	}

	
	@Override
	public Class getEntityClass() {
		return Column.class;
	}
	
	


	public Object getModel() {
		ActionMapping mapping = ServletActionContext.getActionMapping();
		
		if(mapping.getName().endsWith("_query")||mapping.getName().endsWith("_delete")){
			return this.baseFilter = new BaseFilter();
			
		}
			
		
		return column;
	}
	
	

	
	
	
}
