<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign CommonQueryConfig = statics["com.huateng.commquery.config.CommonQueryUtil"].getCommonQueryBean("bopCfaStrdeDsEntryADAdd")>
<#assign op=RequestParameters["op"]?default("")>
<#if op=="mod">
	${CommonQueryConfig.setAnyValue("navigate","��ҵ��������ҽṹ�Դ����Ϣ��¼&gt; ǩԼ��Ϣ &gt; �޸�")}
</#if>
<#if op=="del">
	${CommonQueryConfig.setAnyValue("navigate","��ҵ��������ҽṹ�Դ����Ϣ��¼&gt; ǩԼ��Ϣ &gt; ɾ��")}
</#if>
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
<@CommonQueryMacro.CommonQuery id="bopCfaStrdeDsEntryADAdd" init="true" insertOnEmpty="true" navigate="false">
	<table width="95%" cellpadding="2">
		<tr>
			<td valign="top">
				<table width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							<@CommonQueryMacro.GroupBox id="groupbox1" label="������Ϣ" expand="true">
								<table frame="void" class="grouptable" width="100%">
									<tr>
										<td colspan="1" align="center" nowrap class="labeltd">����ҽṹ�Դ����</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="strdecode"/></td>
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
										<td colspan="1" align="center" nowrap class="labeltd">ҵ����ˮ��</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="filler2"/></td>
									</tr>

									<tr>
										<td colspan="1" align="center" nowrap class="labeltd">��ע</td>
										<td class="datatd" colspan="3"><@CommonQueryMacro.SingleField fId="remark"/></td>
									</tr>
								</table>
							</@CommonQueryMacro.GroupBox>
						</td>
					</tr>
				</table>
			</td>
			<td width="8px"></td>
			<td valign="top">
				<table width="100%" cellpadding="0" cellspacing="0">
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
										<td colspan="1" align="center" nowrap class="labeltd">����״̬</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="approveResult"/></td>
									</tr>

									<tr>
										<td colspan="1" align="center" nowrap class="labeltd">��ִ״̬</td>
										<td class="datatd">
											<@CommonQueryMacro.SingleField fId="repStatus"/>
											<a id="repResult" href="JavaScript:doRepDet()">��ִ˵��<a />
										</td>
									</tr>

									<tr>
										<td colspan="1" align="center" nowrap class="labeltd">����ʱ��</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="crtTm"/></td>
									</tr>

									<tr>
										<td colspan="1" align="center" nowrap class="labeltd">����޸�ʱ��</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="lstUpdTm"/></td>
									</tr>
								</table>
							</@CommonQueryMacro.GroupBox>
						</td>
					</tr>

					<tr>
						<td>
							<@CommonQueryMacro.GroupBox id="groupbox3" label="ɾ����Ϣ" expand="true">
								<table frame=void class="grouptable" width="100%">
									<tr>
										<td align="center" nowrap class="labeltd">ɾ��ԭ��</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="actiondesc"/></td>
									</tr>
								</table>
							</@CommonQueryMacro.GroupBox>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<#if op!="detail">
		<tr>
			<td align="left" colspan="3">
				<@CommonQueryMacro.Button id="btSave"/>&nbsp; &nbsp;
				<@CommonQueryMacro.Button id="btBack"/>
			</td>
		</tr>
		</#if>
		<#if op="detail">
			<tr>
				<td align="left" colspan="3"><@CommonQueryMacro.Button id="btBack"/></td>
			</tr>
		</#if>
	</table>
</@CommonQueryMacro.CommonQuery>
<script language="javascript">
	var op = "${op}";
	//ϵͳ��Ϣֻ��
	function initCallGetter_post() {
		//��ִ˵��������ʽ
		var repStatus = bopCfaStrdeDsEntryADAdd_dataset.getValue("repStatus");
		if(repStatus == "00") {
			document.getElementById("repResult").href = "#";
			document.getElementById("repResult").style.color = "#999999";
		}
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("actiontype",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("approveResult",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("recStatus",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("approveStatus",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("repStatus",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("crtTm",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("lstUpdTm",true);
		//����ҽṹ�Դ����ֻ��
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("strdecode",true);
	}
	function btBack_onClick() {
		closeWin();
	}

	//���Ե�ֻ��ͳһ����
	if(op == "mod") {
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("actiondesc",true);
	}
	if(op == "del") {
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("branchcode",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("clientcode",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("clientname",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("contractdate",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("contract",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("contractamount",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("maturity",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("lincame",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("lincamethod",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("aginraup",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("aginralo",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("aginraloinpay",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("filler2",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("remark",true);
	}
	if(op == "detail") {
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("branchcode",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("clientcode",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("clientname",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("contractdate",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("contract",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("contractamount",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("maturity",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("lincame",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("lincamethod",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("aginraup",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("aginralo",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("aginraloinpay",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("filler2",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("remark",true);
		bopCfaStrdeDsEntryADAdd_dataset.setFieldReadOnly("actiondesc",true);
	}
	//���水ť�ύǰ���ͳһ����
	function btSave_onClickCheck(button) {
		if((op == "mod") || (op == "add")) return modClickCheck(button);
		if(op == "del") return delClickCheck(button);
		return true;
	}
	//�޸ĵ�ִ��ǰ���
	//�ͻ�����ͻ����Ƶ�У�����
	function modClickCheck(button) {
	//��js����֤���ֶ�[���ڻ�����ʶ��],[�ͻ���]���[�ͻ�����],[ǩԼ����],[��ͬ��]
		var branchcode = bopCfaStrdeDsEntryADAdd_dataset.getValue("branchcode");
		var contractdate = bopCfaStrdeDsEntryADAdd_dataset.getValue("contractdate");
		var contract = bopCfaStrdeDsEntryADAdd_dataset.getValue("contract");
		var contractamount = bopCfaStrdeDsEntryADAdd_dataset.getValue("contractamount");
		var filler2 = bopCfaStrdeDsEntryADAdd_dataset.getValue("filler2");
		var maturity = bopCfaStrdeDsEntryADAdd_dataset.getValue("maturity");
		if(branchcode.length != 12) {
			alert("�ֶ�[���ڻ�����ʶ��]������12Ϊ�ַ�");
			return false;
		}
		/*
		var currentdate = new Date();
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
		if(contract.length > 32) {
			alert("��ͬ�ű���С�ڵ���32λ");
			return false;
		}
		if(contractamount.toString().indexOf("-") != -1) {
			alert("ǩԼ��������ڵ���0");
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
		if(!bopCfaStrdeDsEntryADAdd_dataset.modified) {
			alert("�����޸ĺ��ٱ��棡");
			return false;
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
		if(op == "mod") {
			alert("����ɹ���");
		}
		if(op == "del") {
			alert("ɾ���ɹ�");
		}
		closeWin(true);
	}

	function doApproveDet(){
		var id = bopCfaStrdeDsEntryADAdd_dataset.getValue("id");
		var appType = bopCfaStrdeDsEntryADAdd_dataset.getValue("appType");
		var currentfile = bopCfaStrdeDsEntryADAdd_dataset.getValue("currentfile");
		var busiCode =  bopCfaStrdeDsEntryADAdd_dataset.getValue("strdecode");
		showPickup("��˽��","${contextPath}/fpages/commonloadpage/ftl/ReportApproveResult.ftl?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile +"&busiCode="+busiCode,440,220);
	}
	function doRepDet(){
		var id = bopCfaStrdeDsEntryADAdd_dataset.getValue("id");
		var appType = bopCfaStrdeDsEntryADAdd_dataset.getValue("appType");
		var currentfile = bopCfaStrdeDsEntryADAdd_dataset.getValue("currentfile");
		//var busiCode = bopAccDsRecordADInfo_dataset.getValue("fileNumber");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile, 600, 500);
	}
</script>
</@CommonQueryMacro.page>
