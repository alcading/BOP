<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign op=RequestParameters["op"]?default("")>
<@CommonQueryMacro.page title="���Ŵ���ǩԼ��Ϣ">
<table width="90%" align="left">
	<tr>
		<td width="75%" valign="top">
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
			<@CommonQueryMacro.CommonQuery id="bopForDebtYinTuanChange" init="true" submitMode="all" navigate="false">
				<tr>
					<td>
						<@CommonQueryMacro.GroupBox id="guoup1" label="������Ϣ" expand="true">
							<table frame=void class="grouptable" width="100%">
								<tr>
									<td align="center" nowrap class="labeltd" width="25%"> ��ծ��� </td>
									<td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="exdebtcode"/>
										<input id="loadYinTuan" extra="button" style='width=25px;height=17px;' onclick="loadYinTuan();" type='button' value='...'/></td>
									<td align="center" nowrap class="labeltd" width="25%"> ծ������ </td>
									<td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="debtype"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd"> ծ���˴��� </td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="debtorcode"/></td>
									<td align="center" nowrap class="labeltd"> ǩԼ���� </td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="contractcurr"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd"> ǩԼ��� </td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="contractamount"/></td>
									<td align="center" nowrap class="labeltd"> ��Ϣ�� </td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="valuedate"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd"> ������ </td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="maturity"/></td>
									<td align="center" nowrap class="labeltd"> �Ƿ񸡶����� </td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="floatrate"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd"> �껯����ֵ </td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="anninrate"/></td>
									<td align="center" nowrap class="labeltd"> �Ƿ�����Ϣ�������� </td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="inprterm"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd"> �Ƿ�������������ռ��ָ�� </td>
									<td class="datatd" colspan="3"><@CommonQueryMacro.SingleField fId="spapfeboindex"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd"> ��ע </td>
									<td colspan="3" class="datatd"><@CommonQueryMacro.SingleField fId="debtyperema"/></td>
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
								<td align="center" nowrap class="labeltd" width="25%"> ����ҵ��κ� </td>
								<td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="buscode"/></td>
								<td align="center" nowrap class="labeltd" width="25%"> �䶯��� </td>
								<td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="changeno"/></td>
							</tr>
							<tr>
								<td  align="center" nowrap class="labeltd"> �䶯���� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="changtype"/></td>
								<td align="center" nowrap class="labeltd"> �䶯���� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="chdate"/></td>
							</tr>
							<tr>
								<td  align="center" nowrap class="labeltd"> �䶯���� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="chcurrency"/></td>
								<td align="center" nowrap class="labeltd"> �䶯��� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="chamount"/></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd"> ���ʼ�ֵ </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="fairvalue"/></td>
								<td align="center" nowrap class="labeltd"> ҵ����ˮ�� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="filler2"/></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd"> ��ע </td>
								<td class="datatd" colspan="3" width="75%"><@CommonQueryMacro.SingleField fId="remark"/></td>
							</tr>
						</table>
						</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
		  		<tr>
		  			<td>
		  				<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;
						<@CommonQueryMacro.Button id= "btBack"/>&nbsp;&nbsp;
		  			</td>
		  		</tr>
		  	</table>
	  	</td>
	  	<td width="8px"></td>
	  	<td width="25%" valign="top" id="sysMsgGroup">
				<@CommonQueryMacro.GroupBox id="guoup3" label="ϵͳ��Ϣ" expand="true">
		            <table frame=void class="grouptable" width="100%">
						<tr>
							<td align="center" nowrap class="labeltd" width="25%">��������</td>
							<td nowrap class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="actiontype" /></td>
						</tr>
						<tr>
							<td align="center" nowrap class="labeltd" width="25%">��¼״̬</td>
							<td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="recStatus" /></td>
						</tr>
						<tr>
							<td align="center" nowrap class="labeltd">����״̬</td>
							<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="approveStatus" /></td>
						</tr>
						<tr>
							<td align="center" nowrap class="labeltd">�������</td>
							<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="approveResult" /></td>
						</tr>
						<tr>
							<td align="center" nowrap class="labeltd">��ִ״̬</td>
							<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="repStatus" /><a id="repHerf" href="javascript:doRepDet()">��ִ���</a></td>
						</tr>
						<tr>
							<td align="center" nowrap class="labeltd">����ʱ��</td>
							<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="crtTm" /></td>
						</tr>
						<tr>
							<td align="center" nowrap class="labeltd">������ʱ��</td>
							<td class="datatd"><@CommonQueryMacro.SingleField fId="lstUpdTm" /></td>
						</tr>
					</table>
				</@CommonQueryMacro.GroupBox>
				<@CommonQueryMacro.GroupBox id="guoup4" label="ɾ��ԭ��" expand="true">
					<table frame=void class="grouptable" width="100%">
						<tr>
							<td align="center" nowrap class="labeltd" width="25%">ɾ��ԭ��</td>
							<td class="datatd" width="75%"><@CommonQueryMacro.SingleField fId="actiondesc" /></td>
						</tr>
					</table>
				</@CommonQueryMacro.GroupBox>
			</@CommonQueryMacro.CommonQuery>
		</td>
	</tr>
</table>

<script language="JavaScript">

	function changtype_DropDown_beforeOpen(dropDown){
		DataDicTreeSelectCor_DropDownDataset.setParameter("headDataTypeNo","31");
	}

	var op = "${op}";

	function initCallGetter_post(){
		if (op == "new"){
			if (bopForDebtYinTuanChange_dataset.length==0) {
				bopForDebtYinTuanChange_dataset.insertRecord("end");
			}
			<#assign v_changeno = statics["com.huateng.report.utils.ReportUtils"].getTempStr(null,4)>
			bopForDebtYinTuanChange_dataset.setValue("changeno", "${v_changeno}");
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("changeno",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("exdebtcode",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("debtype",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("debtorcode",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("contractcurr",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("contractamount",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("valuedate",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("maturity",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("floatrate",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("anninrate",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("inprterm",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("spapfeboindex",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("debtyperema",true);
			document.getElementById("sysMsgGroup").style.display="none";
		}
		if (op == "delete") {
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("exdebtcode",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("debtype",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("debtorcode",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("contractcurr",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("contractamount",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("valuedate",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("maturity",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("floatrate",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("anninrate",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("inprterm",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("spapfeboindex",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("remark",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("debtyperema",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("buscode",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("changeno",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("changtype",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("chdate",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("chcurrency",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("chamount",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("fairvalue",true);
			document.getElementById("loadYinTuan").style.display="none";
		}
		if (op == "modify") {
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("changeno",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("exdebtcode",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("debtype",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("debtorcode",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("contractcurr",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("contractamount",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("valuedate",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("maturity",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("floatrate",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("anninrate",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("inprterm",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("spapfeboindex",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("debtyperema",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("actiondesc",true);

			bopForDebtYinTuanChange_dataset.setFieldReadOnly("buscode",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("changeno",true);
			document.getElementById("loadYinTuan").style.display="none";
		}
		if (op == "detail"){
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("exdebtcode",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("debtype",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("debtorcode",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("contractcurr",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("contractamount",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("valuedate",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("maturity",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("floatrate",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("anninrate",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("inprterm",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("spapfeboindex",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("remark",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("actiondesc",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("debtyperema",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("buscode",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("changeno",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("changtype",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("chdate",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("chcurrency",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("chamount",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("fairvalue",true);
			bopForDebtYinTuanChange_dataset.setFieldReadOnly("filler2",true);
			//���水ť����
			document.getElementById("btSave").style.display="none";
			document.getElementById("loadYinTuan").style.display="none";
		}
		bopForDebtYinTuanChange_dataset.setFieldReadOnly("actiontype",true);
		bopForDebtYinTuanChange_dataset.setFieldReadOnly("recStatus",true);
		bopForDebtYinTuanChange_dataset.setFieldReadOnly("approveStatus",true);
		bopForDebtYinTuanChange_dataset.setFieldReadOnly("repStatus",true);
		bopForDebtYinTuanChange_dataset.setFieldReadOnly("crtTm",true);
		bopForDebtYinTuanChange_dataset.setFieldReadOnly("lstUpdTm",true);
		bopForDebtYinTuanChange_dataset.setFieldReadOnly("approveResult",true);

		//TODO �ж������ϸ�ͻ�ִ��ϸ
		var repStatus = bopForDebtYinTuanChange_dataset.getValue("repStatus");
		if (repStatus != "02") {
			document.getElementById("repHerf").href="#";
			document.getElementById("repHerf").style.color="#999999";
		}
	}

	function btSave_onClickCheck(){
		if (op == "new") {
			var exdebtcode = bopForDebtYinTuanChange_dataset.getValue("exdebtcode");
			if (exdebtcode.length == 0) {
				alert("��ѡ����ծ��ţ�");
				return false;
			}
			bopForDebtYinTuanChange_dataset.setParameter("op",op);
		}
		if (op == "modify") {
			if (!bopForDebtYinTuanChange_dataset.modified) {
				alert("�����޸ĺ��ٱ��棡");
				return false;
			}
			bopForDebtYinTuanChange_dataset.setParameter("op",op);
		}
		if (op == "delete") {
			var actiondesc = bopForDebtYinTuanChange_dataset.getValue("actiondesc");
			if (actiondesc.length == 0) {
				alert("����дɾ��ԭ��");
				return false;
			}
			bopForDebtYinTuanChange_dataset.setParameter("op", op);
		}
	}

	function doRepDet(){
		var id = bopForDebtYinTuanChange_dataset.getValue("id");
		var appType = bopForDebtYinTuanChange_dataset.getValue("appType");
		var currentfile = bopForDebtYinTuanChange_dataset.getValue("currentfile");
		var busiCode = bopForDebtYinTuanChange_dataset.getValue("exdebtcode");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile + "&busiCode=" + busiCode, 600, 500);
	}

	function loadYinTuan(){
		showPickup("���Ŵ���ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/winloadpage/BopForDebtYinTuanLoadPage.ftl");
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