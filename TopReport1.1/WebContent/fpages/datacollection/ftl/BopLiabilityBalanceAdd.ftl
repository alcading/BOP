<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>

<@CommonQueryMacro.page title="ǩԼ��Ϣ">

<@CommonQueryMacro.CommonQuery id="BopLiabilityBalanceAdd" init="true" submitMode="all" navigate="false" >
<table width="100%">
	<tr>
		<td width="75%" valign="top">
			<table width="100%" cellpadding="2">
				<tr>
				     <td>
					 <@CommonQueryMacro.GroupBox id="bopForCFAExgu" label="ǩԼ��Ϣ" expand="true">
                     <table frame=void class="grouptable" width="100%">
	                 <tr>
                     <td align="center" nowrap class="labeltd" colspan="2">���ⵣ�����</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="exguarancode" /><input id="loadLoanButton" extra="button" style='width=25px;height=17px;' onclick="loadLoan();" type='button' value='...'/></td>
                     <td align="center" nowrap class="labeltd" rowspan="3">����������</td>
                     <td align="center" nowrap class="labeltd"">����</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="torCodeGu" /></td>
                     </tr>
                     <tr>
                     <td align="center" nowrap class="labeltd" colspan="2">�����˴���</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="guarantorcode" /></td>
                     <td align="center" nowrap class="labeltd">��������</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="torNameGu"/></td>
                     </tr>
                     <tr>
                     <td align="center" nowrap class="labeltd" colspan="2">��������</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="guarantype" /></td>
                     <td align="center" nowrap class="labeltd">Ӣ������</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="torEnnameGu"/></td>
                     </tr>
                     <tr>
                     <td align="center" nowrap class="labeltd" colspan="2">ǩԼ����</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="contractdate" /></td>
                     <td align="center" nowrap class="labeltd" colspan="2">������</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="maturity" /></td>
                     </tr>
                     <tr>
                     <td align="center" nowrap class="labeltd" colspan="2">��������</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="guarancurr" /></td>
                     <td align="center" nowrap class="labeltd" colspan="2">��ծ�����</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="maindebtcurr" /></td>
                     </tr>
                     <tr>
                     <td align="center" nowrap class="labeltd" colspan="2">�������</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="guaranamount" /></td>
                     <td align="center" nowrap class="labeltd" colspan="2">��ծ���� </td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="maindebtamount" /></td>
                     </tr>
                     <tr>
                      <td colspan="2" align="center" nowrap class="labeltd">��׼�ļ���</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="appdocuno" /></td>
                     <td colspan="2" align="center" nowrap class="labeltd">��ע</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="remark" /></td>
                     </tr>
                     </table>
                     </@CommonQueryMacro.GroupBox>
				 	 </td>
				 </tr>
				 <tr>
				 	<td>
				 	<@CommonQueryMacro.GroupBox id="guoup1" label="���������Ϣ" expand="true">
				      <table  frame=void class="grouptable" width="100%">
						<tr>
							<td align="center" nowrap class="labeltd">ҵ����ˮ��</td>
                            <td class="datatd" colspan="3"><@CommonQueryMacro.SingleField fId="filler2" /></td>
						</tr>
						<tr>
							<td align="center" nowrap class="labeltd">�����������</td>
				            <td class="datatd"><@CommonQueryMacro.SingleField fId="basere"/></td>
				           <td align="center" nowrap class="labeltd">�����������䶯����</td>
				           <td class="datatd"><@CommonQueryMacro.SingleField fId="wabachandate"/></td>
						</tr>

						<tr style="display: none">
							<td colspan="2">
								<@CommonQueryMacro.Button id= "btNew"/>&nbsp;&nbsp;
								<@CommonQueryMacro.Button id= "btDel"/>&nbsp;&nbsp;
								<@CommonQueryMacro.Button id="btMod"/>&nbsp;&nbsp;
								<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;

							</td>
						</tr>
						</table>
					 </@CommonQueryMacro.GroupBox>
				 	</td>
				 </tr>
				 <tr>
					 <td colspan="2">
						<@CommonQueryMacro.Button id= "btColSave"/>&nbsp;&nbsp;
						<@CommonQueryMacro.Button id= "btColDel"/>&nbsp;&nbsp;
						<@CommonQueryMacro.Button id= "btBack"/>
					</td>
					 </td>
				 </tr>
			</table>
		</td>
		<td width="25%"valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td id="xitong"><@CommonQueryMacro.GroupBox id="guoup3" label="ϵͳ��Ϣ"
						expand="true">
			             <table frame=void class="grouptable" width="100%">
							<tr>
								<td align="center" nowrap class="labeltd" width="25%">��������</td>
								<td nowrap class="datatd" width="25%">
									<@CommonQueryMacro.SingleField fId="actiontype" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd" width="25%">��¼״̬</td>
								<td class="datatd" width="25%">
									<@CommonQueryMacro.SingleField fId="recStatus" /></td>
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
								<td align="center" nowrap class="labeltd">��ִ״̬</td>
								<td nowrap class="datatd">
									<@CommonQueryMacro.SingleField fId="repStatus" /><a
									id="repHerf" href="javascript:doRepDet()">��ִ���</a>
								</td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">����ʱ��</td>
								<td nowrap class="datatd">
									<@CommonQueryMacro.SingleField fId="crtTm" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">������ʱ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="lstUpdTm" /></td>
							</tr>
						</table> </@CommonQueryMacro.GroupBox></td>
				</tr>
				<tr>
					<td id="deleteasc"><@CommonQueryMacro.GroupBox id="guoup4" label="ɾ��ԭ��" expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>
								<td align="center" nowrap class="labeltd" width="25%">ɾ��ԭ��</td>
								<td class="datatd" width="75%"><@CommonQueryMacro.SingleField fId="actiondesc" /></td>
							</tr>
						</table> </@CommonQueryMacro.GroupBox></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>

<script language="JavaScript">
var op = "${RequestParameters["op"]?default('')}";

function btBack_onClick(){
	closeWin();
}

   //��������������
  function guarantype_DropDown_beforeOpen(dropDown){
	DataDicTreeSelectChangType_DropDownDataset.setParameter("headDataTypeNo","39");
   }

	//��������
	function btNewClick() {
		btAdd.click();
	}

	function btDelClick() {
		btDel.click();
	}
	function doRepDet(){
		var id = BopLiabilityBalanceAdd_dataset.getValue("id");
		var appType = BopLiabilityBalanceAdd_dataset.getValue("appType");
		var currentfile = BopLiabilityBalanceAdd_dataset.getValue("currentfile");
		var busiCode = BopLiabilityBalanceAdd_dataset.getValue("exguarancode");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile + "&busiCode=" + busiCode, 600, 500);
	}
	function doApproveDet(){
		var id = BopLiabilityBalanceAdd_dataset.getValue("id");
		var appType = BopLiabilityBalanceAdd_dataset.getValue("appType");
		var currentfile = BopLiabilityBalanceAdd_dataset.getValue("currentfile");
		showPickup("��˽��","${contextPath}/fpages/commonloadpage/ftl/ReportApproveResult.ftl?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile,440,220);
	}
	function btDel_onClickCheck(button) {
		return confirm("ȷ��ɾ��������¼��");
	}
	function btDel_postSubmit(button) {
		alert("ɾ����¼�ɹ�");
		button.url="#";
		//ˢ�µ�ǰҳ
		flushCurrentPage();
	}
	function btSave_postSubmit(button){
		alert("����ɹ���");
		closeWin(true);
	}
	function initCallGetter_post()
	{
		var approveStatus = BopLiabilityBalanceAdd_dataset.getValue("approveStatus");
		if (approveStatus == "00") {
			//document.getElementById("approveHref").style.color="#999999";
		}
		var repStatus = BopLiabilityBalanceAdd_dataset.getValue("repStatus");
		if (repStatus != "02") {
			document.getElementById("repHerf").href="#";
			document.getElementById("repHerf").style.color="#999999";
			}
		if('new'==op)
		{
			window.document.getElementById('deleteasc').style.display="none";
			window.document.getElementById('btColDel').style.display="none";
			window.document.getElementById('deleteasc').style.display="none";
			window.document.getElementById('xitong').style.display="none";
			window.document.getElementById('repHerf').style.display="none";
			window.document.getElementById('deleteasc').style.display="none";
		}
		else if('mod'==op){
			BopLiabilityBalanceAdd_dataset.setFieldReadOnly("actiondesc",true);
			document.getElementById("loadLoanButton").style.display="none";
			//window.document.getElementById('deleteasc').style.display="none";
			window.document.getElementById('btColDel').style.display="none";
		}
		else if('del'==op)
		{
			BopLiabilityBalanceAdd_dataset.getField("actiondesc").required=true;
			BopLiabilityBalanceAdd_dataset.setFieldReadOnly("crtTm",true);

			window.document.getElementById('btColSave').style.display="none";
			document.getElementById("loadLoanButton").style.display="none";
			BopLiabilityBalanceAdd_dataset.setFieldReadOnly("filler2",true);
			BopLiabilityBalanceAdd_dataset.setFieldReadOnly("basere",true);
			BopLiabilityBalanceAdd_dataset.setFieldReadOnly("wabachandate",true);
			BopLiabilityBalanceAdd_dataset.setFieldReadOnly("basere",true);
			BopLiabilityBalanceAdd_dataset.setFieldReadOnly("wabachandate",true);

		}
		else if('detail'==op)
		{
			window.document.getElementById('btColDel').style.display="none";
			window.document.getElementById('btColSave').style.display="none";
			//window.document.getElementById('deleteasc').style.display="none";
			document.getElementById("loadLoanButton").style.display="none";
			BopLiabilityBalanceAdd_dataset.setFieldReadOnly("filler2",true);
			BopLiabilityBalanceAdd_dataset.setFieldReadOnly("basere",true);
			BopLiabilityBalanceAdd_dataset.setFieldReadOnly("wabachandate",true);
			BopLiabilityBalanceAdd_dataset.setFieldReadOnly("actiondesc",true);
			BopLiabilityBalanceAdd_dataset.setFieldReadOnly("basere",true);
			BopLiabilityBalanceAdd_dataset.setFieldReadOnly("wabachandate",true);
		}
	}

	//�����˻���Ϣѡ���
	function loadLoan(){
		showPickup("���ⵣ��ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/winloadpage/BopExguLoadPage.ftl?currentFile=BB");
	}
	function btColSave_postSubmit(button){
		alert("����ɹ���");
		closeWin(true);
	}
	function btColSave_onClickCheck(button){
		var exguarancode = BopLiabilityBalanceAdd_dataset.getValue("exguarancode");
		if(!exguarancode){
			alert("���ⵣ����Ų�Ϊ��")
			return false;
		}
	}

	function btColDel_onClickCheck(button)
	{
		if (op == "del") {
			var actiondesc = BopLiabilityBalanceAdd_dataset.getValue("actiondesc");
			if (actiondesc.length == 0) {
				alert("����дɾ��ԭ��");
				return false;
			}
			BopLiabilityBalanceAdd_dataset.setParameter("op", op);
		}
	}
	function btColDel_postSubmit(button){
		alert("ɾ���ɹ�");
		closeWin(true);
	}
</script>
</@CommonQueryMacro.page>