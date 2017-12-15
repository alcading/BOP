<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign op=RequestParameters["op"]?default("")>
<@CommonQueryMacro.page title="���Ŵ���ǩԼ��Ϣ">
<table width="90%" align="left">
	<tr>
		<td width="75%" valign="top">
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td>
					<@CommonQueryMacro.CommonQuery id="bopForDebtYinTuanSigned" init="true" submitMode="all" navigate="false">
						<@CommonQueryMacro.GroupBox id="guoup1" label="������Ϣ" expand="true">
							<table frame=void class="grouptable" width="100%">
								<tr>
									<td align="center" nowrap class="labeltd" width="25%"> ��ծ��� </td>
									<td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="exdebtcode"/></td>
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
									<td class="datatd"><@CommonQueryMacro.SingleField fId="spapfeboindex"/></td>
									<td align="center" nowrap class="labeltd"> ҵ����ˮ��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="filler2"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd"> ��ע </td>
									<td colspan="3" class="datatd"><@CommonQueryMacro.SingleField fId="remark"/></td>
								</tr>
							</table>
						</@CommonQueryMacro.GroupBox>
					</@CommonQueryMacro.CommonQuery>
					</td>
				</tr>
				<tr>
					<td>
					<@CommonQueryMacro.CommonQuery id="bopForDebtYinTuanProject" init="true" submitMode="all" navigate="false" insertOnEmpty="true">
						<@CommonQueryMacro.GroupBox id="guoup2" label="��Ŀ��Ϣ" expand="true">
							<table frame=void width="100%">
								<tr>
									<td id="proMenu" align="right">
										<@CommonQueryMacro.Button id= "btProNew"/>&nbsp;&nbsp;
										<@CommonQueryMacro.Button id= "btProDel"/>&nbsp;&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<@CommonQueryMacro.DataTable id="datatable1" fieldStr="projectname" width="100%" hasFrame="true" height="200px" readonly="false"/>
									</td>
								</tr>
							</table>
						</@CommonQueryMacro.GroupBox>
					</@CommonQueryMacro.CommonQuery>
					</td>
				</tr>
				<tr>
					<td>
		  			<@CommonQueryMacro.CommonQuery id="bopForDebtYinTuanCreditor" init="true" submitMode="all" navigate="false" insertOnEmpty="true">
						<@CommonQueryMacro.GroupBox id="guoup3" label="ծȨ����Ϣ" expand="true">
							<table frame=void width="100%">
								<tr>
									<td id="creMenu" align="right">
										<@CommonQueryMacro.Button id= "btCreNew"/>&nbsp;&nbsp;
										<@CommonQueryMacro.Button id= "btCreDel"/>&nbsp;&nbsp;
									</td>
								</tr>
								<tr>
									<td>
									<@CommonQueryMacro.DataTable id="datatable2" fieldStr="creditorcode,creditorname,creditornamen,creditorca,creditortype,crehqcode,opercode" width="100%" hasFrame="true" height="200px" readonly="false"/>
									</td>
								</tr>
							</table>
						</@CommonQueryMacro.GroupBox>
			  		</@CommonQueryMacro.CommonQuery>
		  			</td>
		  		</tr>
		  		<@CommonQueryMacro.CommonQuery id="bopForDebtYinTuanSigned" mode="1" navigate="false">
		  		<tr>
		  			<td>
		  				<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;
						<@CommonQueryMacro.Button id= "btBack"/>&nbsp;&nbsp;
		  			</td>
		  		</tr>
		  	</table>
	  	</td>
	  	<td width="8px"></td>
	  	<td width="25%" valign="top">
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

	function debtype_DropDown_beforeOpen(dropDown){
		DataDicTreeSelect_DropDownDataset.setParameter("headDataTypeNo","24");
	}

	function creditortype_DropDown_beforeOpen(dropDown){
		DataDicTreeSelectCor_DropDownDataset.setParameter("headDataTypeNo","23");
	}

	var op = "${op}";

	function initCallGetter_post(){
		if (op == "delete") {
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("exdebtcode",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("debtype",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("debtorcode",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("contractcurr",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("contractamount",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("valuedate",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("maturity",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("floatrate",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("anninrate",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("inprterm",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("spapfeboindex",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("remark",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("filler2",true);

			bopForDebtYinTuanProject_dataset.setFieldReadOnly("projectname",true);

			bopForDebtYinTuanCreditor_dataset.setFieldReadOnly("creditorcode",true);
			bopForDebtYinTuanCreditor_dataset.setFieldReadOnly("creditorname",true);
			bopForDebtYinTuanCreditor_dataset.setFieldReadOnly("creditornamen",true);
			bopForDebtYinTuanCreditor_dataset.setFieldReadOnly("creditorca",true);
			bopForDebtYinTuanCreditor_dataset.setFieldReadOnly("creditortype",true);
			bopForDebtYinTuanCreditor_dataset.setFieldReadOnly("crehqcode",true);
			bopForDebtYinTuanCreditor_dataset.setFieldReadOnly("opercode",true);

			//���水ť����
			document.getElementById("proMenu").style.display="none";
			document.getElementById("creMenu").style.display="none";
		}
		if (op == "modify") {
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("exdebtcode",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("debtype",false);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("debtorcode",false);
			//bopForDebtYinTuanSigned_dataset.setFieldReadOnly("contractcurr",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("contractcurr",false);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("contractamount",false);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("valuedate",false);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("maturity",false);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("floatrate",false);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("anninrate",false);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("inprterm",false);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("spapfeboindex",false);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("remark",false);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("actiondesc",true);
		}
		if (op == "detail"){
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("exdebtcode",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("debtype",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("debtorcode",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("contractcurr",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("contractamount",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("valuedate",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("maturity",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("floatrate",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("anninrate",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("inprterm",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("spapfeboindex",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("remark",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("filler2",true);
			bopForDebtYinTuanSigned_dataset.setFieldReadOnly("actiondesc",true);

			bopForDebtYinTuanProject_dataset.setFieldReadOnly("projectname",true);

			bopForDebtYinTuanCreditor_dataset.setFieldReadOnly("creditorcode",true);
			bopForDebtYinTuanCreditor_dataset.setFieldReadOnly("creditorname",true);
			bopForDebtYinTuanCreditor_dataset.setFieldReadOnly("creditornamen",true);
			bopForDebtYinTuanCreditor_dataset.setFieldReadOnly("creditorca",true);
			bopForDebtYinTuanCreditor_dataset.setFieldReadOnly("creditortype",true);
			bopForDebtYinTuanCreditor_dataset.setFieldReadOnly("crehqcode",true);
			bopForDebtYinTuanCreditor_dataset.setFieldReadOnly("opercode",true);
			//���水ť����
			document.getElementById("proMenu").style.display="none";
			document.getElementById("creMenu").style.display="none";
			document.getElementById("btSave").style.display="none";
		}
		bopForDebtYinTuanSigned_dataset.setFieldReadOnly("actiontype",true);
		bopForDebtYinTuanSigned_dataset.setFieldReadOnly("recStatus",true);
		bopForDebtYinTuanSigned_dataset.setFieldReadOnly("approveStatus",true);
		bopForDebtYinTuanSigned_dataset.setFieldReadOnly("repStatus",true);
		bopForDebtYinTuanSigned_dataset.setFieldReadOnly("crtTm",true);
		bopForDebtYinTuanSigned_dataset.setFieldReadOnly("lstUpdTm",true);
		bopForDebtYinTuanSigned_dataset.setFieldReadOnly("approveResult",true);

		//TODO �ж������ϸ�ͻ�ִ��ϸ
		var repStatus = bopForDebtYinTuanSigned_dataset.getValue("repStatus");
		if (repStatus != "02") {
			document.getElementById("repHerf").href="#";
			document.getElementById("repHerf").style.color="#999999";
		}
	}

	function btSave_onClickCheck(){
		if (op == "modify") {
			if (bopForDebtYinTuanCreditor_dataset.length == 0) {
				alert("����дծȨ�ˣ�");
				return false;
			}
			var record = bopForDebtYinTuanCreditor_dataset.getFirstRecord();
			var v_contractamount = bopForDebtYinTuanSigned_dataset.getValue("contractamount");
			v_contractamount = v_contractamount - 0;
			var  total_creditorca = 0;
			while(record){
				var v_creditorname = record.getValue("creditorname");
				var v_creditornamen = record.getValue("creditornamen");
				var v_creditorca = record.getValue("creditorca") - 0;
				total_creditorca = total_creditorca + v_creditorca;
				if( v_creditorname == "" && v_creditornamen == "" ){
					alert("ÿ��ծȨ�˵��������ƺ�Ӣ�����Ʊ�����һ����");
					return false;
				}
				record=record.getNextRecord();
		   	}
		   	if (total_creditorca != v_contractamount) {
		   		alert("ծȨ��ǩԼ���ֻ�Ͳ�����ǩԼ��");
		   		return false;
		   	}
			if (!bopForDebtYinTuanSigned_dataset.modified && !bopForDebtYinTuanProject_dataset.modified && !bopForDebtYinTuanCreditor_dataset.modified) {
				alert("�����޸ĺ��ٱ��棡");
				return false;
			}
			bopForDebtYinTuanSigned_dataset.setParameter("op",op);
		}
		if (op == "delete") {
			var actiondesc = bopForDebtYinTuanSigned_dataset.getValue("actiondesc");
			if (actiondesc.length == 0) {
				alert("����дɾ��ԭ��");
				return false;
			}
			bopForDebtYinTuanSigned_dataset.setParameter("op", op);
		}
	}

	function doRepDet(){
		var id = bopForDebtYinTuanSigned_dataset.getValue("id");
		var appType = bopForDebtYinTuanSigned_dataset.getValue("appType");
		var currentfile = bopForDebtYinTuanSigned_dataset.getValue("currentfile");
		var busiCode = bopForDebtYinTuanSigned_dataset.getValue("exdebtcode");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile + "&busiCode=" + busiCode, 600, 500);
	}

	function btAddProject(){
		btProNew.click();
	}

	function btDelProject(){
		btProDel.click();
	}

	function btAddCreditor(){
		btCreNew.click();
	}

	function btDelCreditor(){
		btCreDel.click();
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