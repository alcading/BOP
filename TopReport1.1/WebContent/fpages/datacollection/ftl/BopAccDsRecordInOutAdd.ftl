<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign op=RequestParameters["op"]?default("")>
<@CommonQueryMacro.page title="�˻���֧����Ϣ">
	<@CommonQueryMacro.CommonQuery id="bopAccDsRecordInOutAdd" init="false" submitMode="all" navigate="false" >
		<table width="800px">
			<tr>
				<td>
					<@CommonQueryMacro.GroupBox id="guoup1" label="������Ϣ" expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>
								<td align="center" nowrap class="labeltd"> �ʺ� </td>
								<td class="datatd" > <@CommonQueryMacro.SingleField fId="accountno"/><input extra="button" style='width=25px;height=17px;' onclick="loadAccount();" type='button' value='...'/></td>
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
					<@CommonQueryMacro.GroupBox id="guoup2" label="�䶯��Ϣ" expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>
								<td  align="center" nowrap class="labeltd"  width="25%"> ҵ��������  </td>
								<td class="datatd"  width="25%"> <@CommonQueryMacro.SingleField fId="dealDate" /></td>
								<td align="center" nowrap class="labeltd"  width="25%"> �˻���� </td>
								<td nowrap class="datatd"  width="25%"> <@CommonQueryMacro.SingleField fId="balance" /></td>
							</tr>
							<tr>
								<td  align="center" nowrap class="labeltd"> ���մ���������  </td>
								<td class="datatd"> <@CommonQueryMacro.SingleField fId="credit" /></td>
								<td align="center" nowrap class="labeltd"> ���ս跽������ </td>
								<td nowrap class="datatd"> <@CommonQueryMacro.SingleField fId="debit" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd" width="25%"> ��ע </td>
								<td class="datatd" colspan="3"> <@CommonQueryMacro.SingleField fId="remark2" /></td>
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
		function initCallGetter_post(){
			bopAccDsRecordInOutAdd_dataset.setFieldReadOnly("accountno",true);
			if (bopAccDsRecordInOutAdd_dataset.length == 0) {
				bopAccDsRecordInOutAdd_dataset.insertRecord("end");
			}
			var currentDate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getTxdate()}";
			bopAccDsRecordInOutAdd_dataset.setValue("dealDate", currentDate);
		}

		//�����˻���Ϣѡ���
		function loadAccount(){
			showPickup("�˻���Ϣ","${contextPath}/fpages/datacollection/ftl/winloadpage/BopAccDsAccountLoadPage.ftl");
		}

		function btSave_onClickCheck(button){
			var accountno = bopAccDsRecordInOutAdd_dataset.getValue("accountno");
			if (accountno.length == 0) {
				alert("�ֶ�[ �ʺ� ]�����ݲ���Ϊ�գ�");
				return false;
			}
			bopAccDsRecordInOutAdd_dataset.setParameter("op",op);
			return true;
		}

		function btSave_postSubmit(button){
			alert("����ɹ���");
			closeWin(true);
		}

		function btBack_onClick(){
			closeWin();
		}
	</script>
</@CommonQueryMacro.page>