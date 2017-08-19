package cn.itcast.shop.user.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.shop.user.vo.User;
import cn.itcast.shop.utils.PageBean;
import cn.itcast.shop.utils.PageHibernateCallback;

/**
 * 用户模块持久层代码:
 * 
 * @author zgh
 * 
 */
public class UserDao extends HibernateDaoSupport {

	// 按名次查询是否有该用户:
	public User findByUsername(String username) {
		String hql = "from User where username = ?";
		List<User> list = this.getHibernateTemplate().find(hql, username);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	// 注册用户存入数据库代码实现
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}

	// 根据激活码查询用户
	public User findByCode(String code) {
		String hql = "from User where code = ?";
		List<User> list = this.getHibernateTemplate().find(hql, code);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
   //根据手机查询用户信息
	public User findByPhone(String phone){
		String hql = "from User where phone = ?";
		List<User> list = this.getHibernateTemplate().find(hql,phone);
		if(list != null && list.size()>0){
		return list.get(0);
		}
		return null;
	}
	// 修改用户状态的方法
	public void update(User existUser) {
		this.getHibernateTemplate().update(existUser);
	}

	// 用户登录的方法
	public User login(User user) {
		String hql = "from User where username = ? and password = ? and state = ?";
		List<User> list = this.getHibernateTemplate().find(hql,
				user.getUsername(), user.getPassword(), 1);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	public int findCount() {
		String hql = "select count(*) from User";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<User> findByPage(int begin, int limit) {
		String hql = "from User";
		List<User> list = this.getHibernateTemplate().execute(
				new PageHibernateCallback<User>(hql, null, begin, limit));
		return list;
	}
	public PageBean getSearch(String key,final int user,final int page,final int limit){
		
		return null;
		}

	public User findByUid(Integer uid) {
		return this.getHibernateTemplate().get(User.class, uid);
	}

	public void delete(User existUser) {
		this.getHibernateTemplate().delete(existUser);
	}
	//查询
/*	public void Criteria()
	{
		Session session = sessionFactory.getCurrentSession();
		Taransaction tx = session.beginTransaction();
		try
		{
			Criteria cr= session.createCriteria(User.class);
			//查询条件
			 cr.add(Restrictions.gt(arg0,arg));
			 cr.add(Restrictions.lt(arg0,arg));
			List<User> user = cr.list();
			Iterator it = user.iterator();
			while(it.hasNext())
			{
				User u=(User)it.next();
			}
			tx.commit();
		}
		catch(Exception ex)
		{
			
		}
	}*/
	//模糊查询
	public List findBymohu(String name, String address, int depart,int userinfo) {
		Session s = getSession();
		Transaction tx = s.beginTransaction();
		String Hql = "from User as u where 1=1 ";
		if (name != null) {
		Hql += " and u.name like '%" + name + "%'";
		}
		if (address != null) {
		Hql += " and u.address='%" + address + "%'";
		}
		if (depart != 0) {
		Hql += " and u.department.did= " + depart;
		}
		if (userinfo != 0) {
		Hql += " and u.userinfo.uid= " + userinfo;
		}
		Hql += " order by u.uid desc";
		System.out.println(" nnnnnnnnn");
		List list = s.createQuery(Hql).list();
		System.out.println(" cccccccc");
		tx.commit();
		s.flush();
		s.close();
		return list;
		}
}
