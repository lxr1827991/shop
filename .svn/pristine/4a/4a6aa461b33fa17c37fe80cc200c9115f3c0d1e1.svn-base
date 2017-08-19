package cn.itcast.shop.category.vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import cn.itcast.shop.categorysecond.vo.CategorySecond;

/**
 * 一级分类的实体类对象
 * @author zgh
 *
 */
public class Category implements Serializable{
	private Integer cid;
	private String cname;
	private String wapimage;
	public String getWapimage() {
		return wapimage;
	}
	public void setWapimage(String wapimage) {
		this.wapimage = wapimage;
	}
	public String getWapsmallicons() {
		return wapsmallicons;
	}
	public void setWapsmallicons(String wapsmallicons) {
		this.wapsmallicons = wapsmallicons;
	}
	public String getPcimage() {
		return pcimage;
	}
	public void setPcimage(String pcimage) {
		this.pcimage = pcimage;
	}
	public String getPcsmallicons() {
		return pcsmallicons;
	}
	public void setPcsmallicons(String pcsmallicons) {
		this.pcsmallicons = pcsmallicons;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDisplays() {
		return displays;
	}
	public void setDisplays(String displays) {
		this.displays = displays;
	}
	private String wapsmallicons;
	private String pcimage;
	private String pcsmallicons;
	private String state;
	private String displays;
	
	// 一级分类中存放二级分类的集合:
	private Set<CategorySecond> categorySeconds = new HashSet<CategorySecond>();
	
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Set<CategorySecond> getCategorySeconds() {
		return categorySeconds;
	}
	public void setCategorySeconds(Set<CategorySecond> categorySeconds) {
		this.categorySeconds = categorySeconds;
	}
	
}
