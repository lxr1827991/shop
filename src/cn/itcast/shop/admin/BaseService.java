package cn.itcast.shop.admin;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Service;

import com.lxr.framework.BaseFilter;

import cn.itcast.shop.admin.article.service.ColumnService;
import cn.itcast.shop.utils.PageBean2;




public class BaseService {

	@Autowired
	SessionFactory sessionFactory;
	
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	public Session getSession() {
		return this.sessionFactory.openSession();
	}

	public HibernateTemplate getHibernateTemplate() {
		return new HibernateTemplate(sessionFactory);
	}

	
	public PageBean2 queryPage(BaseFilter filter) {
		Session session =  this.getSession();
		try {
			return onQueryPage(session, filter);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}finally{
			if(session!=null)session.close();
			
		}

	}
	
	public PageBean2 onQueryPage(Session session,BaseFilter baseFilter) {
		
		return null;

	}
	
	

	
	public Object getUniqueResult(String hql,Object...objects) {
		List list = getHibernateTemplate().find(hql,objects);

		if(list != null && list.size()>0){
			return list.get(0);
		}
		
		
		return null;
	}
	
	
	
	public void delete(Object object) {
		
		
		getHibernateTemplate().delete(object);
		
	}
	
	
	public void delete(Collection objects) {
		getHibernateTemplate().deleteAll(objects);
	}
	
	
	public void update(Object object){
		
		getHibernateTemplate().update(object);
	}	
	
	
	public void update(Object object,String entityName) {
		getHibernateTemplate().update(entityName,object);

	}
	
	public void update(String hql,Object... param) {
		Session session = getSession();
		Query query = session.createQuery(hql);
		for (int i = 0; i < param.length; i++) {
			query.setParameter(i, param[i]);
		}
		query.executeUpdate();

	}
	
	public void update(String hql,Map<String, Object> map) {
		Session session = getSession();
		Query query = session.createQuery(hql);
		
		Iterator<String> it = map.keySet().iterator();
		
		while(it.hasNext()){
			query.setParameter(it.next(), map.get(it.next()));
		}
		query.executeUpdate();

	}
	
	
	public void save(Object object) {
		getHibernateTemplate().save(object);

	}
	
	
	public List query(Class entityCls) {
		

		return getHibernateTemplate().find("from "+entityCls.getSimpleName());
	}
	
	
	
	
	public List query(String hql) {
		

		return getHibernateTemplate().find(hql);
	}
	
	
	public Object queryById(Class cls,Serializable en) {
		
		Session session = getSession();
		try {
			return session.get(cls,  en);
		} catch (RuntimeException e) {
			throw e;
		}finally{
			if(session!=null)session.close();
			
		}
		
	}
	
	

	
}
