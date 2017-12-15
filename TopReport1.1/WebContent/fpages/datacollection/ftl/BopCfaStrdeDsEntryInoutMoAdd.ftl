<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#global contextPath = contextPath>
<@CommonQueryMacro.page title="�ʽ�������ͽṺ����Ϣ����">
<@CommonQueryMacro.CommonQuery id="bopCfaStrdeDsEntryInoutMoAdd" init="true" insertOnEmpty="true" navigate="false">
<table width="70%">
	<tr width="100%">
		<td valign="top">

			<@CommonQueryMacro.Group id ="groupbox1" label="�ʽ�������ͽṺ����Ϣ"
				fieldStr="branchcode,buocmonth,currency,moexamusd,moamreusd,mopfexamusd,mosettamusd,filler2,remark" colNm=4/>

		</td>

		<td width="8px"></td>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0" style="display:none">
				<tr>
					<td>
						<@CommonQueryMacro.GroupBox id="groupbox2" label="ϵͳ��Ϣ" expand="true">
							<table frame=void class="grouptable" width="100%">
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">��������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="actiontype"/></td>
								</tr>
								<tr>
									<td rowspan="1" align="right" nowrap class="labeltd">��¼״̬</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="recStatus"/></td>
								</tr>
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">����״̬</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="approveStatus"/></td>
								</tr>
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">����˵��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="approveResult"/></td>
								</tr>
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">��ִ״̬</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="repStatus"/></td>
								</tr>
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">����ʱ��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="crtTm"/></td>
								</tr>
									<td colspan="1" align="center" nowrap class="labeltd">����޸�ʱ��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="lstUpdTm"/></td>
								</tr>
							</table>
						</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
			</table>
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
	var ds = bopCfaStrdeDsEntryInoutMoAdd_dataset;
	<#assign v_branchcode = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getBrno()>
	function initCallGetter_post(){
		if (ds.length == 0) {
			ds.insertRecord("end");
		}
		//����Ĭ����Ԫ
		ds.setValue2("currency","USD");
		ds.setValue("currencyName","USD-��Ԫ");
		//������Ĭ�ϵ�ǰ����
		ds.setValue("branchcode","${v_branchcode}");
		ds.setFieldReadOnly("branchcode",true);
	}

	function btBack_onClick() {
		closeWin();
	}

	//���水ť�ύǰ���ͳһ����
	function btSave_onClickCheck(button) {
		return addClickCheck();
	}
	//�ж��ǲ���"��"
	function isBlank(value) {
		if(value == null || value == "") {
			return true;
		}
		return false;
	}
	//��Ϣ������Ϣ���水ť���
	function addClickCheck() {
		var moexamusd = ds.getString("moexamusd");//���»���������Ԫ
		var moamreusd = ds.getString("moamreusd");//���»���������Ԫ
		var mosettamusd = ds.getString("mosettamusd");//���½��������Ԫ
		var mopfexamusd = ds.getString("mopfexamusd");//���¹���������Ԫ
		//���ĸ��ֶβ��ܶ�Ϊ��,������һ��
		if(isBlank(moexamusd) && isBlank(moamreusd) && isBlank(mosettamusd) && isBlank(mopfexamusd)) {
			alert("��������롢���㡢���������Ԫ������һ����");
			return false;
		}
		return true;
	}

	function btSave_postSubmit(button) {
		alert("����ɹ�");
		closeWin(true);
	}

</script>
</@CommonQueryMacro.page>
