<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
							onclick="window.location.href='/shop/admin/article/link_add.action?action=index'">添加</button></td>

					</tr>
					<tr>
					<td>
									<form id="filter" action="/shop/admin/article/link_query.action" method="post">
									<table><tbody><tr>
									<td class="ta_01" align="center" bgcolor="#afd1f3">
												所属分类:
												<select name="linkType.id"> 
												<option value="">-无-</option> 
												<c:forEach var="item"   items="${linkTypes}"   >
												
												<option value="${item.id}"
												 <c:if test="${baseFilter.linkType.id==item.id}">selected="selected"</c:if> >${item.name}</option> 
												</c:forEach>
												</select> 
										</td>
										
										<td class="ta_01" align="center" bgcolor="#afd1f3">
											关键字<input type="text" name="name" value="${baseFilter.name}">
										</td>
										<td class="ta_01" align="center" bgcolor="#afd1f3">
											<input type="button" value="查询" onclick="this.disabled=true; $('#filter').submit()">
										</td>
										</tr></tbody></table>
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
										缩略图
									</td>
									<td width="7%" align="center">
									链接名称
									</td>
									<td width="7%" align="center">
										链接地址
									</td>
									<td width="7%" align="center">
											分类名称
									</td>
									
									<td width="7%" align="center">
											排序
									</td>
									
									<td width="7%" align="center">
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
															<img alt="" src="${pageContext.request.contextPath}/${item.image}">
														</td>
													
												
												<td align="center" style="HEIGHT: 22px">
															${item.name}
												</td>
													
														
														<td align="center" style="HEIGHT: 22px">
															${item.addr}
														</td>
														
														<td align="center" style="HEIGHT: 22px">
															${item.type.name}
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
					<td>
					
							
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
	App.del("${pageContext.request.contextPath}/admin/article/link_delete.action",ids);
	
	}
	
	function onEdit(id){
		getRequest("${pageContext.request.contextPath}/admin/article/link_update.action",{action:"index",id:id});
	}
	
	function mdel(id){
		App.del("${pageContext.request.contextPath}/admin/article/link_delete.action",[id]);
	}
			
	
	
	</script>
</HTML>

