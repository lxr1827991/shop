package cn.itcast.shop.admin.article.action;

import java.util.Date;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.mapper.ActionMapping;
import org.springframework.beans.factory.annotation.Autowired;

import com.lxr.framework.BaseFilter;

import cn.itcast.shop.admin.BaseAction;
import cn.itcast.shop.admin.article.entity.Adsense;
import cn.itcast.shop.admin.article.entity.Advert;
import cn.itcast.shop.admin.article.entity.AdvertType;
import cn.itcast.shop.admin.article.entity.LinkType;
import cn.itcast.shop.admin.article.service.AdvertService;



/**
 * 广告
 * @author Administrator
 *
 */
public class AdvertAction extends BaseAction{

	@Autowired
	AdvertService advertService;
	
	Advert advert = new Advert();
	
	
	AdvertFilter filter = new AdvertFilter();
	
	public String query() {
		
		putModel("page", advertService.queryForPage(filter));
		
		putModel("advertTypes", advertService.query(AdvertType.class));
		
		putModel("adsense",  advertService.query(Adsense.class));
		
		
		return INDEX;

	}
	
	
	public String update() {
		if(isIndex()){
			putModel("advertTypes", advertService.query(AdvertType.class));
			
			putModel("adsenses",  advertService.query(Adsense.class));
			
			putModel("advert", commonService.queryById(getEntityClass(), advert.getId()));
			return EDIT;
		}
		
		if(advert.getAdsense()!=null&&advert.getAdsense().getId()==null)advert.setAdsense(null);
		if(advert.getAdvertType()!=null&&advert.getAdvertType().getId()==null)advert.setAdvertType(null);
		
		commonService.update(this.advert);
		return SUCCESS;
	}
	
	
	
	public String add() {
		if(isIndex()){
	putModel("adsenses",  advertService.query(Adsense.class));
	
	putModel("advertTypes", advertService.query(AdvertType.class));
			return EDIT;
			
		}
		
		
		if(advert.getAdsense()!=null&&advert.getAdsense().getId()==null)advert.setAdsense(null);
		if(advert.getAdvertType()!=null&&advert.getAdvertType().getId()==null)advert.setAdvertType(null);
		
		advertService.save(advert);
		
		return SUCCESS;
	}
	
	
	
	
	
	public Object getModel() {
		ActionMapping mapping = ServletActionContext.getActionMapping();
		if(mapping.getName().endsWith("_query")||mapping.getName().endsWith("_delete")){
			return baseFilter = filter;
			
		}
		
		
		return advert;
	}
	
	@Override
	public Class getEntityClass() {
		
		return Advert.class;
	}
	
	
	public class AdvertFilter extends BaseFilter{
		
		
		Adsense adsense;
		
		AdvertType advertType;

		
		
		

		public Adsense getAdsense() {
			return adsense;
		}

		public void setAdsense(Adsense adsense) {
			this.adsense = adsense;
		}

		public AdvertType getAdvertType() {
			return advertType;
		}

		public void setAdvertType(AdvertType advertType) {
			this.advertType = advertType;
		}
		
		
		
	}

}
