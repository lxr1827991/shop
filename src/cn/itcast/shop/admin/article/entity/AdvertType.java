package cn.itcast.shop.admin.article.entity;


/**
 * 广告类型
 * @author Administrator
 *
 */
public class AdvertType {

	Integer id;
	
	String name;


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


	@Override
	public String toString() {
		return "AdvertType [id=" + id + ", name=" + name + "]";
	}


	
	
	
}
