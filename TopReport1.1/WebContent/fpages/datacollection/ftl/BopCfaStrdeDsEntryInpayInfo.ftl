<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign CommonQueryConfig = statics["com.huateng.commquery.config.CommonQueryUtil"].getCommonQueryBean("bopCfaStrdeDsEntryInpayAdd")>
<#assign op=RequestParameters["op"]?default("")>
<#if op=="mod">
	${CommonQueryConfig.setAnyValue("navigate","��ҵ��������ҽṹ�Դ����Ϣ��¼&gt; ��ֹ��Ϣ &gt; �޸�")}
</#if>
<#if op=="del">
	${CommonQueryConfig.setAnyValue("navigate","��ҵ��������ҽṹ�Դ����Ϣ��¼&gt; ��ֹ��Ϣ &gt; ɾ��")}
</#if>
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
	<@CommonQueryMacro.CommonQuery id="bopCfaStrdeDsEntryInpayAdd" init="true" insertOnEmpty="true" navigate="false">
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
								<@CommonQueryMacro.Group id ="groupbox1" label="��Ϣ������Ϣ"
									fieldStr="inpaycode,inpaymonth,inpayrmbam,inpaycurr,inpaycurram,filler2,remark1" colNm=4/>
							</td>
						</tr>
					</table>
				</td>

				<td width="8px"></td>
				<td valign="top">
					<table width="80%" cellpadding="0" cellspacing="0">
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
											<td colspan="1" class="datatd"><@CommonQueryMacro.SingleField
												fId="actiondesc"/></td>
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
					<td align="left" colspan="3"><@CommonQueryMacro.Button id="btSave"/>&nbsp; &nbsp;<@CommonQueryMacro.Button id="btBack"/></td>
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
	var ds = bopCfaStrdeDsEntryInpayAdd_dataset;
	//ϵͳ��Ϣ��ǩԼ��Ϣֻ��
	function initCallGetter_post() {
		//��ִ��ʾ
		var repStatus = ds.getValue("repStatus");
		if("00" == repStatus) {
			document.getElementById("repHref").href = "#";
			document.getElementById("repHref").style.color = "#999999";
		}
		ds.setFieldReadOnly("actiontype",true);
		ds.setFieldReadOnly("recStatus",true);
		ds.setFieldReadOnly("approveStatus",true);
		ds.setFieldReadOnly("approveResult",true);
		ds.setFieldReadOnly("repStatus",true);
		ds.setFieldReadOnly("crtTm",true);
		ds.setFieldReadOnly("lstUpdTm",true);
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
		//��Ϣ���ֻ��
		ds.setFieldReadOnly("inpaycode",true);
	}
	function btBack_onClick() {
		closeWin();
	}

	if(op == "del") {
		ds.setFieldReadOnly("inpaycode",true);
		ds.setFieldReadOnly("inpaymonth",true);
		ds.setFieldReadOnly("inpayrmbam",true);
		ds.setFieldReadOnly("inpaycurr",true);
		ds.setFieldReadOnly("inpaycurram",true);
		ds.setFieldReadOnly("terpaycurr",true);
		ds.setFieldReadOnly("terpaycurram",true);
		ds.setFieldReadOnly("filler2",true);
		ds.setFieldReadOnly("remark1",true);
	}
	if(op == "detail") {
		ds.setFieldReadOnly("inpaycode",true);
		ds.setFieldReadOnly("inpaymonth",true);
		ds.setFieldReadOnly("inpayrmbam",true);
		ds.setFieldReadOnly("inpaycurr",true);
		ds.setFieldReadOnly("inpaycurram",true);
		ds.setFieldReadOnly("terpaycurr",true);
		ds.setFieldReadOnly("terpaycurram",true);
		ds.setFieldReadOnly("remark1",true);
		ds.setFieldReadOnly("remark",true);
		bopCfaStrdeDsEntryInpayAdd_dataset.setFieldReadOnly("filler2",true);
		ds.setFieldReadOnly("actiondesc",true);
	}
	if(op == "mod") {
		ds.setFieldReadOnly("actiondesc",true);
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
	//��js����֤���ֶ�
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

	function delClickCheck(button) {
		var actiondesc = ds.getValue("actiondesc");
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
		var id = ds.getValue("id");
		var appType = ds.getValue("appType");
		var currentfile = ds.getValue("currentfile");
		var busiCode =  ds.getValue("strdecode");
		showPickup("��˽��","${contextPath}/fpages/commonloadpage/ftl/ReportApproveResult.ftl?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile +"&busiCode="+busiCode,440,220);
	}
	function doRepDet(){
		var id = ds.getValue("id");
		var appType = ds.getValue("appType");
		var currentfile = ds.getValue("currentfile");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile, 600, 500);
	}

</script>
</@CommonQueryMacro.page>
