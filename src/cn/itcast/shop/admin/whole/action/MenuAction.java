package cn.itcast.shop.admin.whole.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.lxr.framework.long1.TreeNode;

import cn.itcast.shop.admin.BaseAction;
import cn.itcast.shop.admin.whole.entity.Menu;
import cn.itcast.shop.admin.whole.service.MenuService;

public class MenuAction extends BaseAction{

	Menu menu = new Menu();
	
	List<TreeNode<Menu>> menus;
	
	@Autowired
	MenuService menuService;
	
	
	public String query() {
		
		menus = menuService.queryForTree();
		
		return SUCCESS;

	}
	
	
	public String add() {
		menuService.save(menu);
		
		return SUCCESS;
	}
	
	
	
	
	public Object getModel() {
		
		return menu;
	}

	
	
	
}
