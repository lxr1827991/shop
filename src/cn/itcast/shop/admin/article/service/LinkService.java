package cn.itcast.shop.admin.article.service;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;

import com.lxr.framework.BaseFilter;
import cn.itcast.shop.admin.BaseService;
import cn.itcast.shop.admin.article.action.LinkAction.LinkFilter;
import cn.itcast.shop.admin.article.entity.Advert;
import cn.itcast.shop.admin.article.entity.Link;
import cn.itcast.shop.admin.article.entity.LinkType;
import cn.itcast.shop.utils.PageBean2;


@Service
public class LinkService extends BaseService{

	
	public PageBean2<Link> queryForPage(LinkFilter filter) {
		return queryPage(filter);

	}
	
	
	@Override
	public PageBean2 onQueryPage(Session session, BaseFilter baseFilter) {

		LinkFilter filter = (LinkFilter)baseFilter;
	   
	        Criteria criteria = session.createCriteria(Link.class);
	        
	        
	        if(!StringUtils.isEmpty(filter.getName()))criteria.add(Restrictions.like("name","%"+filter.getName()+"%"));
	        
	        
	        if(filter.getLinkType()!=null&&filter.getLinkType().getId()!=null)criteria.add(Restrictions.eq("type",filter.getLinkType()));
	        
	        
	        // 获取根据条件分页查询的总行数  
	        Long rowCount = (Long) criteria.setProjection(Projections.rowCount()).uniqueResult();  
	        criteria.setProjection(null);
	        
	        PageBean2 page = new PageBean2();
	        page.setLimit(filter.getLimit());
	        page.setPage(filter.getPage());
	  
	        criteria.setFirstResult((page.getPage() - 1) * page.getLimit());  
	        criteria.setMaxResults( page.getLimit());  
	  
	        List result = criteria.list();  
	  
	        
	        
	        
	        page.setList(result);
	        page.setTotalCount(rowCount.intValue());
	        
	        return page; 
	   
	    
	}
	
	
	
	
	
}
