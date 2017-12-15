<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as
CommonQueryMacro> <@CommonQueryMacro.page title="接口文件发送信息">

<@CommonQueryMacro.CommonQueryTab id="whjTxQueryTabs" navigate="false"
currentTab="WhjSendQuery"> <@CommonQueryMacro.CommonQuery id="WhjSendQuery"
init="false" submitMode="selected" navigate="false">



<table align="left" width="80%">
	<tr>
		<td><@CommonQueryMacro.Interface id="intface" label="请输入查询条件"
			colNm=4 /></td>
	</tr>
	<tr>
		<td><@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9"
			showArrow="true" pageCache="false"/></td>
	</tr>
	<tr>
		<td><@CommonQueryMacro.DataTable id ="datatable1"
			fieldStr="scsj,wjm,scjlbs,lx,zt" 
			readonly="true" width="100%"/></br>
		</td>
	</tr>
	
</table>
</@CommonQueryMacro.CommonQuery> </@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">

</script>
</@CommonQueryMacro.page>
