<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<LINK href="${pageContext.request.contextPath}/css/Style1.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
		<script language="javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
		<script language="javascript" src="${pageContext.request.contextPath}/js/jquery.validate.messages.js"></script>
		<script charset="utf-8" src="${pageContext.request.contextPath}/js/kindeditor-all-min.js"></script>
		
		
	</HEAD>
	
	<body>
	<c:if test="${empty article}">
		<form id="editForm" name="Form1" action="${pageContext.request.contextPath}/admin/article/article_add.action" method="post" enctype="multipart/form-data">
			<input type="hidden" name="goback" />
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>添加文章</STRONG>
						</strong>
					</td>
				</tr>

				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					所属栏目 ：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<select name="column.id"> 
						<option value="">-无-</option> 
						<c:forEach var="item"   items="${column}"   >
						<option value="${item.id}">${item.colName}</option> 
						</c:forEach>
						</select> 
					</td>
				</tr>
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						文章标题：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="title" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						短标题：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="mtitle" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						作者 :
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="author" value="${article.author}" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						来源 :
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="source" value="${article.source}" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						图片 :：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="file" name="img" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						发布：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="checkbox"  checked="checked" onclick="$(this).next().val(this.checked+'')"  class="bg"/>
					
						<input type="hidden"  name="active" value="true"/>
					</td>
				</tr>
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						文章内容：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<textarea id="comment_data" name="doc"></textarea>
					</td>
				</tr>
			
				<tr>
					<td class="ta_01" style="WIDTH: 100%" align="center"
						bgColor="#f5fafe" colSpan="4">
						<button type="button" id="userAction_save_do_submit" value="确定"  onclick="onSubmit()" class="button_ok">
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
		
		<c:if test="${!empty article}">
		<form id="editForm" name="Form1" action="${pageContext.request.contextPath}/admin/article/article_update.action" method="post" enctype="multipart/form-data">
			&nbsp;
			<input type="hidden" name="goback" />
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>修改文章</STRONG>
						</strong>
					</td>
				</tr>

				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					所属栏目 ：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<select name="column.id"> 
						<option value="">-无-</option> 
						<c:forEach var="item"   items="${columns}"   >
						<option value="${item.id}">${item.colName}</option> 
						</c:forEach>
						</select> 
					</td>
				</tr>
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						文章标题：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="title" value="${article.title}" id="userAction_save_do_logonName" class="bg"/>
						<input type="hidden" name="id" value="${article.id}" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						短标题 :
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="mtitle" value="${article.mtitle}" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						作者 :
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="author" value="${article.author}" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						来源 :
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="source" value="${article.source}" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						图片 :
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="file" name="img" value="" id="userAction_save_do_logonName" class="bg"/>
						<c:if test="${article.image}"><input type="button" value="预览" onclick="window.location.href=${pageContext.request.contextPath}/${article.image}"> </c:if> 
					</td>
				</tr>
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						发布：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
					
					<c:if test="${!article.active}">
						<input type="checkbox" onclick="$(this).next().val(this.checked+'')" class="bg">
						<input type="hidden" name="active" value="false"></c:if> 
						
						<c:if test="${article.active}">
						<input type="checkbox" checked="checked" onclick="$(this).next().val(this.checked+'')" class="bg">
						<input type="hidden" name="active" value="true"></c:if> 
						
					</td>
				</tr>
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						是否发布：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<textarea id="comment_data" name="doc">${article.doc}</textarea>
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
	
	function onSubmit(){
	$("#comment_data").html(editor.html());
	var goback = $("#editForm input[name='goback']");
	if(goback.length>0)
	goback.val("${pageContext.request.contextPath}/admin/article/article_query.action");
	else $("#editForm").append('<input type="hidden" name="goback" value="${pageContext.request.contextPath}/admin/article/article_query.action"/>');
	
	$("#editForm").submit();
	}
	
$(document).ready(function () {
 var validateOpts = {
  rules: {
   title: {
    required: true
   },
   sort: {
    
    	digits:true
   }
  }
/*   ,
  messages: {
   name: {
    required: "hiik"
   },
   sort: {
    required: "请输入密码" 
   }
  } */
 };
 
 $("#editForm").validate(validateOpts);
});
	
	
	
	var editor;  
KindEditor.ready(function(K) { 
    editor = K.create('#comment_data', {  
        newlineTag : "br",   
        resizeType : 2,  
        uploadJson : '${pageContext.request.contextPath}/admin/article/article_upload.action',
        urlType: 'absolute',
        allowPreviewEmoticons : true,  
        allowImageUpload : true,  
        minHeight:"400px",  
        autoHeightMode : false,  
        afterCreate : function() {  
            this.loadPlugin('autoheight');  
        },  
        items : [  
            'fullscreen', 'source' , 'table',  
            'insertfile', 'link' , 'image' , 'emoticons' , '|' , 'forecolor', 'hilitecolor', 'bold' ,'underline', 'removeformat', '|' ,  
            'justifyleft', 'justifycenter', 'justifyright', 'preview']  
    });  
})
	
	
	
	</script>
</HTML>