package cn.itcast.shop.admin.article.service;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;

import com.lxr.framework.BaseFilter;
import com.lxr.framework.utils.PageUtils;

import cn.itcast.shop.admin.BaseService;
import cn.itcast.shop.admin.article.action.AdvertAction;
import cn.itcast.shop.admin.article.action.AdvertAction.AdvertFilter;
import cn.itcast.shop.admin.article.entity.Advert;
import cn.itcast.shop.utils.PageBean2;


@Service
public class AdvertService extends BaseService{

	
	
	public PageBean2 queryForPage(AdvertFilter filter) {
		return queryPage(filter);
	   
	}
	
	
	@Override
	public PageBean2 onQueryPage(Session session, BaseFilter filter) {
		 
		
		AdvertFilter f = (AdvertFilter)filter;
		        Criteria criteria = session.createCriteria(Advert.class);  
		  
		        
		        
		        if(!StringUtils.isEmpty(f.getName()))criteria.add(Restrictions.like("name","%"+f.getName()+"%"));
		        
		        if(f.getStartDate()!=null)criteria.add(Restrictions.ge("startDate",f.getStartDate()));
		        if(f.getEndDate()!=null)criteria.add(Restrictions.le("endDate",f.getEndDate()));
		        if(f.getAdvertType()!=null&&f.getAdvertType().getId()!=null)criteria.add(Restrictions.le("advertType",f.getAdvertType()));
		        if(f.getAdsense()!=null&&f.getAdsense().getId()!=null)criteria.add(Restrictions.le("adsense",f.getAdsense()));
		        
		        
		        // 获取根据条件分页查询的总行数  
		        Long rowCount = (Long) criteria.setProjection(Projections.rowCount()).uniqueResult();  
		        criteria.setProjection(null);
		        
		        PageBean2 page = new PageBean2();
		  
		        criteria.setFirstResult((page.getPage() - 1) * page.getLimit());  
		        criteria.setMaxResults( page.getLimit());  
		  
		        List result = criteria.list();  
		        page.setPage(f.getPage());
				page.setLimit(f.getLimit());
		        page.setList(result);
		        page.setTotalCount(rowCount.intValue());
		        PageUtils.setTotalPage(page);
		        return page; 
		  

	}
	
	
}
