<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="BOPForDebtChangInfoCol.title">
<@CommonQueryMacro.CommonQuery id="BOPForDebtChangInfoCol" init="true" insertOnEmpty="true">
<table>
	<tr>
		<td>
			<@CommonQueryMacro.Group id ="group1" label=""
			fieldStr="actiontype,actionDesc,exdebtCode,busCode,changeNo,changType,ChDate,chCurrency,ChAmount,fairValue,remark" colNm=4/>
		</td>
	</tr>
	<tr>
		<td>
			<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;<@CommonQueryMacro.Button id= "btBack"/>
		</td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>
<script language="javascript">
var op = "${RequestParameters["op"]?default('')}";
//��ҳ���ʼ����֮����Ե��ø÷���ִ����Ҫ����Ĳ�

</script>
</@CommonQueryMacro.page>
