<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#global contextPath = contextPath>
<@CommonQueryMacro.page title="�ʽ�������ͽṺ����Ϣ��ϸ">
<@CommonQueryMacro.CommonQuery id="bopCfaStrdeDsEntryInoutMoAdd" init="true" insertOnEmpty="true" navigate="false">
<table width="75%">
	<tr width="100%">
		<td valign="top">
			<@CommonQueryMacro.Group id ="groupbox1" label="�ʽ�������ͽṺ����Ϣ"
				fieldStr="branchcode,buocmonth,currency,moexamusd,moamreusd,mopfexamusd,mosettamusd,filler2,remark" colNm=4/>

			<table>
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
</table>
</@CommonQueryMacro.CommonQuery>
<script language="javascript">
	var op = "${RequestParameters["op"]?default('')}";
	var ds = bopCfaStrdeDsEntryInoutMoAdd_dataset;
	function btBack_onClick() {
		closeWin();
	}
	//ֻ��
	function initCallGetter_post() {
		ds.setFieldReadOnly("branchcode",true);
		//ϵͳ��Ϣֻ��
		ds.setFieldReadOnly("actiontype",true);
		ds.setFieldReadOnly("recStatus",true);
		ds.setFieldReadOnly("approveStatus",true);
		ds.setFieldReadOnly("approveResult",true);
		ds.setFieldReadOnly("repStatus",true);
		ds.setFieldReadOnly("crtTm",true);
		ds.setFieldReadOnly("lstUpdTm",true);
		//��ִ˵����ʽ
		var repStatus = ds.getValue("repStatus");
		if("00" == repStatus) {
			document.getElementById("repHref").href = "#";
			document.getElementById("repHref").style.color = "#999999";
		}
		if(op == "mod") ds.setFieldReadOnly("actiondesc",true);
		if(op == "del") {
			ds.setFieldReadOnly("branchcode",true);
			ds.setFieldReadOnly("buocmonth",true);
			ds.setFieldReadOnly("currency",true);
			ds.setFieldReadOnly("moexamusd",true);
			ds.setFieldReadOnly("moamreusd",true);
			ds.setFieldReadOnly("mopfexamusd",true);
			ds.setFieldReadOnly("filler2",true);
			ds.setFieldReadOnly("mosettamusd",true);
			ds.setFieldReadOnly("remark",true);
		}
		if(op == "detail") {
			ds.setFieldReadOnly("branchcode",true);
			ds.setFieldReadOnly("buocmonth",true);
			ds.setFieldReadOnly("currency",true);
			ds.setFieldReadOnly("moexamusd",true);
			ds.setFieldReadOnly("moamreusd",true);
			ds.setFieldReadOnly("mopfexamusd",true);
			ds.setFieldReadOnly("mosettamusd",true);
			ds.setFieldReadOnly("filler2",true);
			ds.setFieldReadOnly("remark",true);
			ds.setFieldReadOnly("actiondesc",true);

		}
	}
	//���水ť�ύǰ���ͳһ����
	//mod 2012-10-24 ���ں�̨��֤
	function btSave_onClickCheck(button) {
		if(op = "mod") 	return modClickCheck();
		if(op = "del")	return delClickCheck(button);
		return true;
	}
	//�ж��ǲ���"��"
	function isBlank(value) {
		if(value == null || value == "") {
			return true;
		}
		return false;
	}
	//��Ϣ������Ϣ���水ť���
	function modClickCheck() {
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
	function delClickCheck(button) {
		var actiondesc = ds.getValue("actiondesc");
		if(actiondesc == null || actiondesc == "") {
			alert("�ֶ�[ɾ��ԭ��]����Ϊ��");
			return false;
		}
		return true;
	}

	function btSave_postSubmit(button) {
		alert("����ɹ�");
		closeWin(true);
	}

	function doApproveDet(){
		var id = ds.getValue("id");
		var appType = ds.getValue("appType");
		var currentfile = ds.getValue("currentfile");
		showPickup("��˽��","${contextPath}/fpages/commonloadpage/ftl/ReportApproveResult.ftl?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile ,440,220);
	}
	function doRepDet(){
		var id = ds.getValue("id");
		var appType = ds.getValue("appType");
		var currentfile = ds.getValue("currentfile");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile, 600, 500);
	}
</script>
</@CommonQueryMacro.page>
