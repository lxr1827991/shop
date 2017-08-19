package cn.itcast.shop.admin.article.action;


import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.mapper.ActionMapping;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.shop.admin.BaseAction;
import cn.itcast.shop.admin.article.entity.Article;
import cn.itcast.shop.admin.article.entity.Column;
import cn.itcast.shop.admin.article.service.ArticleService;
import cn.itcast.shop.admin.article.service.ColumnService;
import cn.itcast.shop.utils.PageBean2;


import com.lxr.framework.BaseFilter;
import com.lxr.framework.struts.JsonResult;
import com.lxr.framework.utils.AjaxUtil;
import com.lxr.framework.utils.FileUtils;

/**
 * 文章
 * @author Administrator
 *
 */
public class ArticleAction extends BaseAction{

	
	@Autowired
	public ArticleService articleService;
	
	@Autowired
	ColumnService columnService;
	
	Article article = new Article();
	
	
	
	
	
	PageBean2<Article> pageBean;
	
	public String query() {
		pageBean = articleService.articleForPage((ArticleFilter)baseFilter);
		
		putModel("page", pageBean);
		putModel("column", columnService.query(Column.class));
		
		return INDEX;
	}


	
	public String update() {
		if(isIndex()){
			putModel("article", articleService.queryById(Article.class, article.getId()));
			putModel("columns", columnService.query(Column.class));
			return EDIT;
		}
		
		
		
		article.setCtime(new Date());
		if(article.getColumn().getId()==null)article.setColumn(null);
		
		
		if(article.getImg()!=null&&article.getImg().length>0){
			String path = FileUtils.upload(article.getImg()[0],  article.getImgFileName()[0]);
				
			article.setImage(path);
			
		}
		
		
		articleService.update(this.article);
		
		
		return SUCCESS;
	}


	
	public String add() {
		if(isIndex()){
			
			putModel("column", columnService.query(Column.class));
			return EDIT;
		}
		
		String g =  getParameter("goback");
		
		article.setCtime(new Date());
		if(article.getColumn().getId()==null)article.setColumn(null);
		
		
		if(article.getImg()!=null&&article.getImg().length>0){
			String path = FileUtils.upload(article.getImg()[0],  article.getImgFileName()[0]);
				
			article.setImage(path);
			
		}
		
		
		articleService.save(this.article);
		
		return SUCCESS;
	}



	public Object getModel() {
		
		ActionMapping mapping = ServletActionContext.getActionMapping();
	
		if(mapping.getName().endsWith("_query")||mapping.getName().endsWith("_delete")||mapping.getName().endsWith("_upload"))
			return baseFilter = new ArticleFilter();
		
		
		return article;
	}

	
	
	public void upload() {
		
		ArticleFilter filter = (ArticleFilter)baseFilter;
		try {
			if(filter.getImgFile()!=null&&filter.getImgFile().length>0){
				String path = FileUtils.upload(filter.getImgFile()[0],  filter.getImgFileFileName()[0]);
				JSONObject result = new JSONObject();
				result.put("error", 0);
				result.put("url", ServletActionContext.getServletContext().getContextPath()+"/"+path);
				AjaxUtil.stringResponse(ServletActionContext.getResponse(), result.toString());
				
			}else {
				throw new RuntimeException("文件不存在");
			}
		} catch (Exception e) {
			JSONObject result = new JSONObject();
			result.put("error", 1);
			result.put("message" , "上传错误："+e.getMessage());
			AjaxUtil.stringResponse(ServletActionContext.getResponse(), result.toString());
		}
		
	}
	
	
	@Override
	public Class getEntityClass() {
		
		return Article.class;
	}

	


	public class ArticleFilter extends BaseFilter{
		
		File[] imgFile;
		
		String[] imgFileFileName;
		
		
		Column column;

		public Column getColumn() {
			return column;
		}

		public void setColumn(Column column) {
			this.column = column;
		}

		public File[] getImgFile() {
			return imgFile;
		}

		public void setImgFile(File[] imgFile) {
			this.imgFile = imgFile;
		}

		public String[] getImgFileFileName() {
			return imgFileFileName;
		}

		public void setImgFileFileName(String[] imgFileFileName) {
			this.imgFileFileName = imgFileFileName;
		}
	

	}
	
	
}
