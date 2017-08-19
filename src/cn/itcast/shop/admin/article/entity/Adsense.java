package cn.itcast.shop.admin.article.entity;

import java.util.Set;

/**
 * 广告位
 * @author Administrator
 *
 */
public class Adsense {

	Integer id;
	
	String name;
	
	Integer width;
	
	Integer height;
	
	String illustrate;
	
	Boolean active;
	
	Set<Advert> adverts;
	
	

	public Set<Advert> getAdverts() {
		return adverts;
	}

	public void setAdverts(Set<Advert> adverts) {
		this.adverts = adverts;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getWidth() {
		return width;
	}

	public void setWidth(Integer width) {
		this.width = width;
	}

	public Integer getHeight() {
		return height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}

	public String getIllustrate() {
		return illustrate;
	}

	public void setIllustrate(String describe) {
		this.illustrate = describe;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	@Override
	public String toString() {
		return "Adsense [id=" + id + ", name=" + name + ", width=" + width
				+ ", height=" + height + ", describe=" + illustrate + ", active="
				+ active + "]";
	}
	
	
	
}
