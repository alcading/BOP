<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�˻�������Ϣ">
	<@CommonQueryMacro.CommonQuery id="bopAccDsRecordADAdd" init="false" submitMode="current" navigate="false">
		<table width="800px">
			<tr>
				<td>
					<@CommonQueryMacro.GroupBox id="guoup1" label="������Ϣ" expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>
								<td align="center" nowrap class="labeltd"> �ʺ� </td>
								<td class="datatd" > <@CommonQueryMacro.SingleField fId="accountno"/></td>
								<td rowspan="3" align="center" nowrap class="labeltd" >��������</td>
								<td align="center" nowrap class="labeltd"> ���� </td>
								<td  class="datatd"> <@CommonQueryMacro.SingleField fId="amtype" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd" > ���� </td>
								<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="currencyCode" /></td>
								<td align="center" nowrap class="labeltd" > ���� </td>
								<td class="datatd" > <@CommonQueryMacro.SingleField fId="enCode" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd" > �˻����ʴ��� </td>
								<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="accountType" /></td>
								<td align="center" nowrap class="labeltd" > ���� </td>
								<td class="datatd" > <@CommonQueryMacro.SingleField fId="enName" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd" > �˻���� </td>
								<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="accountCata" /></td>
								<td colspan="2" align="center" nowrap class="labeltd" > ����������/�������/ҵ����  </td>
								<td class="datatd" > <@CommonQueryMacro.SingleField fId="fileNumber" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd" width="25%"> �޶�����  </td>
								<td class="datatd"  width="25%"> <@CommonQueryMacro.SingleField fId="limitType" /></td>
								<td colspan="2" align="center" nowrap class="labeltd"  width="25%"> �˻��޶� </td>
								<td class="datatd"  width="25%"> <@CommonQueryMacro.SingleField fId="accountLimit" /></td>
							</tr>
						</table>
					</@CommonQueryMacro.GroupBox>
				</td>
			</tr>
			<tr>
				<td>
					<@CommonQueryMacro.GroupBox id="guoup2" label="���ػ���Ϣ" expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>
								<td align="center" nowrap class="labeltd"  width="25%"> �˻�״̬ </td>
								<td nowrap class="datatd"  width="25%"> <@CommonQueryMacro.SingleField fId="accountstat" /></td>
								<td  align="center" nowrap class="labeltd"  width="25%"> ҵ��������  </td>
								<td class="datatd"  width="25%"> <@CommonQueryMacro.SingleField fId="businessDate" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd" width="25%"> ��ע </td>
								<td class="datatd" colspan="3"> <@CommonQueryMacro.SingleField fId="remark1" /></td>
							</tr>
						</table>
					</@CommonQueryMacro.GroupBox>
				</td>
			</tr>
			<tr>
				<td align="left">
					&nbsp;<@CommonQueryMacro.Button id="btSave"/>&nbsp;&nbsp;
					<@CommonQueryMacro.Button id="btBack"/>
				</td>
			</tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
	<script language="JavaScript">

		var op = "${RequestParameters["op"]?default('')}";

		function btBack_onClick(){
			closeWin();
		}
		function bopAccDsRecordADAdd_dataset_afterChange(dataset,field){
			var fieldName = field.fieldName;
			if (fieldName == "accountType") {
				//var accountType = bopAccDsRecordADAdd_dataset.getValue("accountType");
				//�Գ������ڻ��뱣֤��ר���˻�������ĸ����ʱ���Ŀ����˻��Ŀ�����������ػ���Ϊ�����
				//if (accountType == "2105") {
				//	bopAccDsRecordADAdd_dataset.getField("fileNumber").required=true;
				//} else {
				//	bopAccDsRecordADAdd_dataset.getField("fileNumber").required=false;
				//}
			}
			if (fieldName == "limitType") {
				var limitType =  bopAccDsRecordADAdd_dataset.getValue("limitType");
				if (limitType == "12" || limitType == "13") {
					bopAccDsRecordADAdd_dataset.getField("accountLimit").required=true;
					bopAccDsRecordADAdd_dataset.setFieldReadOnly("accountLimit", false);
				} else {
					bopAccDsRecordADAdd_dataset.getField("accountLimit").required=false;
					bopAccDsRecordADAdd_dataset.setFieldReadOnly("accountLimit", true);
				}
			}
		}

		function btSave_onClickCheck(button) {
			//RBSҪ���˺�Ϊ15λ
			if ("del" != op) {
				var accountno = bopAccDsRecordADAdd_dataset.getValue("accountno");
				if(null != accountno && "" != accountno && accountno.length != 15){
					alert("�ʺű�����15λ����");
					return false;
				}
			}
			bopAccDsRecordADAdd_dataset.setParameter("op",op);
			return true;
		}

		function btSave_postSubmit(button){
			alert("����ɹ���");
			closeWin(true);
		}
	</script>
</@CommonQueryMacro.page>