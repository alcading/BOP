<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign CommonQueryConfig = statics["com.huateng.commquery.config.CommonQueryUtil"].getCommonQueryBean("bopCfaStrdeDsEntryTerminateAdd")>
<#assign op=RequestParameters["op"]?default("")>
<#if op=="mod">
	${CommonQueryConfig.setAnyValue("navigate","��ҵ��������ҽṹ�Դ����Ϣ��¼&gt; ��ֹ��Ϣ &gt; xxx�޸�")}
</#if>
<#if op=="del">
	${CommonQueryConfig.setAnyValue("navigate","��ҵ��������ҽṹ�Դ����Ϣ��¼&gt; ��ֹ��Ϣ &gt; yyyɾ��")} 
</#if> 
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
<@CommonQueryMacro.CommonQuery id="bopCfaStrdeDsEntryTerminateAdd" init="true" insertOnEmpty="true" navigate="false">
<table width="97%" cellpadding="2">
	<tr>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<@CommonQueryMacro.GroupBox id="groupbox1" label="ǩԼ��Ϣ" expand="true">
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
									<td colspan="1" align="center" nowrap class="labeltd">��ע</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="remark"/></td>
								</tr>
							</table>
						</@CommonQueryMacro.GroupBox>
					</td>
				</tr>

				<tr>
					<td>
						<@CommonQueryMacro.GroupBox id="groupbox1" label="��ֹ��Ϣ" expand="true">
							<table frame="void" class="grouptable" width="100%">
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">��ֹ����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="tertype"/></td>
									<td colspan="1" align="center" nowrap class="labeltd">��ֹ֧�����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="terpaycode"/></td>
								</tr>
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">��ֹ����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="terdate"/></td>
									<td colspan="1" align="center" nowrap class="labeltd">��ֹ֧�����ϼ��������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="terpayamtormb"/></td>
								</tr>
								<tr>
									<td rowspan="1" align="center" nowrap class="labeltd">��ֹ�����֧�����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="terrmbpayam"/></td>
									<td colspan="1" align="center" nowrap class="labeltd">��ֹ���֧������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="terpaycurr"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">��ֹ���֧�����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="terpaycurram"/></td>
									<td colspan="1" align="center" nowrap class="labeltd">ҵ����ˮ��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="filler2"/></td>
								</tr>
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">��ע</td>
									<td class="datatd" colspan="3"><@CommonQueryMacro.SingleField fId="remark1"/></td>
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
									<td colspan="1" align="center" nowrap class="labeltd">����˵��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="approveResult"/></td>
								</tr>
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">��ִ״̬</td>
									<td class="datatd">
										<@CommonQueryMacro.SingleField fId="repStatus"/>
										<a id="repHref" href="javascript:doRepDet()">��ִ���</a>
									</td>
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

				<tr>
					<td>
						<@CommonQueryMacro.GroupBox id="groupbox3" label="ɾ����Ϣ" expand="true">
							<table frame=void class="grouptable" width="100%">
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">ɾ��ԭ��</td>
									<td colspan="1" class="datatd"><@CommonQueryMacro.SingleField fId="actiondesc"/></td>
								</tr>
							</table>
						</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
			</table>
		</td>
	</tr>

	<#assign op=RequestParameters["op"]?default("")>
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
	var op = "${RequestParameters["op"]?default('')}";
	//ϵͳ��Ϣ��ǩԼ��Ϣֻ��
	function initCallGetter_post() {
	//��ִ��ʽ
		var repStatus = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("repStatus");
		if("00" == repStatus) {
			document.getElementById("repHref").href="#";
			document.getElementById("repHref").style.color = "#999999";
		}
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("actiontype",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("recStatus",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("approveStatus",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("approveResult",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("repStatus",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("crtTm",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("lstUpdTm",true);
		//ǩԼ��Ϣֻ��
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("strdecode",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("branchcode",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("clientcode",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("clientname",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("contractdate",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("contract",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("contractamount",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("maturity",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("lincame",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("lincamethod",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("aginraup",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("aginralo",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("aginraloinpay",true);
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("remark",true);
		//��ֹ֧�����ֻ��
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("terpaycode",true);

		if(op == "del") {
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("branchcode",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("tertype",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("terpaycode",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("terdate",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("terpayamtormb",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("terrmbpayam",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("terpaycurr",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("terpaycurram",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("remark",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("filler2",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("remark1",true);
		}
		if(op == "detail") {
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("branchcode",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("tertype",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("terpaycode",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("terdate",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("terpayamtormb",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("terrmbpayam",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("terpaycurr",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("terpaycurram",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("remark",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("remark1",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("filler2",true);
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("actiondesc",true);

		}
		if(op == "mod") {
			bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("actiondesc",true);
		}

	}
	function btBack_onClick() {
		closeWin(true);
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
	//��js����֤���ֶ�[���ڻ�����ʶ��],[��ֹ֧������]���[��ͬ��],[��ֹ֧����ҽ��]��
		var branchcode = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("branchcode");
		var terpaycode = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("terpaycode");
		var contract = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("contract");
		var terpayamtormb = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("terpayamtormb");
		var terpaycurram = bopCfaStrdeDsEntryTerminateAdd_dataset.getString("terpaycurram");
		var terpaycurr = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("terpaycurr");
		var terrmbpayam = bopCfaStrdeDsEntryTerminateAdd_dataset.getString("terrmbpayam");
		if(branchcode.length != 12) {
			alert("�ֶ�[���ڻ�����ʶ��]������12Ϊ�ַ�");
			return false;
		}
		if(terpaycode.length != 4) {
			alert("�ֶ�[��ֹ֧������]������4λ�ַ�");
			return false;
		}
		if(contract.length > 32) {
			alert("��ͬ�ű���С�ڵ���32λ");
			return false;
		}
		if(terrmbpayam.length == 0 && terpaycurram.length == 0) {
			alert("��ֹ�����֧���������ֹ���֧�����������һ����");
			return false;
		}
		//��ֹ���֧�����ֺ���ֹ���֧�����Ϊһ�����ݣ�����ͬʱΪ�ջ��߲�Ϊ�ա� terpaycurr terpaycurram
		if((terpaycurr.length == 0 && terpaycurram.length != 0) || (terpaycurr.length != 0 && terpaycurram.length == 0)) {
			alert("��ֹ���֧�����ֺ���ֹ���֧��������ͬʱΪ�ջ��߲�Ϊ��");
			return false;
		}
		return true;
	}

	function delClickCheck(button) {
		var actiondesc = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("actiondesc");
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
		var id = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("id");
		var appType = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("appType");
		var currentfile = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("currentfile");
		var busiCode =  bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("strdecode");
		showPickup("��˽��","${contextPath}/fpages/commonloadpage/ftl/ReportApproveResult.ftl?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile +"&busiCode="+busiCode,440,220);
	}
	function doRepDet(){
		var id = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("id");
		var appType = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("appType");
		var currentfile = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("currentfile");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile, 600, 500);
	}

</script>
</@CommonQueryMacro.page>
