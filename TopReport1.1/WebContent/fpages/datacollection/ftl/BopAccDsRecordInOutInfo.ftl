<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign CommonQueryConfig = statics["com.huateng.commquery.config.CommonQueryUtil"].getCommonQueryBean("bopAccDsRecordInOutInfo")>
<#assign op=RequestParameters["op"]?default("")>
<#if op=="detail">
	${CommonQueryConfig.setAnyValue("navigate","����˻���¼ &gt; �����˻���Ϣ&gt; ��ϸ")}
</#if>
<#if op=="modify">
	${CommonQueryConfig.setAnyValue("navigate","����˻���¼ &gt; �����˻���Ϣ&gt; �޸�")}
</#if>
<#if op=="delete">
	${CommonQueryConfig.setAnyValue("navigate","����˻���¼ &gt; �����˻���Ϣ&gt; ɾ��")}
</#if>
<@CommonQueryMacro.page title="�˻�������Ϣ">
	<@CommonQueryMacro.CommonQuery id="bopAccDsRecordInOutInfo" init="true" submitMode="all" navigate="false">
		<table width="90%" cellpadding="2">
			<tr>
				<td width="75%" valign="top">
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<@CommonQueryMacro.GroupBox id="guoup1" label="������Ϣ" expand="true">
									<table frame=void class="grouptable" width="100%">
										<tr>
											<td align="center" nowrap class="labeltd"> �ʺ� </td>
											<td class="datatd" > <@CommonQueryMacro.SingleField fId="accountno"/><input id="loadAccountButton" extra="button" style='width=25px;height=17px;' onclick="loadAccount();" type='button' value='...'/></td>
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
					</table>
				</td>
				<td width="8px"></td>
				<td width="25%"  valign="top">
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<@CommonQueryMacro.GroupBox id="guoup3" label="ϵͳ��Ϣ" expand="true">
									<table frame=void class="grouptable" width="100%">
										<tr>
											<td align="center" nowrap class="labeltd"  width="25%"> �������� </td>
											<td nowrap class="datatd"  width="25%"> <@CommonQueryMacro.SingleField fId="actiontype" /></td>
										</tr>
										<tr>
											<td  align="center" nowrap class="labeltd"  width="25%"> ��¼״̬ </td>
											<td class="datatd"  width="25%"> <@CommonQueryMacro.SingleField fId="recStatus" /></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd" > ����״̬ </td>
											<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="approveStatus" /></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd" > ������� </td>
											<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="approveResult" /></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd" > ��ִ״̬ </td>
											<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="repStatus" /><a id="repHerf" href="javascript:doRepDet()">��ִ���</a></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd" > ����ʱ�� </td>
											<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="crtTm" /></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd" > ������ʱ�� </td>
											<td class="datatd" > <@CommonQueryMacro.SingleField fId="lstUpdTm" /></td>
										</tr>
									</table>
								</@CommonQueryMacro.GroupBox>
							</td>
						</tr>
						<tr>
							<td>
								<@CommonQueryMacro.GroupBox id="guoup4" label="ɾ��ԭ��" expand="true">
									<table frame=void class="grouptable" width="100%">
										<tr>
											<td align="center" nowrap class="labeltd" width="25%"> ɾ��ԭ�� </td>
											<td class="datatd" width="75%"> <@CommonQueryMacro.SingleField fId="actiondesc" /></td>
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
					<@CommonQueryMacro.Button id="btSave"/>&nbsp;&nbsp;
					<@CommonQueryMacro.Button id="btBack"/>
				</td>
			</tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
	<script language="JavaScript">
		var op = "${op}";

		function initCallGetter_post(){
			if (op == "delete") {
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("amtype",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("enCode",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("accountType",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("enName",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("accountCata",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("fileNumber",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("limitType",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("accountLimit",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("balance",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("credit",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("debit",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("remark2",true);
			}
			if (op == "modify") {
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("amtype",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("enCode",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("accountType",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("enName",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("accountCata",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("fileNumber",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("limitType",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("accountLimit",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("actiondesc",true);
			}
			if (op == "detail"){
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("amtype",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("enCode",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("accountType",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("enName",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("accountCata",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("fileNumber",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("limitType",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("accountLimit",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("balance",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("credit",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("debit",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("remark2",true);
				bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("actiondesc",true);
				//���水ť����
				document.getElementById("btSave").style.display="none";
			}
			//����ѡ���˺ŵİ�ť
			document.getElementById("loadAccountButton").style.display="none";

			bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("accountno",true);
			bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("currencyCode",true);
			bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("dealDate",true);
			bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("actiontype",true);
			bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("recStatus",true);
			bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("approveStatus",true);
			bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("repStatus",true);
			bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("crtTm",true);
			bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("lstUpdTm",true);
			bopAccDsRecordInOutInfo_dataset.setFieldReadOnly("approveResult",true);
			//TODO �ж������ϸ�ͻ�ִ��ϸ
			var repStatus = bopAccDsRecordInOutInfo_dataset.getValue("repStatus");
			if (repStatus != "02") {
				document.getElementById("repHerf").href="#";
				document.getElementById("repHerf").style.color="#999999";
			}
		}

		function btSave_onClickCheck(){
			if (op == "modify") {
			var repStatus = bopAccDsRecordInOutInfo_dataset.getValue("repStatus");
				if (!bopAccDsRecordInOutInfo_dataset.modified && '01' != repStatus) {
					alert("�����޸ĺ��ٱ��棡");
					return false;
				}
				bopAccDsRecordInOutInfo_dataset.setParameter("op",op);
			}
			if (op == "delete") {
				var actiondesc = bopAccDsRecordInOutInfo_dataset.getValue("actiondesc");
				if (actiondesc.length == 0) {
					alert("����дɾ��ԭ��");
					return false;
				}
				bopAccDsRecordInOutInfo_dataset.setParameter("op", op);
			}
		}

		function doRepDet(){
			var id = bopAccDsRecordInOutInfo_dataset.getValue("id");
			var appType = bopAccDsRecordInOutInfo_dataset.getValue("appType");
			var currentfile = bopAccDsRecordInOutInfo_dataset.getValue("currentfile");
			var busiCode = bopAccDsRecordInOutInfo_dataset.getValue("fileNumber");
			showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile + "&busiCode=" + busiCode, 600, 500);
		}

		function btBack_onClick(){
			closeWin();
		}

		function btSave_postSubmit(button){
			alert("����ɹ���");
			closeWin(true);
		}
	</script>
</@CommonQueryMacro.page>