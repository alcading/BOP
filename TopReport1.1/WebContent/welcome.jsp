<%@ page contentType="text/html; charset=gb2312" pageEncoding="gb2312"%>
<%@ page language="java" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ page import ="com.huateng.ebank.business.common.UserSessionInfo"  %>

<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/BillSysTag/xystyle.css">
<script language="javascript">


function openLink(urlLink)
{
	window.open(urlLink, "_self");
}
function submitForm()
{
	document.forms[document.myform.formindex.value].submit();
}


</script>
<style type="text/css">
<!--
.style4 {
	color: #024BB7
}
-->
</style>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="695" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="695" class="location">&nbsp;&nbsp;<a href="<%=response.encodeURL("../common/welcome.jsp")%>">��ҳ</a> &gt; ��½��Ϣ</td>
	</tr>
	<tr>
		<td valign="top" background="../images/bg_line_02.gif"><img
			src="../images/spacer.gif" width="1" height="2"></td>
	</tr>
</table>
<table width="696" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="10">&nbsp;</td>
		<td>&nbsp;</td>
		<td width="10">&nbsp;</td>
	</tr>
	<TR>
		<TD width="10"></TD>
		<TD>
		<TABLE width="100%" border="1" cellpadding="2" cellspacing="0"
			class="table-class">
			<TBODY>
				<TR align="left">
					<TD height="23" colspan="9" valign="top" nowrap class="tdTitle"><STRONG>�ҵ���Ϣ</STRONG></TD>
				</TR>
				<%
				UserSessionInfo userInfo =	(UserSessionInfo) session.getAttribute("USER_SESSION_INFO");
				%>
				<TR align="right" valign="middle" bordercolor="#CCCCCC"
					bgcolor="#FFFFFF" class="tdValue">
					<TD width="17%" align="right" valign="top" nowrap>�����½ʱ�䣺</TD>
					<TD width="83%" colspan="2" align="left" valign="middle">&nbsp;&nbsp;<%=userInfo.getLastLoginTime()%></TD>
				</TR>
				<TR align="right" valign="middle" bordercolor="#CCCCCC"
					bgcolor="#FFFFFF" class="tdValue">
					<TD width="17%" align="right" valign="top" nowrap>����˳�ʱ�䣺</TD>
					<TD width="83%" colspan="2" align="left" valign="middle" nowrap>&nbsp;&nbsp;<%=userInfo.getLastLogoutTime()%></TD>
				</TR>
				<TR align="right" valign="middle" bordercolor="#CCCCCC"
					bgcolor="#FFFFFF" class="tdValue">
					<TD width="17%" align="right" valign="top" nowrap>���IP��ַ��</TD>
					<TD width="83%" colspan="2" align="left" valign="middle" nowrap>&nbsp;&nbsp;<%=userInfo.getIp()%></TD>
				</TR>
				
			</TBODY>
		</TABLE>
		</TD>
		<TD width="10"></TD>
	</TR>
	<TR>
		<TD width="10"></TD>
		<td valign="top"><img src="../images/spacer.gif" width="1"
						height="20"></td>
		<TD width="10"></TD>
	</TR>
	<tr>
		<td><img src="../images/spacer.gif" width="10" height="20"></td>
		<td>
		<table width="100%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td valign="top">
				<table width="100%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td>
								<table width="100%" border="1" cellpadding="2" cellspacing="0"
									class="table-class">
									<tr align="left">
										<td height="23" colspan="14" valign="top" nowrap
											class="tdTitle"><strong>�ҵĹ�����</strong></td>
									</tr>
									<tr align="right">
										<td width="5%" align="center" valign="top" nowrap
											class="tdTitle">&nbsp;</td>
										<td width="30%" colspan="5" height="23" align="center"
											valign="top" nowrap bgcolor="#FFFFFF" class="tdTitle"><strong>��������</strong></td>
										<td width="65%" colspan="2" align="center" valign="middle"
											nowrap class="tdTitle"><strong> ��������</strong></td>
									</tr>
									<tr align="right" valign="middle" bordercolor="#CCCCCC"
										bgcolor="#FFFFFF" class="tdValue">
										<td width="5%" align="center" valign="top" nowrap><font color="#666666"><b>1</b></font></td>
										<td width="30%" colspan="5" align="center" valign="middle"
											nowrap><a
											href='<%=response.encodeURL("../inquiryPrint/forcastAll.jsp")%>'
											target="businessfrm">Ԥ����Ϣ��ѯ</a></td>
										<td width="65%" colspan="2" align="center" valign="middle">��ʾϵͳԤ����Ϣ����������δȷ�ϣ������ϵͳ���·��������</td>
									</tr>
									<tr align="right" valign="middle" bordercolor="#CCCCCC"
										bgcolor="#FFFFFF" class="tdValue">
										<td width="5%" align="center" valign="top" nowrap><font color="#666666"><b>2</b></font></td>
										<td width="30%" colspan="5" align="center" valign="middle"
											nowrap><a
											href='<%=response.encodeURL("../inquiryPrint/workItemListQuery.do?pageIndex=-1")%>'
											target="businessfrm">�����б��ѯ</a></td>
										<td width="65%" colspan="2" align="center" valign="middle">��ʾ����Ա��ǰ��Ҫ����������б�</td>
									</tr>
									
								</table>
								</td>
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td height="23"></td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		</td>
		<td><img src="../images/spacer.gif" width="10" height="1"></td>
	</tr>
</table>

<form name="myform"><input type="hidden" name="formindex" value="-1">

<table width="697" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="697" valign="top" background="/images/bg_line_02.gif"><img
			src="/images/spacer.gif" width="1" height="2"></td>
	</tr>
	<tr>
		<td valign="top">&nbsp;</td>
	</tr>
	<tr>

		<td align="center" valign="top"></td>

	</tr>
	<tr>
		<td valign="top">&nbsp;</td>
	</tr>
</table>
</form>
</body>
</html>
