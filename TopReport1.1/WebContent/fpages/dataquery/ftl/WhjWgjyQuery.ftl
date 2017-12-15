<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as
CommonQueryMacro> <@CommonQueryMacro.page title="境外违规交易">

<@CommonQueryMacro.CommonQueryTab id="whjJsQueryTabs" navigate="false"
currentTab="WhjWgjyQuery"> <@CommonQueryMacro.CommonQuery id="WhjWgjyQuery"
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
			fieldStr="certTypeCode,ptyCountryCode,idCode" 
			readonly="true" width="100%"/></br>
		</td>
	</tr>
	
</table>
</@CommonQueryMacro.CommonQuery> </@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">

</script>
</@CommonQueryMacro.page>
