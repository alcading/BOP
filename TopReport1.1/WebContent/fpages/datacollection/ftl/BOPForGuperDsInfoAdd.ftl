<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>

<@CommonQueryMacro.page title="ǩԼ��Ϣ">

<@CommonQueryMacro.CommonQuery id="BOPForGuperDsInfoAdd" init="true" submitMode="all" navigate="false" >
<table width="100%">
	<tr>
		<td width="75%" valign="top">
			<table width="100%" cellpadding="2">
				<tr>
				     <td>
					 <@CommonQueryMacro.GroupBox id="guoup1" label="ǩԼ��Ϣ" expand="true">
                     <table frame=void class="grouptable">
	                 <tr>
                     <td align="center" nowrap class="labeltd" colspan="2">���ⵣ�����</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="exguarancode" /><input id="loadLoanButton" extra="button" style='width=25px;height=17px;' onclick="loadLoan();" type='button' value='...'/></td>
                     <td align="center" nowrap class="labeltd" rowspan="3">����������</td>
                     <td align="center" nowrap class="labeltd"">����</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="torCodeGu" /></td>
                     </tr>
                     <tr>
                     <td align="center" nowrap class="labeltd" colspan="2" width="25%">�����˴���</td>
                     <td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="guarantorcode" /></td>
                     <td align="center" nowrap class="labeltd" width="25%">��������</td>
                     <td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="torNameGu"/></td>
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
                     <td align="center" nowrap class="labeltd" colspan="2">��ע</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="remark" /></td>
                     <td colspan="2" align="center" nowrap class="labeltd">��׼�ļ���</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="appdocuno" /></td>
                     </tr>

                     </table>
                     </@CommonQueryMacro.GroupBox>
				     </td>
				</tr>
				<tr>
					<td>
					<@CommonQueryMacro.GroupBox id="guoup1" label="��Լ��Ϣ" expand="true">
                     <table frame=void class="grouptable">
	                 <tr>

                     <td align="center" nowrap class="labeltd" rowspan="3">������</td>
                     <td align="center" nowrap class="labeltd"">����</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="torCodeBen" /></td>
                     <td align="center" nowrap class="labeltd" colspan="2">ҵ����ˮ��</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="filler2" /></td>

                     </tr>
                     <tr>
                     <td align="center" nowrap class="labeltd" width="25%">��������</td>
                     <td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="torNameBen"/></td>
                     <td align="center" nowrap class="labeltd" colspan="2" width="25%">����ҵ��κ�</td>
                     <td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="buscode" /></td>
                     </tr>
                     <tr>
                     <td align="center" nowrap class="labeltd">Ӣ������</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="torEnnameBen"/></td>
                     <td align="center" nowrap class="labeltd" colspan="2">��Լ���</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="complianceno" /></td>
                     </tr>

                     <tr>
                     <td align="center" nowrap class="labeltd" colspan="2">��Լ���</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="guperamount" /></td>
                     <td align="center" nowrap class="labeltd" colspan="2">��Լ����</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="gupercurr"/></td>

                     </tr>
                      <tr>
                     <td align="center" nowrap class="labeltd" colspan="2">������Լ���</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="pguperamount"/></td>
                     <td align="center" nowrap class="labeltd" colspan="2">��Լ����</td>
                     <td class="datatd"><@CommonQueryMacro.SingleField fId="guperdate" /></td>
                     </tr>

                     </table>
                     </@CommonQueryMacro.GroupBox>
					</td>
				</tr>
				<tr>
					 <td colspan="2">
						<@CommonQueryMacro.Button id= "btColSave"/>&nbsp;&nbsp;<@CommonQueryMacro.Button id= "btColDel"/>&nbsp;&nbsp;<@CommonQueryMacro.Button id= "btBack"/>
					</td>
						
				 </tr>
			 </table>
		 </td>
		<td width="25%" valign="top">
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
								<td align="center" nowrap class="labeltd">ɾ��ԭ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="actiondesc" /></td>
							</tr>
						</table> </@CommonQueryMacro.GroupBox></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery></td>

<script language="JavaScript">
var op = "${RequestParameters["op"]?default('')}";


function btBack_onClick(){
	closeWin();
}

//��λһ�м�¼
	function locate(id) {
		var record = BOPForGuperDsInfo_dataset.find(["id"],[id]);
		if(record) {
			BOPForGuperDsInfo_dataset.setRecord(record);
		}
	}


	function doApproveDet(){
		var id = bopAccDsRecordInOutInfo_dataset.getValue("id");
		var appType = bopAccDsRecordInOutInfo_dataset.getValue("appType");
		var currentfile = bopAccDsRecordInOutInfo_dataset.getValue("currentfile");
		showPickup("��˽��","${contextPath}/fpages/commonloadpage/ftl/ReportApproveResult.ftl?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile,440,220);
	}




	function btSave_postSubmit(button){
		alert("����ɹ���");
		closeWin(true);
	}
	function initCallGetter_post()
	{
		
		var repStatus = BOPForGuperDsInfoAdd_dataset.getValue("repStatus");
		if (repStatus != "02") {
			document.getElementById("repHerf").href="#";
			document.getElementById("repHerf").style.color="#999999";
			}

		if('new'==op)
		{

			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("crtTm",true);
			window.document.getElementById('btColDel').style.display="none";
			window.document.getElementById('deleteasc').style.display="none";
			window.document.getElementById('repHerf').style.display="none";
			window.document.getElementById('xitong').style.display="none";
		}
		else if('mod'==op){
			document.getElementById("loadLoanButton").style.display="none";
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("actiondesc",true);
			//window.document.getElementById('deleteasc').style.display="none";
			window.document.getElementById('btColDel').style.display="none";
		}
		else if('del' == op)
		{
			document.getElementById("loadLoanButton").style.display="none";
			BOPForGuperDsInfoAdd_dataset.getField("actiondesc").required=true
			window.document.getElementById('btColSave').style.display="none";
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("buscode",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("complianceno",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("torCodeBen",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("torNameBen",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("torEnnameBen",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("filler2",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("gupercurr",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("pguperamount",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("guperamount",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("guperdate",true);
		}
		else if('detail' == op)
		{
			window.document.getElementById('btColDel').style.display="none";
			window.document.getElementById('btColSave').style.display="none";
			document.getElementById("loadLoanButton").style.display="none";
			//window.document.getElementById('deleteasc').style.display="none";
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("actiondesc",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("buscode",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("complianceno",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("torCodeBen",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("torNameBen",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("torEnnameBen",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("filler2",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("gupercurr",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("pguperamount",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("guperamount",true);
			BOPForGuperDsInfoAdd_dataset.setFieldReadOnly("guperdate",true);
		}


	}
	//�����˻���Ϣѡ���
	function loadLoan(){

		showPickup("���ⵣ��ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/winloadpage/BopExguLoadPage.ftl?currentFile=BC");

	}

	function btColSave_postSubmit(button){
		alert("����ɹ���");
		closeWin(true);
	}

	function btColDel_onClickCheck(button)
	{

		if (op == "del") {
			var actiondesc = BOPForGuperDsInfoAdd_dataset.getValue("actiondesc");
			if (actiondesc.length == 0) {
				alert("����дɾ��ԭ��");
				return false;
			}
			BOPForGuperDsInfoAdd_dataset.setParameter("op", op);
		}
		closeWin(true);
		alert("ɾ���ɹ���");

	}

	function isEmtry(value)
	{
		if (''==value || null ==value)
		{
			return true;
		}
		else return false;
	}

	function btColSave_onClickCheck(button)
	{


		if(isEmtry(BOPForGuperDsInfoAdd_dataset.getValue('torNameBen') ) && isEmtry(BOPForGuperDsInfoAdd_dataset.getValue('torEnnameBen') ))
		{
			alert("��������������Ӣ������������дһ��!");
			return false;
		}
		if(isEmtry(BOPForGuperDsInfoAdd_dataset.getValue('exguarancode') ) )
		{
			alert("���ⵣ����Ų���Ϊ��!");
			return false;
		}
		var guperamount = BOPForGuperDsInfoAdd_dataset.getValue('guperamount')
		var pguperamount = BOPForGuperDsInfoAdd_dataset.getValue('pguperamount')
		if(guperamount<pguperamount){
			alert("������Լ���ӦС�ڵ�����Լ���");
			return false;
		}

	}
</script>
</@CommonQueryMacro.page>