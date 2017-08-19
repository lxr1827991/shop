package cn.itcast.shop.admin.article.entity;

import java.io.File;
import java.util.Arrays;
import java.util.Set;


/**
 * 栏目
 * @author Administrator
 *
 */
public class Column {
	
	Integer id;
	
	Column parent;
	
	Set<Column> childs;
	
	String colName;
	
	
	
	ColumnType type;
	
	String image;
	
	Integer sort;
	
	Boolean active;
	
	
	Set<Article> articles;
	
	
	File[] img;
	String[] imgFileName;
	String[] imContentType;
	
	
	
	

	public Set<Article> getArticles() {
		return articles;
	}



	public void setArticles(Set<Article> articles) {
		this.articles = articles;
	}



	public Integer getId() {
		return id;
	}



	public Column getParent() {
		return parent;
	}



	public void setParent(Column parent) {
		this.parent = parent;
	}

	
	


	public Set<Column> getChilds() {
		return childs;
	}



	public void setChilds(Set<Column> childs) {
		this.childs = childs;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public String getColName() {
		return colName;
	}



	public void setColName(String colName) {
		this.colName = colName;
	}



	public ColumnType getType() {
		return type;
	}



	public void setType(ColumnType type) {
		this.type = type;
	}



	public String getImage() {
		return image;
	}



	public void setImage(String image) {
		this.image = image;
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



	

	
	
	
	
	@Override
	public String toString() {
		return "Column [id=" + id + ", parent=" + parent + ", childs=" + childs
				+ ", colName=" + colName + ", type=" + type + ", image="
				+ image + ", sort=" + sort + ", active=" + active;
	}



	public File[] getImg() {
		return img;
	}
	public void setImg(File[] img) {
		this.img = img;
	}
	public String[] getImgFileName() {
		return imgFileName;
	}
	public void setImgFileName(String[] imgFileName) {
		this.imgFileName = imgFileName;
	}
	public String[] getImContentType() {
		return imContentType;
	}
	public void setImContentType(String[] imContentType) {
		this.imContentType = imContentType;
	}
	

	
	
}
