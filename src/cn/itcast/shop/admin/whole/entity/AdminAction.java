package cn.itcast.shop.admin.whole.entity;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.shop.admin.BaseAction;
import cn.itcast.shop.admin.whole.service.AdminUserService;

public class AdminAction extends BaseAction{

	AdminUser adminUser = new AdminUser();
	
	
	List<AdminUser> adminUsers;
	
	@Autowired
	AdminUserService adminUserService;
	
	
	public String query() {
		
		adminUsers = adminUserService.query(AdminUser.class);
		
		return SUCCESS;

	}
	
	
	
	
	public Object getModel() {
		
		return adminUser;
	}

}
