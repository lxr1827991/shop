
package cn.itcast.shop.admin.whole.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.lxr.framework.long1.TreeBuilder;
import com.lxr.framework.long1.TreeNode;

import cn.itcast.shop.admin.BaseService;
import cn.itcast.shop.admin.whole.entity.Area;

@Service
public class AreaService extends BaseService{
	
	
	public List<TreeNode<Area>> queryForTree() {
		
		List<Area> list = query(Area.class);
		
		AreaTreeBudiler areaTreeBudiler = new AreaTreeBudiler();
		areaTreeBudiler.areas = list;
		
		return areaTreeBudiler.generate();
		

	}
	
	

	
	class AreaTreeBudiler extends TreeBuilder<Area>{

		List<Area> areas;
		
		@Override
		public List<TreeNode<Area>> getRoots() {
			List<TreeNode<Area>> list = new ArrayList<TreeNode<Area>>();
			
			for (Area area : areas) {
				if(area.getParent()==null)
					list.add(new TreeNode<Area>(area));
			}
			
			return list;
		}

		@Override
		public List<TreeNode<Area>> getChilds(TreeNode<Area> node) {
			List<TreeNode<Area>> list = new ArrayList<TreeNode<Area>>();
			for (Area a : areas) {
				if(a.getParent()!=null&&node.t.getId().equals(a.getParent().getId()))
					list.add(new TreeNode<Area>(a));
			}
			
			return list;
		}

	}
	
}
