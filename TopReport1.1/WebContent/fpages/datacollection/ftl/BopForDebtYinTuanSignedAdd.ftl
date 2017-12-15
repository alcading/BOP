<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="���Ŵ���ǩԼ��Ϣ">
<table width="800px" align="left">
	<tr>
		<td>
			<@CommonQueryMacro.CommonQuery id="bopForDebtYinTuanSigned" init="true" submitMode="current" navigate="false">
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

							<td align="center" nowrap class="labeltd"> ҵ����ˮ�� </td>
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
							<td align="right">
								<@CommonQueryMacro.Button id= "btProNew"/>&nbsp;&nbsp;
								<@CommonQueryMacro.Button id= "btProDel"/>&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>
							<@CommonQueryMacro.DataTable id="datatable1" fieldStr="projectname[400]" width="100%" hasFrame="true" height="200px" readonly="false"/>
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
							<td align="right">
								<@CommonQueryMacro.Button id= "btCreNew"/>&nbsp;&nbsp;
								<@CommonQueryMacro.Button id= "btCreDel"/>&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>
							<@CommonQueryMacro.DataTable id="datatable1" fieldStr="creditorcode,creditorname,creditornamen,creditorca,creditortype,crehqcode,opercode" width="100%" hasFrame="true" height="200px" readonly="false"/>
							</td>
						</tr>
					</table>
				</@CommonQueryMacro.GroupBox>
			</@CommonQueryMacro.CommonQuery>
		</td>
	</tr>
	<tr>
		<td>
			<@CommonQueryMacro.CommonQuery id="bopForDebtYinTuanSigned" mode="1" navigate="false">
				<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;
				<@CommonQueryMacro.Button id= "btBack"/>&nbsp;&nbsp;
			</@CommonQueryMacro.CommonQuery>
		</td>
	</tr>
</table>
<script language="JavaScript">

	function initCallGetter_post(){
		bopForDebtYinTuanSigned_dataset.setFieldReadOnly("exdebtcode",true);
		bopForDebtYinTuanSigned_dataset.setFieldReadOnly("debtorcode",true);
	}

	function debtype_DropDown_beforeOpen(dropDown){
		DataDicTreeSelect_DropDownDataset.setParameter("headDataTypeNo","24");
	}

	function creditortype_DropDown_beforeOpen(dropDown){
		DataDicTreeSelectCor_DropDownDataset.setParameter("headDataTypeNo","23");
	}

	function btSave_onClickCheck(){

		var anninrate = bopForDebtYinTuanSigned_dataset.getValue("anninrate");//�껯����ֵ
		if (!isNaN(anninrate) && parseFloat(anninrate) >= 1) {
			alert("[�껯����ֵ]����ΪС��");
			return false;
		}

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
		bopForDebtYinTuanSigned_dataset.setParameter("op", "new");
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