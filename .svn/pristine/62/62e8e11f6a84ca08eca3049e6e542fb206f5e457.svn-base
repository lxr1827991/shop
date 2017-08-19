package cn.itcast.shop.utils;

import java.util.List;

import cn.itcast.shop.user.vo.User;

/**
 * 分页类的封装
 * @author zgh
 *
 */
public class PageBean<T> {
	private int page;	// 当前页数
	private int totalCount; // 总记录数
	private int totalPage; // 总页数
	private int limit;	// 每页显示的记录数
	private List<T> list; // 每页显示数据的集合.
	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(page==0)
		this.page = 1;
		else
			this.page = 1;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return (totalCount + limit-1)/limit;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public int getTopPageNo()
	{
	   return 1;
	}

	/**
	* 取得上一页
	* @return
	*/
	public int getPreviousPageNo()
	{
	   if (page <= 1)
	   {
	    return 1;
	   }
	   return page - 1;
	}

	/**
	* 取得下一页
	* @return
	*/
	public int getNextPageNo()
	{
	   if (page >= getTotalPage())
	   {
	    return getTotalPage() == 0 ? 1 : getTotalPage();
	   }
	   return page + 1;
	}

	/**
	* 取得最后一页
	* @return
	*/
	public int getBottomPageNo()
	{
	   return getTotalPage() == 0 ? 1 : getTotalPage();
	}

	
}
