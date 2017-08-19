package cn.itcast.shop.admin.whole.action;

import java.util.List;


import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.shop.admin.BaseAction;
import cn.itcast.shop.admin.whole.entity.AdminUser;
import cn.itcast.shop.admin.whole.service.AdminUserService;

public class AdminUserAction extends BaseAction{

	@Autowired
	AdminUserService adminUserService ;
	
	
	AdminUser adminUser = new AdminUser();
	
	
	
	
	List<AdminUser> adminUsers;
	
	
	public String query() {
		
		adminUsers = adminUserService.query(AdminUser.class);
		
		return SUCCESS;

	}
	
	
	
	public String delete() {
		
		adminUserService.delete(adminUser);
		
		return SUCCESS;

	}
	
	
	public String update() {
		
		adminUserService.update(adminUser);
		
		return SUCCESS;

	}
	
	
	public String add() {
		adminUserService.save(adminUser);
		
		
		return SUCCESS;
	}
	
	
	
	
	public Object getModel() {
		
		return adminUser;
	}

}
