<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
<script type="text/javascript">
			function addUser(){
				window.location.href = "${pageContext.request.contextPath}/userAdmin__add.action";
			}
		</script>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="${pageContext.request.contextPath}/css/Style1.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
		
	</HEAD>
	<body><tr>
					<td>
					<form id="filter" action="${pageContext.request.contextPath}/admin/article/article_query.action" method="post">
					<table><tr><td class="ta_01" align="center" bgColor="#afd1f3">
						开始时间：<input type="text" name="startDate" value="<fmt:formatDate value="${baseFilter.startDate}" pattern="yyyy-MM-dd"/>">
						</td>
						<td class="ta_01" align="center" bgColor="#afd1f3">
						结束时间：<input type="text" name="endDate" value="<fmt:formatDate value="${baseFilter.endDate}" pattern="yyyy-MM-dd"/>">
						</td>
						
						<td class="ta_01" align="center" bgColor="#afd1f3">
							所属栏目
						<select name="column.id"> 
						<option value="">-无-</option> 
						<c:forEach var="item"   items="${column}"   >
						<option value="${item.id}" <c:if test="${baseFilter.column.id==item.id}"> selected="selected"</c:if>>${item.colName}</option> 
						</c:forEach>
						</select> 
						</td>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<input type="text" name="name" value="${baseFilter.name}">
						</td>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<input type="button" value="查询" onclick="this.disabled=true; $('#filter').submit()">
						</td>
						</tr></table>
						</form>
						</td>
						
					</tr>
		<br>
		<form id="Form1" name="Form1" action="${pageContext.request.contextPath}/user/list.jsp" method="post">
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
				<TBODY>
				
					<tr>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<strong>会员列表</strong>
						</TD>
					</tr>
					<tr>
						
					</tr>
					<tr>
						<td class="ta_01" align="center" bgColor="#f5fafe">
							<table cellspacing="0" cellpadding="1" rules="all"
								bordercolor="gray" border="1" id="DataGrid1"
								style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
								<tr
									style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

									<td align="center" width="6%">
										用户ID</td>
									<td align="center" width="10%">
										昵称
									</td>
									<td align="center" width="10%">
										真实姓名
									</td>
									<td width="12%" align="center">
										手机
									</td>
									<td width="10%" align="center">
										邮箱
									</td>
									<td width="16%" align="center">
										地址
									</td><td width="6%" align="center">
										状态
									</td><td width="8%" align="center">
										会员卡
									</td><td width="6%" align="center">
										积分
									</td><td width="6%" align="center">
										VIP
									</td>
									<td width="12%" align="center">
										管理操作
									</td>
								</tr>
									<s:iterator var="u" value="pageBean.list" status="status">
										<tr onmouseover="this.style.backgroundColor = 'white'"
											onmouseout="this.style.backgroundColor = '#F5FAFE';">
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="6%">
												<s:property value="#status.count"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="10%">
												<s:property value="#u.username"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="10%">
												<s:property value="#u.name"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="10%">
												<s:property value="#u.phone"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="10%">
												<s:property value="#u.email"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="16%">
												<s:property value="#u.addr"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="6%">
												<s:property value="#u.state"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="8%">
												<s:property value="#u.card"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="6%">
												<s:property value="#u.code"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="6%">
												<s:property value="#u.VIP"/>
											</td>
											
											<td align="center" style="HEIGHT: 22px">
												<a href="${ pageContext.request.contextPath }/userAdmin_edit.action?uid=<s:property value="#u.uid"/>">
													<img src="${pageContext.request.contextPath}/images/i_edit.gif" border="0" style="CURSOR: hand">
												</a>
											
												<a href="${ pageContext.request.contextPath }/userAdmin_delete.action?uid=<s:property value="#u.uid"/>">
													<img src="${pageContext.request.contextPath}/images/i_del.gif"  border="0" style="CURSOR: hand">
												</a>
											</td>
										</tr>
									</s:iterator>	
							</table>
						</td>
					</tr>
					<tr align="center">
						<td colspan="7">
							第<s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/>页 
							<s:if test="pageBean.page != 1">
								<a href="${ pageContext.request.contextPath }/userAdmin_findAll.action?page=1">首页</a>|
								<a href="${ pageContext.request.contextPath }/userAdmin_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a>|
							</s:if>
							<s:if test="pageBean.page != pageBean.totalPage">
								<a href="${ pageContext.request.contextPath }/userAdmin_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>|
								<a href="${ pageContext.request.contextPath }/userAdmin_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>|
							</s:if>
						</td>
					</tr>
				</TBODY>
			</table>
		</form>
	</body>
</HTML>

