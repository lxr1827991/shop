package cn.itcast.shop.admin.whole.action;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.mapping.Array;
import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.shop.admin.BaseAction;
import cn.itcast.shop.admin.whole.entity.Role;
import cn.itcast.shop.admin.whole.service.RoleService;

public class RoleAction extends BaseAction{
	
	@Autowired
	RoleService roleService;
	
	Role role = new Role();
	
	List<Role> roles ;
	
	
	public String query() {
		
		roles = roleService.query(Role.class);
		
		return SUCCESS;
		
	}
	
	
	public String add(){
		
		roleService.save(role);
		
		return SUCCESS ;
	}
	
	public String delete() {
		roleService.delete(role);

		return SUCCESS;
	}
	
	public String update() {
		
		return SUCCESS;

	}
	

	public Object getModel() {
		
		return role;
	}
	
	

}
