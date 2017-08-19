package cn.itcast.shop.admin.whole.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.lxr.framework.long1.TreeBuilder;
import com.lxr.framework.long1.TreeNode;

import cn.itcast.shop.admin.BaseService;
import cn.itcast.shop.admin.whole.entity.Menu;

@Service
public class MenuService extends BaseService{
	
	public List<TreeNode<Menu>> queryForTree() {
		
		List<Menu> list = query(Menu.class);
		
		return new MenuTreeBuilder(list).generate();
		
		

	}
	

	
	class MenuTreeBuilder extends TreeBuilder<Menu>{

		List<Menu> list;
		
		
		public MenuTreeBuilder(List<Menu> l) {
			list = l;
		}
		
		
		@Override
		public List<TreeNode<Menu>> getRoots() {
			
			List<TreeNode<Menu>> l = new ArrayList<TreeNode<Menu>>();
			
			for (Menu m : list) {
				if(m.getParent()==null)
					l.add(new TreeNode<Menu>(m));
				
			}
			
			return l;
		}

		@Override
		public List<TreeNode<Menu>> getChilds(TreeNode node) {
			List<TreeNode<Menu>> l = new ArrayList<TreeNode<Menu>>();
			
			for (Menu m : list) {
				if(m.getParent()!=null&&m.getParent().equals(node.t))
					l.add(new TreeNode<Menu>(m));
				
			}
			
			return l;
		}
		

	}
	
	
	
	public static void main(String[] args) {
		Menu menu = new Menu();menu.setId(1);
	}
	
}
