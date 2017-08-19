<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<LINK href="${pageContext.request.contextPath}/css/Style1.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
		<script language="javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
		<script language="javascript" src="${pageContext.request.contextPath}/js/template-web.js"></script>
		
	</HEAD>
	
	<body>
	
		<c:if test="${empty column}">
		<form id="editForm" data-parent=""  name="Form1" action="${pageContext.request.contextPath}/admin/whole/area_add.action" method="post" enctype="multipart/form-data">
			&nbsp;
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>新增栏目</STRONG>
						</strong>
					</td>
				</tr>

				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
					上级栏目 ：<input type="hidden" name="parent.id">
					</td>
					<td id="columns"  class="ta_01" bgColor="#ffffff" colspan="3">
						<%-- <select name="column.id"> 
						<option value="">-无-</option> 
						<c:forEach var="item"   items="${column}"   >
						<option value="${item.id}">${item.colName}</option> 
						</c:forEach>
						</select>  --%>
					</td>
				</tr>
				
				<tr>
					<td  align="center" bgColor="#f5fafe" class="ta_01">
					名称：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="name" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				
				
				
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						全拼 :
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="pinyin" value=""  class="bg"/>
					
					</td>
				</tr>
				
				<tr>
					<td  align="center" bgColor="#f5fafe" class="ta_01">
					经纬度：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="lng" value="0" />
						<input type="text" name="lat" value="0" />
					</td>
				</tr>
				
				
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						是否启用：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="checkbox"  checked="checked" onclick="$(this).next().val(this.checked+'')"  class="bg"/>
					
						<input type="hidden"  name="active" value="true"/>
					
					</td>
				</tr>
				
			
				<tr>
					<td class="ta_01" style="WIDTH: 100%" align="center"
						bgColor="#f5fafe" colSpan="4">
						<button type="button" id="userAction_save_do_submit" onclick="onSubmit()" value="确定" class="button_ok">
							&#30830;&#23450;
						</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<button type="reset" value="重置" class="button_cancel">&#37325;&#32622;</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
						<span id="Label1"></span>
					</td>
				</tr>
			</table>
		</form>
		</c:if>
	
	<c:if test="${!empty column}">
		<form id="editForm" data-curr="${column.id}" data-parent="${column.parent.id}" name="Form1" action="${pageContext.request.contextPath}/admin/whole/area_update.action" method="post" enctype="multipart/form-data">
			&nbsp;
			<table cellSpacing="1" cellPadding="5" width="100%"  bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>编辑栏目</STRONG>
						</strong>
					</td>
				</tr>

				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
					上级栏目 ：
					<input type="hidden" name="id" value="${column.id}">
					<input type="hidden" name="parent.id">
					</td>
					<td id="columns" class="ta_01" bgColor="#ffffff" colspan="3">
						
					</td>
				</tr>
				
				<tr>
					<td  align="center" bgColor="#f5fafe" class="ta_01">
					栏目名称：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="colName" value="${column.colName}" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				
				<tr>
					<td  align="center" bgColor="#f5fafe" class="ta_01">
					排序树：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="colName" value="${column.sort}" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				
				
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						图片 :
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="file" name="img" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						是否启用：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
					<input name="active" type="checkbox" <c:if test="${column.active}">checked="checked"</c:if>  />
					</td>
				</tr>
				
			
				<tr>
					<td class="ta_01" style="WIDTH: 100%" align="center"
						bgColor="#f5fafe" colSpan="4">
						<button type="button" id="userAction_save_do_submit" value="确定" onclick="onSubmit()" class="button_ok">
							&#30830;&#23450;
						</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<button type="reset" value="重置" class="button_cancel">&#37325;&#32622;</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
						<span id="Label1"></span>
					</td>
				</tr>
			</table>
		</form>
		</c:if>
		
		
	</body>
	
	<script type="text/javascript">
	
	var columns = ${areasJson};
	
	
	</script>
	
	<script type="text/javascript">
	
	function onSubmit(){
	var select = $("#columns select:last");
	
	var val = select.val();
	
		if(!val)select = select.prev();
		
		if(select.length<1)	val = "";
		else val = select.val();
		
		
		$("#editForm input[name='parent.id']").val(val);
		
		$("#editForm").submit();
		
	}
	
	
	</script>
	
	<script type="text/javascript">
	var model = {};
	
	
		$(function(){
					var pid = $("#editForm").attr("data-parent");
					var currid = $("#editForm").attr("data-curr");
					model.curr = getById(currid);
					if(!pid)
					printStart({curr:model.curr,list:rootlist()});
					//判断新增
					if(!currid)return;
					
					
					
					
					var s = printStart(createNode(model.curr.parent));
					printDownSelect(s,model.curr.parent);
					
					var nc = model.curr.parent;
					while (true) {
						if(!nc.parent)break;
						
						printUpSelect(s,nc);
						nc = nc.parent;
						
					}
					
		});
		
		
		

		
		
		
		function printUpSelect(select,col){
		var node = createNode(col.parent);
		var s = $(template('select', node));
			select.before(s);
			return s;
		}
		
		function printDownSelect(select,col){
		var list = nexts(col);
		if(list.length<1)return;
		if(model.curr)
		for(var i in list){
		if(model.curr.id==list[i].id)delete list[i];
		
		}
		
		var node = {list:list};
		var s = $(template('select', node));
			select.after(s);
			return s;
			
		}
		
		
			/**
		{curr:{},list:[{},{}]}
		**/
		function printStart(node){
		var s = $(template('select', node));
		$('#columns').prepend(s);
		return s;
		
		}
		
		
		
		function onSelectCol(select){
		  select = $(select);
		 select.nextAll().remove();
		 
		 if(!select.val())return;
		 
		 
		 
		printDownSelect(select,getById(select.val()));
		
		}
		
		
		
		
		
	
		
		
		function createNode(col){
			var list = [];
		for ( var i in columns) {
			if(!col.parent&&!columns[i].parent){
			list.push(columns[i]);
			continue;
			}
			if(col.parent&&columns[i].parent&&col.parent.id==columns[i].parent.id)
			list.push(columns[i]);
			
			
			}
		
		var node={curr:col,list:list};
		return node;
		
		}
		
		//绘制当前
		function print(col){
		
		printStart(createNode(col));
			
		
		}
		
		
		
		
		function rootlist(){
		var list =[];
			for ( var i in columns) {
			if(!columns[i].parent)			
			list.push(columns[i]);
			}
			return list;
		}
		
		function nexts(col){
		var list =[];
			for ( var i in columns) {
			if(columns[i].parent&&col.id==columns[i].parent.id)			
			list.push(columns[i]);
			}
			return list;
		}
		
		function getById(id){
		for(var i=0;i<columns.length;i++){
			if(columns[i].id==id)
			return columns[i];
		}}
		
			
	
	</script>
	
	<script id="select" type="text/html">
			<select onchange="onSelectCol(this)"> 
						<option value="">-无-</option> 
						{{ each list as value i }}
				{{if value}}
						<option value="{{value.id}}"
						{{if curr&&value.id==curr.id}}selected = "selected" {{/if}}	
						
						>{{value.name}}--{{value.id}}</option>
				{{/if}}
						{{ /each }}
						
			</select> 
	
	</script>
</HTML>