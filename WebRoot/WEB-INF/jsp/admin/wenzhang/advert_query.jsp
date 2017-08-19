<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="${pageContext.request.contextPath}/css/Style1.css" rel="stylesheet" type="text/css" />
		
		
		<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
		<script language="javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
		<script type="text/javascript">
			function addCategory(){
				window.location.href = "${pageContext.request.contextPath}/admin/category/add.jsp";
			}
		</script>
	</HEAD>
	<body>
		<br>
		
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
				<TBODY>
				<tr>
						<td class="ta_01" align="left" bgColor="#afd1f3">
							<button type="button" id="add" name="add" value="添加" class="button_add"
							 onclick="window.location.href='${pageContext.request.contextPath}/admin/article/advert_add.action?action=index'">
&#28155;&#21152;
						</td>

					</tr>
					<tr>
					<td>
					<form action="${pageContext.request.contextPath}/admin/article/advert_query.action" method="post">
					<table><tr><td class="ta_01" align="center" bgColor="#afd1f3">
							开始时间:<input value="<fmt:formatDate value="${baseFilter.startDate}" pattern="yyyy-MM-dd"/>" type="text" name="startDate">
						</td>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							结束时间:<input value="<fmt:formatDate value="${baseFilter.endDate}" pattern="yyyy-MM-dd"/>" type="text" name="endDate">
						</td>
						
						<td class="ta_01" align="center" bgColor="#afd1f3">
						广告位
						<select name="adsense.id"> 
						<option value="">-无-</option> 
						<c:forEach var="item"   items="${adsenses}"   >
						<option value="${item.id}" <c:if test="${baseFilter.adsense.id==item.id}">checked="checked" </c:if>>${item.query}</option> 
						
						</c:forEach>
						</select> 
						</td>
						
						<td class="ta_01" align="center" bgColor="#afd1f3">
							广告类型
						<select name="advertType.id"> 
						<option value="">-无-</option> 
						<c:forEach var="item"   items="${advertTypes}"   >
						<option value="${item.id}" <c:if test="${baseFilter.advertType.id==item.id}">selected="selected" </c:if>>${item.name}</option> 
						</c:forEach>
						</select> 
						</td>
						
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<input type="text" name="name" value="${baseFilter.name}">
						</td>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<input type="submit" >
						</td>
						</tr></table>
						</form>
						</td>
						
					</tr>
					<tr>
						<td class="ta_01" align="right">
							
</button>

						</td>
					</tr>
					<tr>
						<td class="ta_01" align="center" bgColor="#f5fafe">
							<table cellspacing="0" cellpadding="1" rules="all"
								bordercolor="gray" border="1" id="DataGrid1"
								style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
								<tr
									style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

									<td align="center">
										<input class="all_check"  type="checkbox" onchange="setAllSelect($(this).attr('checked'))">					
									</td>
									<td align="center">
										ID							
									</td>
									<td align="center" >
										名称
									</td>
									<td width="7%" align="center">
										广告链接
									</td>
									<td width="7%" align="center">
										广告类型
									</td>
									<td width="7%" align="center">
										广告位
									</td>
									<td width="7%" align="center">有效时间</td>
									<td  align="center">
										排序
									</td>
									<td align="center">
										状态
									</td>
									
									<td align="center">
										管理操作序号
									</td>
									
								</tr>
				<tbody id="content">				
			<c:forEach var="item"   items="${page.list}"   >

                              <tr data-id="${item.id}" onmouseover="this.style.backgroundColor = 'white'"
														onmouseout="this.style.backgroundColor = '#F5FAFE';">
														<td align="center">
										<input data-id="${item.id}" onchange="onItemChange()" class="select item_check" type="checkbox">					
									</td>
														<td style="CURSOR: hand; HEIGHT: 22px" align="center"
															width="18%">
															${item.id}
														</td>
														<td style="CURSOR: hand; HEIGHT: 22px" align="center"
															width="17%">
															${item.name}
														</td>
														<td align="center" style="HEIGHT: 22px">
															${item.link}
														</td>
												
												<td align="center" style="HEIGHT: 22px">
															${item.advertType.name}
												</td>
														<td align="center" style="HEIGHT: 22px">
															 ${item.adsense.name}
														</td>
														<td align="center" style="HEIGHT: 22px">
															<fmt:formatDate value="${item.startDate}" pattern="yyyy-MM-dd"/>/
															<fmt:formatDate value="${item.endDate}" pattern="yyyy-MM-dd"/>
														</td>
														<td align="center" style="HEIGHT: 22px">
															${item.sort}
														</td>
														<td align="center" style="HEIGHT: 22px">
															${item.active}
														</td>
														<td align="center" style="HEIGHT: 22px">
																<a href="javascript:mdel('${item.id}')">删除</a><a href="javascript:onEdit('${item.id}')">编辑</a>
														</td>
													</tr>
                  </c:forEach>
                  </tbody>
									
							</table>
						</td>
					</tr>
					
					
					
					
					<tr>
					<td>
					<table>
					<tr>
					<td><input class="all_check"  type="checkbox" onchange="setAllSelect($(this).attr('checked'))"><a onclick="onDelete()">删除</a></td>
					<td>共${page.totalCount}条</td>
					<td>
					
					第${page.page}/${page.totalPage}页 
					<c:if test="${page.page != 1}">
						<a href="${ pageContext.request.contextPath }/admin/article/article_query.action?page=1">首页</a>|
						<a href="${ pageContext.request.contextPath }/admin/article/article_query.action?page=${page.page-1}">上一页</a>|
					</c:if>
							
							
					<c:if test="${page.page < page.totalPage}">
								<a href="${ pageContext.request.contextPath }/admin/article/article_query.action?page=${page.page+1}">下一页</a>|
								<a href="${ pageContext.request.contextPath }/admin/article/article_query.action?page=${page.totalPage}">尾页</a>|
					</c:if>
							
							</td>
					</tr>
					
					
					</table>
					
					<td>
					
					</tr>
					
				</TBODY>
			</table>
	</body>
	
	<script type="text/javascript">
	function setAllSelect(v){
	if(!v)v=false;
		$(".all_check").attr('checked',v);
		$(".item_check").attr('checked',v);
	}
	
	
	function onItemChange(){
	var h = true;
	$(".item_check").each(function(index,element){
	console.log(element);
		if(!$(element).attr('checked')){
		h=false;
		return;
		}
	
	
	});
	
	if(!h)$(".all_check").attr('checked',false);
	
	
	}
	

	
	function onDelete(){
	var ids = App.getSelected();
	if(!ids)return; 
	App.del("${pageContext.request.contextPath}/admin/article/advert_delete.action",ids);
	
	}
	
	function mdel(id){
		App.del("${pageContext.request.contextPath}/admin/article/advert_delete.action",[id]);
	}
			
			
	function onEdit(id){
	getRequest("${pageContext.request.contextPath}/admin/article/advert_update.action",{action:"index",id:id});
	
	
	}
	
	
	</script>
</HTML>

