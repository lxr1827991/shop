package com.lxr.framework.utils;

import cn.itcast.shop.utils.PageBean2;

public class PageUtils {

	
	public static void setTotalPage(PageBean2 page) {
		int n = 0;
		if((page.getTotalCount()%page.getLimit())>0)n =1;
		
        page.setTotalPage(page.getTotalCount()/page.getLimit()+n);
		// TODO Auto-generated method stub

	}
	
}
