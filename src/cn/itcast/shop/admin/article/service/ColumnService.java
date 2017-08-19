package cn.itcast.shop.admin.article.service;


import java.util.List;

import org.springframework.stereotype.Service;

import cn.itcast.shop.admin.BaseService;

@Service
public class ColumnService extends BaseService{

	
	public List queryRoot() {
		
		return getHibernateTemplate().find("from Column where parent is null");

	}
	
}
