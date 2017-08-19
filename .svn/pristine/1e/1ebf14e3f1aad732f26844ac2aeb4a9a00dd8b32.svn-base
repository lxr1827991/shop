package cn.itcast.shop.categorysecond.vo;

import java.util.HashSet;
import java.util.Set;

import cn.itcast.shop.category.vo.Category;
import cn.itcast.shop.product.vo.Product;

/**
 * 二级分类的实体
 * @author zgh
 *
 */

public class CategorySecond {
	private Integer csid;
	private String csname;
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
	// 所属一级分类.存的是一级分类的对象.
	private Category category;
	// 配置商品集合
	private Set<Product> products = new HashSet<Product>();
	public Integer getCsid() {
		return csid;
	}
	public void setCsid(Integer csid) {
		this.csid = csid;
	}
	public String getCsname() {
		return csname;
	}
	public void setCsname(String csname) {
		this.csname = csname;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	
}
