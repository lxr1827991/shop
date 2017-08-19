package cn.itcast.shop.admin.whole.entity;

public class Area {

	Integer id;
	
	String name;
	
	String pinyin;
	
	//经度
	Double lng;
	
	//纬度
	Double lat;
	
	Integer sort;
	
	Boolean active;
	
	Area parent;
	
	
	
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
	
	
	public String getPinyin() {
		return pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}

	public Double getLng() {
		return lng;
	}

	public void setLng(Double lng) {
		this.lng = lng;
	}

	public Double getLat() {
		return lat;
	}

	public void setLat(Double lat) {
		this.lat = lat;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	public Area getParent() {
		return parent;
	}

	public void setParent(Area parent) {
		this.parent = parent;
	}

	@Override
	public String toString() {
		return "Area [id=" + id + ", name=" + name + ", sort=" + sort
				+ ", active=" + active + ", parent=" + parent + "]";
	}
	
	
	
	
}
