<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as
CommonQueryMacro> <@CommonQueryMacro.page title="����������ϸ��ѯ">

<@CommonQueryMacro.CommonQueryTab id="whjTxQueryTabs" navigate="false"
currentTab="WhjXfQuery"> <@CommonQueryMacro.CommonQuery id="WhjXfQuery"
init="false" submitMode="selected" navigate="false">



<table align="left" width="80%">
	<tr>
		<td><@CommonQueryMacro.Interface id="intface" label="�������ѯ����"
			colNm=4 /></td>
	</tr>
	<tr>
		<td><@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9"
			showArrow="true" pageCache="false"/></td>
	</tr>
	<tr>
		<td><@CommonQueryMacro.DataTable id ="datatable1"
			fieldStr="operTypeCodeS,reasonCode,refNo,certTypeCodeS,ptyCountryCodeS,idCode,personName,acctno,jyCcyCodeS,jyAmt,qsAmtRmb,mccCode,cardTypeCodeS,cardChnlCodeS,bankCode,branchSafecode,bizDealTime,countryCodeS,bankSelfNum,cardSelfNum,shName,jyChnl" 
			readonly="true" width="100%"/></br>
		</td>
	</tr>
	
</table>
</@CommonQueryMacro.CommonQuery> </@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">

</script>
</@CommonQueryMacro.page>
