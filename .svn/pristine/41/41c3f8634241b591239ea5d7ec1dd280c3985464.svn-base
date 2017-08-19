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
		<script language="javascript" src="${pageContext.request.contextPath}/js/template-web.js"></script>
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
							 onclick="window.location.href='${pageContext.request.contextPath}/admin/whole/area_add.action?action=index'">
&#28155;&#21152;
						</td>

					</tr>
					<tr>
					<td>
					
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
										栏目名称
									</td>
									
									<td width="7%" align="center">
										排序
									</td>
									<td width="7%" align="center">
										状态
									</td>
									
									
									<td width="7%" align="center">
										管理操作序号
									</td>
									
								</tr>
			<tbody id="content">
			<%-- <c:forEach var="item"   items="${columns}"   >

                              <tr data-id="${item.id}" onmouseover="this.style.backgroundColor = 'white'"
														onmouseout="this.style.backgroundColor = '#F5FAFE';">
														<td align="center">
										<input data-id="${item.id}" onchange="onItemChange()" class="select item_check" type="checkbox" >						
									</td>
														<td style="CURSOR: hand; HEIGHT: 22px" align="center"
															width="18%">
															${item.id}
														</td>
														<td style="CURSOR: hand; HEIGHT: 22px" align="center"
															width="17%">
															${item.colName}
														</td>
													
												
												<td align="center" style="HEIGHT: 22px">
															${item.type.name}
												</td>
														<td align="center" style="HEIGHT: 22px">
															 <img src="${pageContext.request.contextPath}/${item.image}"/>
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
                  </c:forEach> --%>
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
	var columns = ${areasJson};
	</script>
	
	<script type="text/javascript">
	$(function() {
	initData();
	
	
	append(null, getRoots());
		
	})
	
	
	
	
	function onTreeChange(node,v){
	if(v){
	
	var n = getById($(node).attr('data-id'));
	append(node,n.childs);
	
	}else{
removeNode(node);
	
	}
	
	
	
	
	}
	
	
	
	function removeNode(node) {
			var id = $(node).attr('data-id');
			var childs = getById(id).childs;
			$("#content>tr[data-parent='"+id+"']").remove();
			if(!childs)return;
			for ( var i = 0; i < childs.length; i++) {
			if(!childs[i].childs)removeNode($("#content>tr[data-id='"+childs[i].id+"']"));
	
			}
			
			
			
	}
	
	
	function initData() {
	var list = getRoots();
	
	for ( var i = 0; i < list.length; i++) {
	initChilds(list[i]);
	
	}
	
		
	} 
	
	
	
	function initChilds(p){
	var list = [];
	
	
	for ( var i = 0; i < columns.length; i++) {
		if(columns[i].parent&&columns[i].parent.id==p.id){
		
		list.push(columns[i]);
		columns[i].depth = p.depth+1;
		columns[i].depthStr = vStr(columns[i].depth);
		initChilds(columns[i]);
		}
		
	}
	if(list.length>0)
	p.childs = list;
	
	return list;
	
	}
	
	
	function getById(id) {
		for ( var i = 0; i < columns.length; i++) {
		if(columns[i].id==id)
		return columns[i];
		
	}
	}
	
	

	
	
	
	function getRoots(){
	var list = [];
	
	for ( var i = 0; i < columns.length; i++) {
		if(!columns[i].parent){
		list.push(columns[i]);
		columns[i].depth = 0;
		columns[i].depthStr = vStr(0);
		}
		
	}
	return list;
	}
	
	
	
	

	
	
	
	
	function append(curr,list){
	 var item =  $(template('item',{list:list}));
	 if(curr)curr.after(item);
	 else $("#content").append(item);
	 
	}
	
	
	
	
	
	
	
	function vStr(n){
		if(n<1)return "";  
		    var str = " └─";
		    for ( var int = 1; int < n; int++) {
				str="&nbsp"+str;
			}
		      
		    return str;  
		}
	
	
	
</script>
	
	
	
	
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
	App.del("${pageContext.request.contextPath}/admin/article/area_delete.action",ids);
	
	}
	
	
	function onEdit(id){
		getRequest("${pageContext.request.contextPath}/admin/article/area_update.action",{action:"index",id:id});
	}
	
	function mdel(id){
		App.del("${pageContext.request.contextPath}/admin/article/area_delete.action",[id]);
	}
			
	function onAdd(parent){
	getRequest("${pageContext.request.contextPath}/admin/article/area_add.action",{action:"index",parent:parent});
	
	}
	
	</script>
	
	
		
	<script id="item" type="text/html">

{{ each list as val i }}
<tr data-id="{{val.id}}" {{if val.parent}} data-parent="{{val.parent.id}}"{{/if}} onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
														<td align="center">
										<input data-id="{{val.id}}" onchange="onItemChange()" class="select item_check" type="checkbox">						
									</td>
														<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="18%">
															{{val.depthStr}}
															{{if val.childs}}<input onchange="onTreeChange($(this).parent().parent(),this.checked)" class="select" type="checkbox">{{/if}}
															{{val.id}}
														</td>
														<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="17%">
															{{val.name}}
														</td>
														
														<td align="center" style="HEIGHT: 22px">
															{{val.sort}}
														</td>
														<td align="center" style="HEIGHT: 22px">
															{{val.active}}
														</td>
														<td align="center" style="HEIGHT: 22px">
															<a href="javascript:onAdd('{{val.id}}')">添加子节点</a> <a href="javascript:mdel('{{val.id}}')">删除</a>  <a href="javascript:onEdit('{{val.id}}')">编辑</a>
														</td>
													</tr>
		
	
		{{ /each }}
	</script>
</HTML>

