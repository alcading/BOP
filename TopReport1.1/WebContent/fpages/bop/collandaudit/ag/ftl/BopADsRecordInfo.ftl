<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="������Ϣ">
<@CommonQueryMacro.CommonQuery id="bopADsRecordInfo" init="true" insertOnEmpty="true" navigate="false">
<table width="90%" cellpadding="2">
	<tr>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<@CommonQueryMacro.GroupBox id="groupbox1" label="������Ϣ" expand="true">
						<table frame="void" class="grouptable" width="100%">
							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">�걨����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="rptno"/></td>
								<td colspan="2" align="center" nowrap class="labeltd">����������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="oppuser"/></td>
							</tr>
							<tr>
								<td rowspan="4" align="center" nowrap class="labeltd">�տ�����Ϣ</td>
								<td align="center" nowrap class="labeltd">�տ������� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="custype" /></td>
								<td rowspan="3" align="center" nowrap class="labeltd">�����Ϣ</td>
								<td align="center" nowrap class="labeltd">����� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="lcyamt" /></td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">�տ�������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="custnm"/></td>
								<td align="center" nowrap class="labeltd">������ʺ�/���п���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="lcyacc" /></td>
								
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">�������֤������ </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="idcode" /></td>
								<td align="center" nowrap class="labeltd">������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="exrate" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">��֯��������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="custcod" /></td>
								<td colspan="1" rowspan="2" align="center" nowrap class="labeltd">�ֻ���Ϣ</td>
								<td align="center" nowrap class="labeltd">�ֻ���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="fcyamt" /></td>
							</tr>
							<tr>
								<td colspan="1" rowspan="3" align="center" nowrap class="labeltd">�������Ϣ</td>
								<td align="center" nowrap class="labeltd">�������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="txamt" /></td>
								<td align="center" nowrap class="labeltd">����ʺ�/���п��� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="fcyacc" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">�������� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="txccy" /></td>
								<td colspan="1" rowspan="2" align="center" nowrap class="labeltd">������Ϣ</td>
								<td align="center" nowrap class="labeltd">�������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="othamt" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">���㷽ʽ </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="method" /></td>
								<td align="center" nowrap class="labeltd">�����ʺ�/���п���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="othacc" /></td>
							</tr>
							<tr>
								<td colspan="1" rowspan="2" align="center" nowrap class="labeltd">�������п۷���Ϣ</td>
								<td align="center" nowrap class="labeltd">�������п۷ѱ��� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="inchargeccy" /></td>
								<td colspan="1" rowspan="2" align="center" nowrap class="labeltd">�������п۷���Ϣ</td>
								<td align="center" nowrap class="labeltd">�������п۷ѱ��� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="outchargeccy" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">�������п۷ѽ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="inchargeamt" /></td>
								<td align="center" nowrap class="labeltd">�������п۷ѽ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="outchargeamt" /></td>
							</tr>
							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">����ҵ����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="buscode" /></td>
								<td colspan="2" align="center" nowrap class="labeltd">ҵ����ˮ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="filler2" /></td>
							</tr>
						</table> 
						</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
			</table>
		</td>
		<td width="8px"></td>
		<td valign="top">
			<table id="systemMessageTable" width="100%" cellpadding="0" cellspacing="0" style="">
				<tr>
					<td><@CommonQueryMacro.GroupBox id="groupbox2" label="ϵͳ��Ϣ"
						expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>
								<td align="center" nowrap class="labeltd">��������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="actiontype" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd" >��¼״̬</td>
								<td class="datatd" >
									<@CommonQueryMacro.SingleField fId="recStatus" />
								</td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">����״̬</td>
								<td nowrap class="datatd">
									<@CommonQueryMacro.SingleField fId="approveStatus" />
								</td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">�������</td>
								<td nowrap class="datatd">
									<@CommonQueryMacro.SingleField fId="approveResult" />
								</td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">��ִ״̬
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="repStatus"/><a id="repResult" href="JavaScript:doRepDet()">��ִ˵��<a/>
								</td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">����ʱ��</td>
								<td nowrap class="datatd">
									<@CommonQueryMacro.SingleField fId="crtTm" />
								</td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">������ʱ��</td>
								<td nowrap class="datatd">
									<@CommonQueryMacro.SingleField fId="lstUpdTm" />
								</td>
							</tr>
						</table>
						</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
				<tr id="actiondescTrTd"><td>
					<@CommonQueryMacro.GroupBox id="groupbox3" label="�޸�/ɾ��ԭ��"  expand="true">
						<table frame=void class="grouptable" width="100%" >
							<tr>
								<td align="center" nowrap class="labeltd">�޸�/ɾ��ԭ��</td>
								<td class="datatd" ><@CommonQueryMacro.SingleField fId="actiondesc"/></td>
							</tr>
						</table>
					</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td align="left" colspan="3">
			<@CommonQueryMacro.Button id="btSave"/>&nbsp; &nbsp;<@CommonQueryMacro.Button id="btBack"/>
		</td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>
<script language="JavaScript">
	var op = "${RequestParameters["op"]?default('')}";
	var ds = bopADsRecordInfo_dataset;
	
	function initCallGetter_post(){
		//��ִ˵��������ʽ
		var repStatus = ds.getValue("repStatus");
		if(repStatus == "00" || repStatus == "01") {
			document.getElementById("repResult").href = "javascript:void(0)";
			document.getElementById("repResult").style.color = "#999999";
		}
		//ϵͳ��Ϣֻ��
		ds.setFieldReadOnly("actiontype",true);
		ds.setFieldReadOnly("recStatus",true);
		ds.setFieldReadOnly("approveStatus",true);
		ds.setFieldReadOnly("approveResult",true);
		ds.setFieldReadOnly("repStatus",true);
		ds.setFieldReadOnly("crtTm",true);
		ds.setFieldReadOnly("lstUpdTm",true);
		//�걨����ֻ��
		ds.setFieldReadOnly("rptno",true);
		if(op == "det" || op == "mod") {
			ds.setFieldReadOnly("filler2",true);
		}
		//�ϱ��ɹ�  ɾ��/�޸�ԭ�� ����   �ϱ�δ����  ɾ��/�޸���ֻ��  add by  huangcheng
		var subSuccess = ds.getValue("subSuccess");
		if(subSuccess=="0"&&"mod"==op){
			ds.setFieldReadOnly("actiondesc",true);			
		}
		if (op == "add") {	//��������ϵͳ��Ϣ
			$("#actiondescTrTd").get(0).style.display="none";
			$("#systemMessageTable").get(0).style.display="none";
		} else if (op == "del") {	// ɾ��
			setCommonReadOnly();
			ds.getField("actiondesc").required = true;
		} else if (op == "det") {	// ��ϸ
			//������Ϣֻ��
			setCommonReadOnly();
			ds.setFieldReadOnly("actiondesc",true);
			//���水ť����
			$("#btSave").get(0).style.display="none";
		}
	}
	
	function setCommonReadOnly() {
		ds.setFieldReadOnly("workDate",true);
		ds.setFieldReadOnly("custype",true);
		ds.setFieldReadOnly("idcode",true);
		ds.setFieldReadOnly("custcod",true);
		ds.setFieldReadOnly("custnm",true);
		ds.setFieldReadOnly("oppuser",true);
		ds.setFieldReadOnly("txccy",true);
		ds.setFieldReadOnly("txamt",true);
		ds.setFieldReadOnly("method",true);
		ds.setFieldReadOnly("buscode",true);
		ds.setFieldReadOnly("inchargeccy",true);
		ds.setFieldReadOnly("inchargeamt",true);
		ds.setFieldReadOnly("outchargeccy",true);
		ds.setFieldReadOnly("outchargeamt",true);
		ds.setFieldReadOnly("lcyamt",true);
		ds.setFieldReadOnly("lcyacc",true);
		ds.setFieldReadOnly("exrate",true);
		ds.setFieldReadOnly("fcyamt",true);
		ds.setFieldReadOnly("fcyacc",true);
		ds.setFieldReadOnly("othamt",true);
		ds.setFieldReadOnly("othacc",true);
		ds.setFieldReadOnly("filler2",true);
	}
	
	function doRepDet(){
		var id = ds.getValue("id");
		var appType = ds.getValue("appType");
		var currentfile = ds.getValue("currentfile");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile, 600, 500);
	}

	function btBack_onClick(){
		closeWin();
	}
	
	function btSave_onClickCheck(button) {
		if(op == "del"){
			var actiondesc = ds.getValue("actiondesc");
			if(actiondesc == null || actiondesc == "") {
				alert("�ֶ�[�޸�/ɾ��ԭ��]����Ϊ��");
				return false;
			}
		} 
		ds.setParameter("op",op);
		return true;
	}
	
	function btSave_postSubmit(button){
		alert("����ɹ���");
		closeWin(true);
	}
</script>
</@CommonQueryMacro.page>