package cn.itcast.shop.user.adminaction;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import cn.itcast.shop.user.vo.*;
import cn.itcast.shop.user.dao.ExportExport;
import cn.itcast.shop.user.service.UserService;
import cn.itcast.shop.user.vo.User;
import cn.itcast.shop.utils.PageBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
/**
 * 后台用户管理的Action类
 * @author zgh
 *
 */
public class UserAdminAction extends ActionSupport implements ModelDriven<User>{
	// 模型驱动使用的类
	private User user = new User();
	
	private Long parentId;//属性驱动
	/**
	 * 查询部门列表
	 */
	public String list(){
		//List<Department> list = departmentService.findAll();
		List<User> list = null;
		if(parentId == null){
			//查询顶级部门列表
			list = userService.findTopList();
		}else{
			//查询子部门列表
			list = userService.findChildren(parentId);
			
			User user = userService.getById(parentId);
			
		}
		

		return "list";
	}
	public String Export(){
		ExportExport export = new ExportExport();
		try{
			export.Exprot(userService);
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("导出数据有误！");
		}
		return "export";
		
	}
	public User getModel() {
		return user;
	}
	
	// 注入用户的Service
	private UserService userService;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	// 接受page参数
	private Integer page;

	public void setPage(Integer page) {
		this.page = page;
	}

	// 后台查询所有用户的方法带分页:
	public String findAll(){
		PageBean<User> pageBean = userService.findByPage(page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findAll";
		
	}
	
	// 后台用户的删除
	public String delete(){
		User existUser = userService.findByUid(user.getUid());
		userService.delete(existUser);
		return "deleteSuccess";
	}
	
	/**
	 * 跳转到添加页面
	 */
	public String addUI(){
		return "addUI";
	}
	
	/**
	 * 添加数据
	 */
	public String add(){
		userService.save(user);
		
		return "toList";
	}
	
	// 后台用户的编辑
	public String edit(){
		user = userService.findByUid(user.getUid());
		return "editSuccess";
	}
	
	// 后台用户的修改:
	public String update(){
		userService.update(user);
		return "updateSuccess";
	}
	public String save(){
		userService.save(user);
		return"SaveSuccess";
	}
	public String findByPhone(){
		PageBean<User> pageBean = userService.findByPage(page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByPhone";
		
	}
}
