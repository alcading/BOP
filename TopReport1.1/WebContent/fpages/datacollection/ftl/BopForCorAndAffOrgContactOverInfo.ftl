<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<#assign op=RequestParameters["op"]?default("")>
<@CommonQueryMacro.page title="�����Ϣ">
<@CommonQueryMacro.CommonQuery id="BopForCorAndAffOrgContactOver" init="true" submitMode="current" navigate="false" >
	<table  width="95%" cellpadding="2">
		<tr>
			<td  width="75%" valign="top"   >
				<table width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							<@CommonQueryMacro.GroupBox id="guoup1" label="������Ϣ"  expand="true">
							<table frame=void class="grouptable" width="100%">
								<tr>
									<td align="center" nowrap class="labeltd">��ծ���</td>
									<td class="datatd" ><@CommonQueryMacro.SingleField fId="exdebtcode"/>
									<input id="loadFeiOrgSave" extra="button" style='width=25px;height=17px;' onclick="loadFeiOrgSave();" type='button' value='...'/></td>
									<td rowspan="6" align="center" nowrap class="labeltd">ծȨ����Ϣ</td>
									<td align="center" nowrap class="labeltd">����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField  fId="creditorcode"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd" width="25%">ծ���˴���</td>
									<td class="datatd" width="25%"><@CommonQueryMacro.SingleField  fId="debtorcode"/></td>
									<td align="center" nowrap class="labeltd" width="25%">��������</td>
									<td class="datatd" width="25%"><@CommonQueryMacro.SingleField  fId="creditorname"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">ծ������</td>
									<td class="datatd" ><@CommonQueryMacro.SingleField  fId="debtype"/></td>
									<td align="center" nowrap class="labeltd">Ӣ������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField  fId="creditornamen"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">��Ϣ��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField  fId="valuedate"/></td>
									<td align="center" nowrap class="labeltd">���ʹ���</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="creditortype"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">ǩԼ����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField	fId="contractcurr"/></td>
									<td align="center" nowrap class="labeltd">�ܲ����ڹ��ң�����������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField	fId="crehqcode"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">�Ƿ񸡶�����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField  fId="floatrate"/></td>
									<td align="center" nowrap class="labeltd">��Ӫ�����ڹ��ң�����������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField	fId="opercode"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">�Ƿ�������������ռ��ָ��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField	fId="spapfeboindex"/></td>
									<td align="center" colspan="2" nowrap class="labeltd">�껯����ֵ</td>
									<td class="datatd" ><@CommonQueryMacro.SingleField  fId="anninrate"/></td>
								</tr>


							</table>
							</@CommonQueryMacro.GroupBox>
						</td>
					</tr>
					<tr>
						<td>
							<@CommonQueryMacro.GroupBox id="guoup1" label="�����Ϣ"  expand="true">
							<table frame=void class="grouptable" width="100%">
								<tr>
									<td align="center" colspan="2" nowrap class="labeltd" >�����ʺ�</td>
									<td class="datatd" ><@CommonQueryMacro.SingleField  fId="buscode"/></td>

										<td align="center" colspan="2" nowrap class="labeltd">�䶯���</td>
									<td class="datatd" ><@CommonQueryMacro.SingleField fId="changeno"/></td>

								</tr>
								<tr>
							    <td align="center" colspan="2" nowrap class="labeltd">�䶯����</td>
									<td class="datatd" ><@CommonQueryMacro.SingleField  fId="chdate"/></td>

									<td align="center" colspan="2" nowrap class="labeltd" >��ծ���</td>
									<td class="datatd" ><@CommonQueryMacro.SingleField  fId="accoamount"/></td>
								</tr>
								<tr>
									<td align="center" colspan="2" nowrap class="labeltd">ҵ����ˮ��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField  fId="filler2"/></td>

									<td align="center" colspan="2" nowrap class="labeltd">��ע</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="remark"/></td>
								</tr>
							</table>
							</@CommonQueryMacro.GroupBox>
						</td>
					</tr>
				</table>
			</td>

			<td width="8px"></td>
			<td width="25%"  valign="top" id="sysMsgGroup">
				<table width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td>
						  <@CommonQueryMacro.GroupBox id="BOPCfaLounexguRecordAD1" label="ϵͳ��Ϣ"  expand="true">
							<table frame=void class="grouptable" width="100%">
								<tr>
									<td  align="center" nowrap class="labeltd">��������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="actiontype"/></td>
								</tr>
								<tr>

									<td  align="center" nowrap class="labeltd" width="25%">��¼״̬</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="recStatus"/></td>
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
									<td  align="center" nowrap class="labeltd">����ʱ��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="crtTm"/></td>
								</tr>
								<tr>
									<td  align="center" nowrap class="labeltd">������ʱ��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="lstUpdTm"/></td>
								</tr>

								</table>
							  </@CommonQueryMacro.GroupBox>
							</td>
						</tr>

						<tr>
							<td>
							  <@CommonQueryMacro.GroupBox id="BOPCfaLounexguRecordAD2" label="ɾ����Ϣ"   expand="true">
								<table frame=void class="grouptable" width="100%" >
									<tr>
										<td  align="center" nowrap class="labeltd">ɾ��ԭ��</td>
										<td class="datatd" ><@CommonQueryMacro.SingleField fId="actiondesc"/></td>
									</tr>
								</table>
							  </@CommonQueryMacro.GroupBox>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr >
				<td align="left" colspan="3">
					<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;
					<@CommonQueryMacro.Button id= "btBack"/>&nbsp;&nbsp;
				</td>
			</tr>
	</table>
</@CommonQueryMacro.CommonQuery>
<script language="JavaScript">

	function debtype_DropDown_beforeOpen(dropDown){
		DataDicTreeSelect_DropDownDataset.setParameter("headDataTypeNo","24");
	}

	function creditortype_DropDown_beforeOpen(dropDown){
		DataDicTreeSelectCor_DropDownDataset.setParameter("headDataTypeNo","23");
	}

	var op = "${op}";

	function initCallGetter_post(){
		if (op == "new") {
			if (BopForCorAndAffOrgContactOver_dataset.length==0) {
				BopForCorAndAffOrgContactOver_dataset.insertRecord("end");
			}
			<#assign v_changeno = statics["com.huateng.report.utils.ReportUtils"].getTempStr(null,4)>
			BopForCorAndAffOrgContactOver_dataset.setValue("changeno", "${v_changeno}");
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("changeno",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("exdebtcode",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("exdebtcode", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("debtype", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("debtorcode", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditorcode", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditorname", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditornamen", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("limitType", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditortype", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("valuedate", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("crehqcode", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("contractcurr", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("opercode", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("floatrate", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("anninrate", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("spapfeboindex", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("debtyperema", true);

			document.getElementById("sysMsgGroup").style.display="none";
		}
		if (op == "delete") {
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("exdebtcode",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("debtype",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("debtorcode",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("contractcurr",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("contractamount",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("valuedate",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("maturity",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("floatrate",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("anninrate",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("inprterm",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("spapfeboindex",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("remark",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("limitType",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditorcode",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditorname",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditornamen",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditortype",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("crehqcode",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("opercode",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("debtyperema", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("changeno", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("chdate", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("buscode", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("accoamount", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("filler2", true);

			document.getElementById("loadFeiOrgSave").style.display="none";
		}
		if (op == "modify") {
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("changeno",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("exdebtcode",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("exdebtcode", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("debtype", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("debtorcode", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditorcode", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditorname", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditornamen", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("limitType", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditortype", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("valuedate", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("crehqcode", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("contractcurr", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("opercode", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("floatrate", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("anninrate", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("spapfeboindex", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("debtyperema", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("filler1", true);
			//BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("filler2", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("actiondesc",true);
			document.getElementById("loadFeiOrgSave").style.display="none";
		}
		if (op == "detail"){
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("exdebtcode",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("debtype",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("debtorcode",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("contractcurr",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("contractamount",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("valuedate",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("maturity",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("floatrate",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("anninrate",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("inprterm",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("spapfeboindex",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("remark",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("actiondesc",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("limitType",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditorcode",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditorname",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditornamen",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("creditortype",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("crehqcode",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("opercode",true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("debtyperema", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("changeno", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("chdate", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("buscode", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("accoamount", true);
			BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("filler2", true);
			//���水ť����
			document.getElementById("btSave").style.display="none";
			document.getElementById("loadFeiOrgSave").style.display="none";
		}
		BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("actiontype",true);
		BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("recStatus",true);
		BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("approveStatus",true);
		BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("repStatus",true);
		BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("crtTm",true);
		BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("lstUpdTm",true);
		BopForCorAndAffOrgContactOver_dataset.setFieldReadOnly("approveResult",true);

		//TODO �ж������ϸ�ͻ�ִ��ϸ
		var repStatus = BopForCorAndAffOrgContactOver_dataset.getValue("repStatus");
		if (repStatus != "02") {
			document.getElementById("repHerf").href="#";
			document.getElementById("repHerf").style.color="#999999";
		}
	}

	function btSave_onClickCheck(){
		if (op == "new") {
			BopForCorAndAffOrgContactOver_dataset.setParameter("op",op);
		}
		if (op == "modify") {
			if (!BopForCorAndAffOrgContactOver_dataset.modified) {
				alert("�����޸ĺ��ٱ��棡");
				return false;
			}
			BopForCorAndAffOrgContactOver_dataset.setParameter("op",op);
		}
		if (op == "delete") {
			var actiondesc = BopForCorAndAffOrgContactOver_dataset.getValue("actiondesc");
			if (actiondesc.length == 0) {
				alert("����дɾ��ԭ��");
				return false;
			}
			BopForCorAndAffOrgContactOver_dataset.setParameter("op", op);
		}
	}

	function doRepDet(){
		var id = BopForCorAndAffOrgContactOver_dataset.getValue("id");
		var appType = BopForCorAndAffOrgContactOver_dataset.getValue("appType");
		var currentfile = BopForCorAndAffOrgContactOver_dataset.getValue("currentfile");
		var busiCode = BopForCorAndAffOrgContactOver_dataset.getValue("exdebtcode");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile + "&busiCode=" + busiCode, 600, 500);
	}

	function loadFeiOrgSave(){
		showPickup("�������м�������������ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/winloadpage/BopForCorAndAffOrgConLoadPage.ftl");
	}

	function btBack_onClick(){
		closeWin();
	}

	function btSave_postSubmit(button){
		alert("����ɹ���");
		closeWin();
	}
</script>
</@CommonQueryMacro.page>