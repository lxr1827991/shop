<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<link href="${pageContext.request.contextPath}/css/left.css" rel="stylesheet" type="text/css"/>
<link rel="StyleSheet" href="${pageContext.request.contextPath}/css/dtree.css" type="text/css" />
</head>
<body>
<table width="100" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="12"></td>
  </tr>
</table>
<table width="100%" border="0">
  <tr>
    <td>
<div class="dtree">

	<a href="javascript: d.openAll();">展开所有</a> | <a href="javascript: d.closeAll();">关闭所有</a>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dtree.js"></script>
	<script type="text/javascript">
		
		d = new dTree('d');
		d.add('01',-1,'系统菜单树');
		
		d.add('001001','01','文章管理','','','mainFrame');
		d.add('001002','01','全局管理','','','mainFrame');
		
		d.add('002001','001001','文章管理','','','mainFrame');
		d.add('002002','001001','广告管理','','','mainFrame');
		d.add('002003','001001','友情链接','','','mainFrame');
		
		d.add('002004','001002','核心设置','','','mainFrame');
		
		d.add('003001','002001','文章管理','${pageContext.request.contextPath}/admin/article/article_query.action?page=1','','mainFrame');
		d.add('003002','002001','栏目管理','${pageContext.request.contextPath}/admin/article/column_query.action','','mainFrame');
		
		d.add('003003','002002','广告管理','${pageContext.request.contextPath}/admin/article/advert_query.action?page=1','','mainFrame');
		d.add('003004','002002','广告位管理','${pageContext.request.contextPath}/admin/article/adsense_query.action','','mainFrame');
		
		d.add('003005','002003','友情链接','${pageContext.request.contextPath}/admin/article/link_query.action?page=1','','mainFrame');
		d.add('003006','002003','链接分类','${pageContext.request.contextPath}/admin/article/linkType_query.action','','mainFrame');
		
		d.add('003007','002004','区域管理','${pageContext.request.contextPath}/admin/whole/area_query.action','','mainFrame');
		
		
		
		d.add('0104','01','商品管理');
		d.add('010401','0104','分类列表','${pageContext.request.contextPath}/admin/product/classifylist.jsp','','mainFrame');
		d.add('010402','0104','添加商品','${pageContext.request.contextPath}/admin/product/add.jsp','','mainFrame');
		d.add('010403','0104','品牌管理','${pageContext.request.contextPath}/admin/product/brandlist.jsp','','mainFrame');
		d.add('010404','0104','商品列表','${pageContext.request.contextPath}/adminProduct_findAll.action?page=1','','mainFrame');
		d.add('0105','01','订单管理');
		d.add('010501','0105','订单列表','${pageContext.request.contextPath}/adminOrder_findAll.action?page=1','','mainFrame');
		d.add('010502','0105','评论管理','${pageContext.request.contextPath}/adminOrder_findAll.action?page=1','','mainFrame');
		
		d.add('0106','01','会员管理');
		d.add('010601','0106','会员列表','${pageContext.request.contextPath}/userAdmin_findAll.action?page=1','','mainFrame');
		
		document.write(d);
		//-->
	</script>
</div>	</td>
  </tr>
</table>
</body>
</html>
