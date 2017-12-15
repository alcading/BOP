<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="������Ϣ">
<@CommonQueryMacro.CommonQuery id="JshDfDsCollInfo" init="true"
insertOnEmpty="true" navigate="false">
<table width="95%" cellpadding="2">
	<tr>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td>
					<@CommonQueryMacro.GroupBox id="groupbox1" label="������Ϣ"
						expand="true">
						<table frame="void" class="grouptable" width="100%">
							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">�걨����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="rptno"/></td>

								<td colspan="2" align="right" nowrap class="labeltd">����ҵ����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="buscode"/></td>
							</tr>
							<tr>
								<td rowspan="3" colspan="1" align="center" nowrap class="labeltd">�տ�����Ϣ</td>
								<td rowspan="1" align="center" nowrap class="labeltd">������˻��˺�</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="lcyacc"/></td>

								<td rowspan="5" colspan="1" align="center" nowrap class="labeltd">�����������Ϣ</td>
								<td colspan="1" align="center" nowrap class="labeltd">�����������������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="custype"/></td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">������տ�������
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="oppuser"/></td>
								<td colspan="1" align="center" nowrap class="labeltd">�����������֯��������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="custcod"/></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">������˻�������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="oppbank"/></td>
									
								<td colspan="1" align="center" nowrap class="labeltd">��������˸������֤������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="idcode"/></td>									
							</tr>
							<tr>
								<td rowspan="3" colspan="1" align="center" nowrap class="labeltd">�����Ϣ</td>
								<td colspan="1" align="center" nowrap class="labeltd">�����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="fcyamt"/></td>									
								<td colspan="1" align="center" nowrap class="labeltd">�������������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="custnm"/></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">�ұ�</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="fcyccy"/></td>
								<td colspan="1" align="center" nowrap class="labeltd">����˻��˺�</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="fcyacc"/></td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="exrate"/></td>		
								<td colspan="2" align="center" nowrap class="labeltd">ҵ����ˮ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="filler2"/></td>
														
							</tr>
						</table> 
						</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
				<tr style="padding-top:20px;">
					<td align="left" colspan="3"><@CommonQueryMacro.Button
					id="btSave"/>&nbsp; &nbsp;<@CommonQueryMacro.Button id="btBack"/></td>
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
									fId="repStatus"/><a id="repResult" href="JavaScript:doRepDet()">��ִ˵��<a/>
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
				<tr id="actiondescTrTd"><td>
					<@CommonQueryMacro.GroupBox id="groupbox3" label="�޸�/ɾ��ԭ����Ϣ"  expand="true">
						<table frame=void class="grouptable" width="100%" >
							<tr>
								<td  align="center" nowrap class="labeltd">�޸�/ɾ��ԭ��</td>
								<td class="datatd" ><@CommonQueryMacro.SingleField fId="actiondesc"/></td>
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
	var ds = JshDfDsCollInfo_dataset;
	//ϵͳ��Ϣֻ��
	function initCallGetter_post() {
		//��ִ˵��������ʽ
		var repStatus = ds.getValue("repStatus");
		if(repStatus != "02") {
			document.getElementById("repResult").href = "javascript:void(0)";
			document.getElementById("repResult").style.color = "#999999";
		}
		ds.setFieldReadOnly("actiontype",true);
		ds.setFieldReadOnly("recStatus",true);
		ds.setFieldReadOnly("approveStatus",true);
		ds.setFieldReadOnly("approveResult",true);
		ds.setFieldReadOnly("repStatus",true);
		ds.setFieldReadOnly("crtTm",true);
		ds.setFieldReadOnly("lstUpdTm",true);
		//�걨����ֻ��
		ds.setFieldReadOnly("rptno",true);
		//û�ϱ��޸�ԭ��ֻ��
		var subSuccess = ds.getValue("subSuccess");
		if(subSuccess == "0") {
			if(op == "mod") {
				ds.setFieldReadOnly("actiondesc",true);
			}
		}
		//����������ϵͳ��Ϣ
		if(op == "add") {
			$("#actiondescTrTd").get(0).style.display="none";
			$("#systemMessageTable").get(0).style.display="none";
		}
		if(op == "detail") {
			$("#btSave").get(0).style.display="none";
			//������Ϣֻ��
			setCommonReadOnly();
			ds.setFieldReadOnly("actiondesc",true);
		}
		if(op == "del") {
			setCommonReadOnly();
			ds.getField("actiondesc").required = true;
		}
		if(op == "mod") {
			ds.setFieldReadOnly("filler2",true);
		}
	}
	//���û�����Ϣֻ��
	function setCommonReadOnly() {
		ds.setFieldReadOnly("rptno",true);
		ds.setFieldReadOnly("buscode",true);
		ds.setFieldReadOnly("custype",true);
		ds.setFieldReadOnly("custcod",true);
		ds.setFieldReadOnly("idcode",true);
		ds.setFieldReadOnly("custnm",true);
		ds.setFieldReadOnly("fcyacc",true);
		ds.setFieldReadOnly("lcyacc",true);
		ds.setFieldReadOnly("oppuser",true);
		ds.setFieldReadOnly("oppbank",true);
		ds.setFieldReadOnly("fcyamt",true);
		ds.setFieldReadOnly("fcyccy",true);
		ds.setFieldReadOnly("exrate",true);
		ds.setFieldReadOnly("filler2",true);
	}
	function btBack_onClick() {
		closeWin();
	}
	function btSave_onClickCheck(button) {
		ds.setParameter("op",op);
		return true;
	}
	
	function btSave_postSubmit(button){
		alert("����ɹ���");
		closeWin(true);
	}
	function doRepDet(){
		var id = ds.getValue("id");
		var appType = ds.getValue("appType");
		var currentfile = ds.getValue("currentfile");
		//var busiCode = ds.getValue("fileNumber");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile, 600, 500);
	}

</script>
</@CommonQueryMacro.page>
