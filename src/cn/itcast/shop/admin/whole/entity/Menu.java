package cn.itcast.shop.admin.whole.entity;

public class Menu {

	
	Integer id;
	
	String name;
	
	Integer sort;
	
	Menu parent;
	
	Boolean active;

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

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public Menu getParent() {
		return parent;
	}

	public void setParent(Menu parent) {
		this.parent = parent;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(!(obj instanceof Menu))return false;
		
		Menu menu = ((Menu)obj);
		
		if(menu.getId()==null||getId()==null)return false;
		
		if(menu.getId().equals(getId()))
			return true;
		
		return super.equals(obj);
	}
	
	
	
	
}
