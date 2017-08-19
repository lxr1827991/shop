package cn.itcast.shop.admin.article.service;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.LockMode;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;

import com.lxr.framework.utils.PageUtils;

import cn.itcast.shop.admin.BaseService;
import cn.itcast.shop.admin.article.action.ArticleAction.ArticleFilter;
import cn.itcast.shop.admin.article.entity.Article;
import cn.itcast.shop.utils.PageBean2;



@Service
public class ArticleService extends BaseService{

	
	public PageBean2<Article> articleForPage(ArticleFilter filter) {
		
		Session session = null; 
		
	    try  
	    {  
	    	session = getSession();
	    	
	        Criteria criteria = session.createCriteria(Article.class); 
	       
	  
	        
	        
	        if(!StringUtils.isEmpty(filter.getName()))criteria.add(Restrictions.like("title","%"+filter.getName()+"%"));
	        
	        if(filter.getStartDate()!=null)criteria.add(Restrictions.ge("ctime",filter.getStartDate()));
	        if(filter.getEndDate()!=null)criteria.add(Restrictions.le("ctime",filter.getEndDate()));
	        if(filter.getColumn()!=null&&filter.getColumn().getId()!=null)criteria.add(Restrictions.le("column",filter.getColumn()));
	        
	        
	        // 获取根据条件分页查询的总行数  
	        Long rowCount = (Long) criteria.setProjection(Projections.rowCount()).uniqueResult();  
	        criteria.setProjection(null);
	        
	        PageBean2<Article> page = new PageBean2<Article>();
	        page.setPage(filter.getPage());
	        page.setLimit(filter.getLimit());
	        
	        
	        criteria.setFirstResult((page.getPage() - 1) * page.getLimit());  
	        criteria.setMaxResults( page.getLimit());  
	  
	        List result = criteria.list();  
	  
	        page.setList(result);
	        page.setTotalCount(rowCount.intValue());
	        PageUtils.setTotalPage(page);
	        
	        return page; 
	    } catch (RuntimeException re)  
	    {  
	        throw re;  
	    } finally{
	    	if(session!=null)session.close();
	    	
	    }  

	}
		
	
	
	
	
	public Article queryArticle(Object id) {
		return  (Article) getUniqueResult("from Article where id=?", id);

	}
	
	
}
