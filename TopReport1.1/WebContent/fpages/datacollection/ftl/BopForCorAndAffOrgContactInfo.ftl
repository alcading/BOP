<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<#assign op=RequestParameters["op"]?default("")>
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
<@CommonQueryMacro.CommonQuery id="BopForCorAndAffOrgContact" init="true" submitMode="current" navigate="false" >
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
									<td class="datatd" ><@CommonQueryMacro.SingleField fId="exdebtcode"/></td>
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
									<td class="datatd" ><@CommonQueryMacro.SingleField	fId="spapfeboindex"/></td>
									<td align="center" colspan="2" nowrap class="labeltd">�껯����ֵ</td>
									<td class="datatd" ><@CommonQueryMacro.SingleField  fId="anninrate"/></td>
								</tr>
								<tr>

								    <td align="center" nowrap class="labeltd">ҵ����ˮ��</td>
									<td class="datatd" ><@CommonQueryMacro.SingleField  fId="filler2"/></td>

									<td  align="center"  colspan="2" nowrap class="labeltd">��ע</td>
									<td class="datatd" ><@CommonQueryMacro.SingleField fId="remark"/></td>

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
			//BopForCorAndAffOrgContact_dataset.setValue2("creditortype","20001602");
			//BopForCorAndAffOrgContact_dataset.setValue("creditortypeName","������ҵ�����֧����������");
			BopForCorAndAffOrgContact_dataset.setValue2("floatrate","N");
			BopForCorAndAffOrgContact_dataset.setValue2("spapfeboindex","N");
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("exdebtcode",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("debtorcode",true);
			//BopForCorAndAffOrgContact_dataset.setFieldReadOnly("creditortype",false);
			document.getElementById("sysMsgGroup").style.display="none";
		}
		if (op == "delete") {
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("exdebtcode",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("debtype",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("debtorcode",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("contractcurr",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("contractamount",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("valuedate",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("maturity",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("floatrate",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("anninrate",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("inprterm",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("spapfeboindex",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("remark",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("limitType",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("creditorcode",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("creditorname",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("creditornamen",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("creditortype",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("crehqcode",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("opercode",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("filler2",true);
		}
		if (op == "modify") {
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("exdebtcode",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("actiondesc",true);
		}
		if (op == "detail"){
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("exdebtcode",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("debtype",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("debtorcode",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("contractcurr",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("contractamount",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("valuedate",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("maturity",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("floatrate",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("anninrate",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("inprterm",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("spapfeboindex",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("remark",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("actiondesc",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("limitType",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("creditorcode",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("creditorname",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("creditornamen",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("creditortype",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("crehqcode",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("opercode",true);
			BopForCorAndAffOrgContact_dataset.setFieldReadOnly("filler2",true);
			//���水ť����
			document.getElementById("btSave").style.display="none";
		}
		BopForCorAndAffOrgContact_dataset.setFieldReadOnly("actiontype",true);
		BopForCorAndAffOrgContact_dataset.setFieldReadOnly("recStatus",true);
		BopForCorAndAffOrgContact_dataset.setFieldReadOnly("approveStatus",true);
		BopForCorAndAffOrgContact_dataset.setFieldReadOnly("repStatus",true);
		BopForCorAndAffOrgContact_dataset.setFieldReadOnly("crtTm",true);
		BopForCorAndAffOrgContact_dataset.setFieldReadOnly("lstUpdTm",true);
		BopForCorAndAffOrgContact_dataset.setFieldReadOnly("approveResult",true);

		//TODO �ж������ϸ�ͻ�ִ��ϸ
		var repStatus = BopForCorAndAffOrgContact_dataset.getValue("repStatus");
		if (repStatus != "02") {
			document.getElementById("repHerf").href="#";
			document.getElementById("repHerf").style.color="#999999";
		}
	}

	function btSave_onClickCheck(){
		if (op == "new") {
			BopForCorAndAffOrgContact_dataset.setParameter("op",op);
			var v_creditorname = BopForCorAndAffOrgContact_dataset.getValue("creditorname");
			var v_creditornamen = BopForCorAndAffOrgContact_dataset.getValue("creditornamen");
			if( v_creditorname == "" && v_creditornamen == "" ){
				alert("ÿ��ծȨ�˵��������ƺ�Ӣ�����Ʊ�����һ����");
				return false;
			}
		}
		if (op == "modify") {
			if (!BopForCorAndAffOrgContact_dataset.modified) {
				alert("�����޸ĺ��ٱ��棡");
				return false;
			}
			var v_creditorname = BopForCorAndAffOrgContact_dataset.getValue("creditorname");
			var v_creditornamen = BopForCorAndAffOrgContact_dataset.getValue("creditornamen");
			if( v_creditorname == "" && v_creditornamen == "" ){
				alert("ÿ��ծȨ�˵��������ƺ�Ӣ�����Ʊ�����һ����");
				return false;
			}
			BopForCorAndAffOrgContact_dataset.setParameter("op",op);
		}
		if (op == "delete") {
			var actiondesc = BopForCorAndAffOrgContact_dataset.getValue("actiondesc");
			if (actiondesc.length == 0) {
				alert("����дɾ��ԭ��");
				return false;
			}
			BopForCorAndAffOrgContact_dataset.setParameter("op", op);
		}
	}

	function doRepDet(){
		var id = BopForCorAndAffOrgContact_dataset.getValue("id");
		var appType = BopForCorAndAffOrgContact_dataset.getValue("appType");
		var currentfile = BopForCorAndAffOrgContact_dataset.getValue("currentfile");
		var busiCode = BopForCorAndAffOrgContact_dataset.getValue("exdebtcode");
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