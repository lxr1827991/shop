package cn.itcast.shop.admin.whole.action;

import java.util.List;

import net.sf.json.JSONArray;

import org.hibernate.sql.Delete;
import org.hibernate.sql.Update;
import org.springframework.beans.factory.annotation.Autowired;

import com.lxr.framework.long1.TreeNode;

import cn.itcast.shop.admin.BaseAction;
import cn.itcast.shop.admin.CommonService;
import cn.itcast.shop.admin.whole.entity.Area;
import cn.itcast.shop.admin.whole.service.AreaService;

public class AreaAction extends BaseAction{

	Area area = new Area();
	
	
	List<Area> areas ;
	
	@Autowired
	AreaService areaService;
	
	
	public String query() {
		
		putModel("areasJson", JSONArray.fromObject(areaService.query(Area.class)).toString());
		putModel("areas", areas);
		return INDEX;

	}
	
	public String add() {
		if(isIndex()){
			
			putModel("areasJson", JSONArray.fromObject(areaService.query(Area.class)).toString());
			
			return EDIT;
			
		}
		
		if(area.getParent()!=null&&area.getParent().getId()==null)area.setParent(null);
		areaService.save(area);
		
		return SUCCESS;
	}
	
	public String update() {
		areaService.update(area);
		
		return SUCCESS;

	}
	
	
	public String delete() {
		areaService.delete(area);

		return SUCCESS;
	}
	
	
	@Override
	public Class getEntityClass() {
		return Area.class;
	}
	
	
	public Object getModel() {
		
		return area;
	}

	
	
	
}
