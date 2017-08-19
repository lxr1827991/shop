<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<LINK href="${pageContext.request.contextPath}/css/Style1.css" type="text/css" rel="stylesheet">
		
		
		<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
		<script language="javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
		<script language="javascript" src="${pageContext.request.contextPath}/js/jquery.validate.messages.js"></script>
	</HEAD>
	
	<body>
	<c:if test="${empty advert}">
		<form id="editForm" name="Form1" action="${pageContext.request.contextPath}/admin/article/advert_add.action" method="post" enctype="multipart/form-data">
			&nbsp;
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>广告新增</STRONG>
						</strong>
					</td>
				</tr>
				
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						广告名称 :
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="name" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						广告链接：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input name="link" type="text" value="" />
					
					</td>
				</tr>
				

				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
					广告位 ：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<select name="adsense.id"> 
						<option value="">-无-</option> 
						<c:forEach var="item"   items="${adsenses}"   >
						<option value="${item.id}">${item.name}</option> 
						</c:forEach>
						</select> 
					</td>
				</tr>
				
				<tr>
					<td  align="center" bgColor="#f5fafe" class="ta_01">
					广告类型：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<select name="advertType.id"> 
						<option value="">-无-</option> 
						<c:forEach var="item"   items="${advertTypes}"   >
						<option value="${item.id}">${item.name}</option> 
						</c:forEach>
						</select>
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
						广告时间:
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="startDate" value="" class="bg"/>-
						<input type="text" name="endDate" value="" class="bg"/>
					</td>
				</tr>
				
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						是否启用：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="checkbox" checked="checked" onclick="$(this).next().val(this.checked+'')" class="bg">
						<input type="hidden" name="active" value="true">
					</td>
				</tr>
				
			
				<tr>
					<td class="ta_01" style="WIDTH: 100%" align="center"
						bgColor="#f5fafe" colSpan="4">
						<button type="button" onclick="onSubmit()"  value="确定" class="button_ok">
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
		
		<c:if test="${!empty advert}">
		<form id="editForm" name="Form1" action="${pageContext.request.contextPath}/admin/article/advert_update.action" method="post" enctype="multipart/form-data">
			<input type="hidden" name="id" value="${advert.id}">
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>广告新增</STRONG>
						</strong>
					</td>
				</tr>
				
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						广告名称 :
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="name" value="${advert.name}" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						广告链接：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input name="link" type="text" value="${advert.link}" />
					
					</td>
				</tr>
				

				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
					广告位 ：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<select name="adsense.id"> 
						<option value="">-无-</option> 
						<c:forEach var="item"   items="${adsenses}"   >
						<option value="${item.id}" >${item.name}</option> 
						</c:forEach>
						</select> 
					</td>
				</tr>
				
				<tr>
					<td  align="center" bgColor="#f5fafe" class="ta_01">
					广告类型：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<select name="advertType.id"> 
						<option value="">-无-</option> 
						<c:forEach var="item"   items="${advertTypes}"   >
						<option value="${item.id}">${item.name}</option> 
						</c:forEach>
						</select>
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
						广告时间:
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="startDate" value="<fmt:formatDate value="${advert.startDate}" pattern="yyyy-MM-dd"/>" class="bg"/>-
						<input type="text" name="endDate" value="<fmt:formatDate value="${advert.endDate}" pattern="yyyy-MM-dd"/>" class="bg"/>
					</td>
				</tr>
				
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01">
						是否启用：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
					<c:if test="${advert.active}">
						<input type="checkbox" checked="checked" onclick="$(this).next().val(this.checked+'')" class="bg">
						<input type="hidden" name="active" value="true">
						</c:if>
					<c:if test="${!advert.active}">
						<input type="checkbox"  onclick="$(this).next().val(this.checked+'')" class="bg">
						<input type="hidden" name="active" value="false">
						</c:if>
						
					</td>
				</tr>
				
			
				<tr>
					<td class="ta_01" style="WIDTH: 100%" align="center"
						bgColor="#f5fafe" colSpan="4">
						<button type="button" onclick="onSubmit()" value="确定" class="button_ok">
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
	
	$(document).ready(function () {
 var validateOpts = {
  rules: {
   name: {
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
	
	function onSubmit(){
	
	var goback = $("#editForm input[name='goback']");
	if(goback.length>0)
	goback.val("${pageContext.request.contextPath}/admin/article/advert_query.action");
	else $("#editForm").append('<input type="hidden" name="goback" value="${pageContext.request.contextPath}/admin/article/advert_query.action"/>');
	
	$("#editForm").submit();
	}
	
	
	</script>
</HTML>