<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign CommonQueryConfig = statics["com.huateng.commquery.config.CommonQueryUtil"].getCommonQueryBean("bopCfaStrdeDsEntryADAdd")>
<#assign op=RequestParameters["op"]?default("")>
<#if op=="add">
	${CommonQueryConfig.setAnyValue("navigate","��ҵ��������ҽṹ�Դ����Ϣ��¼&gt; ǩԼ��Ϣ &gt; ����")}
</#if>
<#if op=="mod">
	${CommonQueryConfig.setAnyValue("navigate","��ҵ��������ҽṹ�Դ����Ϣ��¼&gt; ǩԼ��Ϣ &gt; �޸�")}
</#if>
<#if op=="del">
	${CommonQueryConfig.setAnyValue("navigate","��ҵ��������ҽṹ�Դ����Ϣ��¼&gt; ǩԼ��Ϣ &gt; ɾ��")}
</#if>
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
<@CommonQueryMacro.CommonQuery id="bopCfaStrdeDsEntryADAdd" init="true"
insertOnEmpty="true" navigate="false">
<table width="72%" cellpadding="2">
	<tr>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td><@CommonQueryMacro.GroupBox id="groupbox1" label="������Ϣ"
						expand="true">
						<table frame="void" class="grouptable" width="100%">
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">����ҽṹ�Դ����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="strdecode"/></td>


								<td rowspan="1" align="right" nowrap class="labeltd">���ڻ�����ʶ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="branchcode"/></td>

							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">�ͻ�����
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="clientcode"/></td>

								<td colspan="1" align="center" nowrap class="labeltd">�ͻ�����
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="clientname"/></td>

							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">ǩԼ����
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="contractdate"/></td>

								<td colspan="1" align="center" nowrap class="labeltd">��ͬ��
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="contract"/></td>

							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">ǩԼ���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="contractamount"/></td>

								<td rowspan="1" align="center" nowrap class="labeltd">������
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="maturity"/></td>

							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">�ҹ�ָ��
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="lincame"/></td>

								<td align="center" nowrap class="labeltd">�ҹ�ָ����㷽��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="lincamethod"/></td>

							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">Լ������������
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="aginraup"/></td>

								<td align="center" nowrap class="labeltd">Լ������������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="aginralo"/></td>

							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">��Ϣ������ʽ</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="aginraloinpay"/></td>

								<td colspan="1" align="center" nowrap class="labeltd">ҵ����ˮ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="filler2"/></td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">��ע</td>
								<td class="datatd" colspan="3"><@CommonQueryMacro.SingleField
									fId="remark"/></td>
							</tr>
						</table> </@CommonQueryMacro.GroupBox>
					</td>
				</tr>
			</table>
		</td>
		<td width="8px"></td>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0" style="display:none">
				<tr>
					<td><@CommonQueryMacro.GroupBox id="groupbox2" label="ϵͳ��Ϣ"
						expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">��������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="actiontype"/></td>
							</tr>
							<tr>
								<td rowspan="1" align="right" nowrap class="labeltd">��¼״̬</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="recStatus"/></td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">����״̬
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="approveStatus"/>
								</td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">����˵��
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="approveResult"/>
								</td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">��ִ״̬
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="repStatus"/>
								</td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">����ʱ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="crtTm"/></td>
							</tr>
								<td colspan="1" align="center" nowrap class="labeltd">����޸�ʱ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="lstUpdTm"/></td>
							</tr>
						</table> </@CommonQueryMacro.GroupBox></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td align="left" colspan="3"><@CommonQueryMacro.Button
			id="btSave"/>&nbsp; &nbsp;<@CommonQueryMacro.Button id="btBack"/></td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>
<script language="javascript">
	var op = "${RequestParameters["op"]?default('')}";
	<#assign v_branchcode = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getBrno()>
	//ϵͳ��Ϣֻ��
	function initCallGetter_post() {
		bopCfaStrdeDsEntryADAdd_dataset.setValue("branchcode","${v_branchcode}");
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("actiontype",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("recStatus",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("approveStatus",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("approveResult",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("repStatus",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("crtTm",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("lstUpdTm",true);
		//����ҽṹ�Դ����ֻ��
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("strdecode",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("branchcode",true);

	}
	function btBack_onClick() {
		closeWin();
	}

	//���Ե�ֻ��ͳһ����
	if(op == "add") {
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("actiondesc",true);
	}
	//���水ť�ύǰ���ͳһ����
	function btSave_onClickCheck(button) {
		if((op == "mod") || (op == "add")) return modClickCheck(button);
		if(op == "del") return delClickCheck(button);
		return true;
	}
	//������ִ��ǰ���
	//�ͻ�����ͻ����Ƶ�У�����
	function modClickCheck(button) {
	//��js����֤���ֶ�[���ڻ�����ʶ��],[�ͻ���]���[�ͻ�����],[ǩԼ����],[��ͬ��]
		var branchcode = bopCfaStrdeDsEntryADAdd_dataset.getValue("branchcode");
		var contractdate = bopCfaStrdeDsEntryADAdd_dataset.getValue("contractdate");
		var contract = bopCfaStrdeDsEntryADAdd_dataset.getValue("contract");
		var maturity = bopCfaStrdeDsEntryADAdd_dataset.getValue("maturity");
		if(branchcode.length != 12) {
			alert("�ֶ�[���ڻ�����ʶ��]������12Ϊ�ַ�");
			return false;
		}
		if(contract.length != 32) {
			alert("��ͬ�ű�����32λ");
			return false;
		}
		var currentdate = new Date();
		/*
		if((contractdate.getTime()-currentdate.getTime()) >= 0) {
			alert("ǩԼ���ڲ������ڵ�ǰ����");
			return false;
		}
		*/
		//�����մ��ڵ���ǩԼ����
		if((contractdate.getTime() - maturity.getTime()) > 0) {
			alert("�����ձ�����ڵ���ǩԼ����");
			return false;
		}
		var actiondesc = bopCfaStrdeDsEntryADAdd_dataset.getValue("actiondesc");
		var actiontype = bopCfaStrdeDsEntryADAdd_dataset.getValue("actiontype");
		if(actiontype == "D") {
			if(actiondesc == null || actiondesc == "") {
				alert("ɾ��ԭ����Ϊ��");
				return false;
			}
		}

		return true;
	}
	function delClickCheck(button) {
		var actiondesc = bopCfaStrdeDsEntryADAdd_dataset.getValue("actiondesc");
		if(actiondesc == null || actiondesc == "") {
			alert("�ֶ�[ɾ��ԭ��]����Ϊ��");
			return false;
		}
		return true;
	}
	function btSave_postSubmit(button){
		alert("����ɹ���");
		closeWin(true);
	}

</script>
</@CommonQueryMacro.page>
