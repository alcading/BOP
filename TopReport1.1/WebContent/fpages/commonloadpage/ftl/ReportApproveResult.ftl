<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="��˽��">
<@CommonQueryMacro.CommonQuery id="reportApproveResult" init="true" submitMode="current" navigate="false">
<table width="400px">
	<tr>
		<td>
			<@CommonQueryMacro.GroupBox id="guoup1" label="�����Ϣ" expand="true">
			<table frame=void class="grouptable" width="100%">
				<tr>
					<td align="center" nowrap class="labeltd"> ��˽�� </td>
					<td class="datatd" > <@CommonQueryMacro.SingleField fId="approveStatus"/></td>
				</tr>
				<tr>
					<td align="center" nowrap class="labeltd"> ���˵�� </td>
					<td  class="datatd"> <@CommonQueryMacro.SingleField fId="approveResult" /></td>
				</tr>
			</table>
			</@CommonQueryMacro.GroupBox>
		</td>
	</tr>
	<#-- <tr>
		<td>
			<@CommonQueryMacro.Button id="btBack"/>
		</td>
	</tr>
	 -->
</table>
</@CommonQueryMacro.CommonQuery>
<script language="JavaScript">
	function btBack_onClick(){
		closeWin();
	}				
</script>
</@CommonQueryMacro.page>