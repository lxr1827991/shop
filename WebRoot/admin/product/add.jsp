<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<LINK href="${pageContext.request.contextPath}/css/Style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	
	<body>
		<!--  -->
		<form id="userAction_save_do" name="Form1" action="${pageContext.request.contextPath}/adminProduct_save.action" method="post" enctype="multipart/form-data">
			&nbsp;
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>添加商品</STRONG>
						</strong>
					</td>
				</tr>
	<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						所属分类：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<select name="categorySecond.csid">
							<s:iterator var="cs" value="csList">
								<option value="<s:property value="#cs.csid"/>"><s:property value="#cs.csname"/></option>
							</s:iterator>
						</select>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						商品名称：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="p.pname" value="<s:property value="model.pname"/>" id="adminProductAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						类型：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<select name="is_hot">
							<option value="1">热卖品</option>
							<option value="0">爆款</option>
							<option value="0">新品</option>
						</select>
					</td>
				</tr>
				<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						品牌：
					</td>
					<td  class="ta_01" bgColor="#ffffff">
					<input type="text" name="p.brand" value="<s:property value="model.brand"/>"  id="adminProductAction_save_do_logonName" class="bg"/></td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						商品规格：
					</td>
					<td  class="ta_01" bgColor="#ffffff">
					<input type="text" name="format" value="<s:property value="model.format"/>" id="AdminproductAction_save_do_logonName" class="bg"/></td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						市场价格：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="p.market_price" value="<s:property value="model.market_price"/>" id="adminProductAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						商城价格：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="p.shop_price" value="<s:property value="model.shop_price"/>" id="adminProductAction_save_do_logonName"class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						商品型号：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="p.model" value="<s:property value="model.model"/>" id="adminProductAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						商品单位：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="p.punit" value="<s:property value="model.punit"/>" id="adminProductAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						生产厂家：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="p.manufacturer" value="<s:property value="model.manufacturer"/>"  id="adminProductAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						生产地：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="p.yieldly" value="<s:property value="model.yieldly"/>" id="adminProductAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						商品图片：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="file" name="upload" / value="<s:property value="model.image"/>" id="adminProductAction_save_do_logonName">
					</td>
				</tr>
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						商品描述：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<textarea name="pdesc" rows="5" cols="30"></textarea>
					</td>
				</tr>
				<tr>
					<td class="ta_01" style="WIDTH: 100%" align="center"
						bgColor="#f5fafe" colSpan="4">
						<button type="submit" id="adminProductAction_save_do_submit" value="确定" class="button_ok">
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
	</body>
</HTML>