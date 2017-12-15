<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign op=RequestParameters["op"]?default("")>
<@CommonQueryMacro.page title="���ڸ���/�ж�֪ͨ��">
<@CommonQueryMacro.CommonQuery id="BopFDsCollection" init="true" submitMode="all" navigate="false">
		<table width="95%" cellpadding="2">
			<tr>
				<td width="75%" valign="top">
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<@CommonQueryMacro.GroupBox id="guoup1" label="������Ϣ" expand="true">
									<table frame=void class="grouptable" width="100%">
										<tr>
											<td align="center" colspan="2" nowrap class="labeltd">�걨����</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="rptno"/></td>
											<td align="center" colspan="2" nowrap class="labeltd">�տ�������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="oppuser"/></td>
										</tr>
										<tr>
											<td rowspan="4" align="center" nowrap class="labeltd">��������Ϣ</td>
											<td align="center" nowrap class="labeltd">����������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="custype"/></td>
											<td rowspan="3" align="center" nowrap class="labeltd">������Ϣ</td>
											<td align="center" nowrap class="labeltd">������ʺ�/���п���</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="lcyacc"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">��֯��������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="custcod"/></td>
											<td align="center" nowrap class="labeltd">������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="lcyamt"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">�������֤������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="idcode"/></td>
											<td align="center" nowrap class="labeltd">�������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="exrate"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">����������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="custnm"/></td>
											<td rowspan="2" align="center" nowrap class="labeltd">�ֻ���Ϣ</td>
											<td align="center" nowrap class="labeltd">����ʺ�/���п���</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="fcyacc"/></td>
										</tr>
										<tr>
											<td rowspan="3" align="center" nowrap class="labeltd">������Ϣ</td>
											<td align="center" nowrap class="labeltd">�������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="txccy"/></td>
											<td align="center" nowrap class="labeltd">�ֻ���</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="fcyamt"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="txamt"/></td>
											<td rowspan="2" align="center" nowrap class="labeltd">������Ϣ</td>
											<td align="center" nowrap class="labeltd">�����ʺ�/���п���</td>
											<td class="datatd" ><@CommonQueryMacro.SingleField fId="othacc"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">���㷽ʽ</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="method"/></td>
											<td align="center" nowrap class="labeltd">�������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="othamt"/></td>
										</tr>
										<tr>
											<td rowspan="2" align="center" nowrap class="labeltd">ʵ�ʸ�����Ϣ</td>
											<td align="center" nowrap class="labeltd">ʵ�ʸ������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="actuccy"/></td>
											<td rowspan="3" align="center" nowrap class="labeltd">����֤��Ϣ</td>
											<td align="center" nowrap class="labeltd">����֤���</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="lcbgno"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">ʵ�ʸ�����</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="actuamt"/></td>
											<td align="center" nowrap class="labeltd">����</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="tenor"/></td>
										</tr>
										<tr>
											<td rowspan="2" align="center" nowrap class="labeltd">�۷���Ϣ</td>
											<td align="center" nowrap class="labeltd">�۷ѱ���</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="outchargeccy"/></td>
											<td align="center" nowrap class="labeltd">��֤����</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="issdate"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">�۷ѽ��</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="outchargeamt"/></td>
											<td align="center" colspan="2" nowrap class="labeltd">����ҵ����</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="buscode"/></td>
										</tr>
										<tr>
											<td align="center" colspan="2" nowrap class="labeltd">ҵ����ˮ��</td>
											<td class="datatd" colspan="4"><@CommonQueryMacro.SingleField fId="filler2"/></td>
										</tr>
									</table>
								</@CommonQueryMacro.GroupBox>
							</td>
						</tr>
					</table>
				</td>

				<td width="8px"></td>
				<td width="25%" valign="top" id="sysMsgGroup">
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<@CommonQueryMacro.GroupBox id="BOPCfaLounexguRecordAD1" label="ϵͳ��Ϣ"  expand="true">
									<table frame=void class="grouptable" width="100%">
										<tr>
											<td align="center" nowrap class="labeltd">��������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="actiontype"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">��¼״̬</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="recStatus"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">����״̬ </td>
											<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="approveStatus" /></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">������� </td>
											<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="approveResult" /></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">��ִ״̬ </td>
											<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="repStatus" /><a id="repHerf" href="javascript:doRepDet()">��ִ���</a></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">����ʱ��</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="crtTm"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">������ʱ��</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="lstUpdTm"/></td>
										</tr>
									</table>
								</@CommonQueryMacro.GroupBox>
							</td>
						</tr>

						<tr>
							<td>
								<@CommonQueryMacro.GroupBox id="BOPCfaLounexguRecordAD2" label="�޸�/ɾ����Ϣ"   expand="true">
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

			<tr>
				<td align="left" colspan="3">
					<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;
					<@CommonQueryMacro.Button id= "btBack"/>&nbsp;&nbsp;
				</td>
			</tr>
		</table>
</@CommonQueryMacro.CommonQuery>
<script language="JavaScript">

	var op = "${op}";

	function initCallGetter_post(){
		
		//�ϱ��ɹ�  ɾ��/�޸�ԭ�� ����   �ϱ�δ����  ɾ��/�޸���ֻ��  add by  huangcheng
		var subSuccess = BopFDsCollection_dataset.getValue("subSuccess");
		if(subSuccess=="0"&&"modify"==op){
			BopFDsCollection_dataset.setFieldReadOnly("actiondesc",true);
		}
	   //end
		if(op == "new"){
			BopFDsCollection_dataset.setFieldReadOnly("rptno",true);
			document.getElementById("sysMsgGroup").style.display="none";
		}
		if (op == "delete") {
			BopFDsCollection_dataset.setFieldReadOnly("rptno",true);
			BopFDsCollection_dataset.setFieldReadOnly("oppuser",true);
			BopFDsCollection_dataset.setFieldReadOnly("custype",true);
			BopFDsCollection_dataset.setFieldReadOnly("lcyacc",true);
			BopFDsCollection_dataset.setFieldReadOnly("idcode",true);
			BopFDsCollection_dataset.setFieldReadOnly("lcyamt",true);
			BopFDsCollection_dataset.setFieldReadOnly("custcod",true);
			BopFDsCollection_dataset.setFieldReadOnly("exrate",true);
			BopFDsCollection_dataset.setFieldReadOnly("custnm",true);
			BopFDsCollection_dataset.setFieldReadOnly("fcyacc",true);
			BopFDsCollection_dataset.setFieldReadOnly("txccy",true);
			BopFDsCollection_dataset.setFieldReadOnly("fcyamt",true);
			BopFDsCollection_dataset.setFieldReadOnly("txamt",true);
			BopFDsCollection_dataset.setFieldReadOnly("othacc",true);
			BopFDsCollection_dataset.setFieldReadOnly("buscode",true);
			BopFDsCollection_dataset.setFieldReadOnly("othamt",true);
			BopFDsCollection_dataset.setFieldReadOnly("actuccy",true);
			BopFDsCollection_dataset.setFieldReadOnly("actuamt",true);
			BopFDsCollection_dataset.setFieldReadOnly("outchargeccy",true);
			BopFDsCollection_dataset.setFieldReadOnly("outchargeamt",true);
			BopFDsCollection_dataset.setFieldReadOnly("method",true);
			BopFDsCollection_dataset.setFieldReadOnly("lcbgno",true);
			BopFDsCollection_dataset.setFieldReadOnly("issdate",true);
			BopFDsCollection_dataset.setFieldReadOnly("tenor",true);
			BopFDsCollection_dataset.setFieldReadOnly("filler2",true);
			BopFDsCollection_dataset.setFieldReadOnly("actiondesc",false);
		}
		if (op == "modify") {
			BopFDsCollection_dataset.setFieldReadOnly("rptno",true);
			BopFDsCollection_dataset.setFieldReadOnly("filler2",true);
		}
		if (op == "detail"){
			BopFDsCollection_dataset.setFieldReadOnly("filler2",true);
			BopFDsCollection_dataset.setFieldReadOnly("rptno",true);
			BopFDsCollection_dataset.setFieldReadOnly("oppuser",true);
			BopFDsCollection_dataset.setFieldReadOnly("custype",true);
			BopFDsCollection_dataset.setFieldReadOnly("lcyacc",true);
			BopFDsCollection_dataset.setFieldReadOnly("idcode",true);
			BopFDsCollection_dataset.setFieldReadOnly("lcyamt",true);
			BopFDsCollection_dataset.setFieldReadOnly("custcod",true);
			BopFDsCollection_dataset.setFieldReadOnly("exrate",true);
			BopFDsCollection_dataset.setFieldReadOnly("custnm",true);
			BopFDsCollection_dataset.setFieldReadOnly("fcyacc",true);
			BopFDsCollection_dataset.setFieldReadOnly("txccy",true);
			BopFDsCollection_dataset.setFieldReadOnly("fcyamt",true);
			BopFDsCollection_dataset.setFieldReadOnly("txamt",true);
			BopFDsCollection_dataset.setFieldReadOnly("othacc",true);
			BopFDsCollection_dataset.setFieldReadOnly("buscode",true);
			BopFDsCollection_dataset.setFieldReadOnly("othamt",true);
			BopFDsCollection_dataset.setFieldReadOnly("actuccy",true);
			BopFDsCollection_dataset.setFieldReadOnly("actuamt",true);
			BopFDsCollection_dataset.setFieldReadOnly("outchargeccy",true);
			BopFDsCollection_dataset.setFieldReadOnly("outchargeamt",true);
			BopFDsCollection_dataset.setFieldReadOnly("method",true);
			BopFDsCollection_dataset.setFieldReadOnly("lcbgno",true);
			BopFDsCollection_dataset.setFieldReadOnly("issdate",true);
			BopFDsCollection_dataset.setFieldReadOnly("tenor",true);
			BopFDsCollection_dataset.setFieldReadOnly("actiondesc",true);
			//���水ť����
			document.getElementById("btSave").style.display="none";
		}
		BopFDsCollection_dataset.setFieldReadOnly("actiontype",true);
		BopFDsCollection_dataset.setFieldReadOnly("recStatus",true);
		BopFDsCollection_dataset.setFieldReadOnly("approveStatus",true);
		BopFDsCollection_dataset.setFieldReadOnly("repStatus",true);
		BopFDsCollection_dataset.setFieldReadOnly("crtTm",true);
		BopFDsCollection_dataset.setFieldReadOnly("lstUpdTm",true);
		BopFDsCollection_dataset.setFieldReadOnly("approveResult",true);
		
		//TODO �жϻ�ִ��ϸ
		var repStatus = BopFDsCollection_dataset.getValue("repStatus");
		if (repStatus != "02") {
			document.getElementById("repHerf").href="#";
			document.getElementById("repHerf").style.color="#999999";
		}
	}
	
	function btSave_onClickCheck(){
		if (op == "new" || op == "modify") {
			//�������޸�ҳ��У��
			BopFDsCollection_dataset.getField("idcode").require=false;
			BopFDsCollection_dataset.getField("custcod").required=false;
			var custype = BopFDsCollection_dataset.getValue("custype");
			//CUSTYPE<>Cʱ����
			if(custype != "C"){
				BopFDsCollection_dataset.getField("idcode").required=true;
			}
			//CUSTYPE=Cʱ����
			if(custype == "C"){
				BopFDsCollection_dataset.getField("custcod").required=true;
			}
		}
		if (op == "delete") {
			var actiondesc = BopFDsCollection_dataset.getValue("actiondesc");
			if (actiondesc.length == 0) {
				alert("����дɾ��ԭ��");
				return false;
			}
		}
		BopFDsCollection_dataset.setParameter("op", op);
		return true;
	}
	
	function doRepDet(){
		var id = BopFDsCollection_dataset.getValue("id");
		var appType = BopFDsCollection_dataset.getValue("appType");
		var currentfile = BopFDsCollection_dataset.getValue("currentfile");
		//var busiCode = BopFDsCollection_dataset.getValue("exdebtcode");
		var busiCode = ""; //���ô����Ӻ��촦��ó�ҵ���߼�����
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