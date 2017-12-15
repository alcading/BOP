<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#global contextPath = contextPath>
<@CommonQueryMacro.page title="��Ϣ������Ϣ����">
<@CommonQueryMacro.CommonQuery id="bopCfaStrdeDsEntryInpayAdd" navigate="false" init="true" insertOnEmpty="true">
<table width="70%">
	<tr>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<@CommonQueryMacro.GroupBox id="groupbox1" label="ǩԼ��Ϣ" expand="true">
							<table frame="void" class="grouptable" width="100%">
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">����ҽṹ�Դ����</td>
									<td class="datatd">
										<@CommonQueryMacro.SingleField fId="strdecode"/>
										<input extra="button" style='width=25px;height=17px;' onclick="loadAccount();" type='button' value='...'/>
									</td>
									<td rowspan="1" align="right" nowrap class="labeltd">���ڻ�����ʶ��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="branchcode"/></td>
								</tr>

								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">�ͻ�����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="clientcode"/></td>
									<td colspan="1" align="center" nowrap class="labeltd">�ͻ�����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="clientname"/></td>
								</tr>

								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">ǩԼ����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="contractdate"/></td>
									<td colspan="1" align="center" nowrap class="labeltd">��ͬ��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="contract"/></td>
								</tr>

								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">ǩԼ���</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="contractamount"/></td>
									<td rowspan="1" align="center" nowrap class="labeltd">������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="maturity"/></td>
								</tr>

								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">�ҹ�ָ��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="lincame"/></td>
									<td align="center" nowrap class="labeltd">�ҹ�ָ����㷽��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="lincamethod"/></td>
								</tr>

								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">Լ������������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="aginraup"/></td>
									<td align="center" nowrap class="labeltd">Լ������������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="aginralo"/></td>
								</tr>

								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">��Ϣ������ʽ</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="aginraloinpay"/></td>
									<td colspan="1" align="center" nowrap class="labeltd">��ע</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="remark"/></td>
								</tr>
							</table>
						</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
			</table>
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
									<td class="datatd" 	><@CommonQueryMacro.SingleField fId="lstUpdTm"/></td>
								</tr>
							</table>
						</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
			</table>
		</td>
	</tr>

	<tr><#--MOD  BY HUANGCHENG   2012-8-22 BEGIN-->
		<td>
			<@CommonQueryMacro.Group id ="groupbox1" label="��Ϣ������Ϣ"
				fieldStr="inpaycode,inpaymonth,inpayrmbam,inpaycurr,inpaycurram,filler2,remark1" colNm=4/>
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
	var ds = bopCfaStrdeDsEntryInpayAdd_dataset;
	//��Ϣ�����"****"���
	<#assign v_inpaycode = statics["com.huateng.report.utils.ReportUtils"].getTempStr(null,4)>
	function initCallGetter_post(){
		if (bopCfaStrdeDsEntryInpayAdd_dataset.length == 0) {
			bopCfaStrdeDsEntryInpayAdd_dataset.insertRecord("end");
		}
		ds.setValue("inpaycode","${v_inpaycode}");
		ds.setFieldReadOnly("inpaycode",true);
	}

	//ǩԼ��Ϣֻ��
	ds.setFieldReadOnly("strdecode",true);
	ds.setFieldReadOnly("branchcode",true);
	ds.setFieldReadOnly("clientcode",true);
	ds.setFieldReadOnly("clientname",true);
	ds.setFieldReadOnly("contractdate",true);
	ds.setFieldReadOnly("contract",true);
	ds.setFieldReadOnly("contractamount",true);
	ds.setFieldReadOnly("maturity",true);
	ds.setFieldReadOnly("lincame",true);
	ds.setFieldReadOnly("lincamethod",true);
	ds.setFieldReadOnly("aginraup",true);
	ds.setFieldReadOnly("aginralo",true);
	ds.setFieldReadOnly("aginraloinpay",true);
	ds.setFieldReadOnly("remark",true);

	function btBack_onClick() {
		closeWin();
	}

	//����ǩԼ��Ϣѡ���
	function loadAccount(){
		showPickup("ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/winloadpage/BopCfaStrdeDsLoadPage.ftl?type=inpay");
	}

	//���水ť�ύǰ���ͳһ����
	function btSave_onClickCheck(button) {
		return addClickCheck();
	}

	//��Ϣ������Ϣ���水ť���
	function addClickCheck() {
		var strdecode = ds.getValue("strdecode");
		var inpaymonth = ds.getValue("inpaymonth");//��Ϣ����
		var inpaycode = ds.getValue("inpaycode");//��Ϣ���
		var inpayrmbam = ds.getString("inpayrmbam");//��Ϣ�����֧�����
		var inpaycurram = ds.getString("inpaycurram");//��Ϣ���֧�����
		var inpaycurr = ds.getValue("inpaycurr");//��Ϣ���֧������
		if(strdecode == null || strdecode == "") {
			alert("����ѡ������ҽṹ�Դ����");
			return false;
		}
		if(inpaycode.length != 4) {
			alert("�ֶ�[��Ϣ���]������4λ�ַ�");
			return false;
		}
		if(inpaymonth == null || inpaymonth == "") {
			alert("��ѡ��Ϣ����");
			return false;
		}
		if(inpayrmbam.length == 0 && inpaycurram.length == 0) {
			alert("��Ϣ�����֧������븶Ϣ���֧�����������һ����");
			return false;
		}
		//��ֹ���֧�����ֺ���ֹ���֧�����Ϊһ�����ݣ�����ͬʱΪ�ջ��߲�Ϊ�ա� inpaycurr inpaycurr
		if((inpaycurr.length == 0 && inpaycurram.length != 0) || (inpaycurr.length != 0 && inpaycurram.length == 0)) {
			alert("��Ϣ�����֧������븶Ϣ���֧��������ͬʱΪ�ջ��߲�Ϊ��");
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
