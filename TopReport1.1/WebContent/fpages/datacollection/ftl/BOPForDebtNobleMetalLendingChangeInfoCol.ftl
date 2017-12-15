<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="BOPForDebtBilLoan.title">
 <@CommonQueryMacro.CommonQuery id="BOPForDebtChangInfoCol" init="true" submitMode="all" navigate="false">
<table width="90%" cellpadding="2">
	<tr>
		<td width="75%" valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td><@CommonQueryMacro.GroupBox id="guoup1" label="ǩԼ��Ϣ"
						expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>

								<td colspan="2" align="center" nowrap class="labeltd">��ծ���
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="exdebtcode"/><input id="loadLoanButton" extra="button" style='width=25px;height=17px;' onclick="loadLoan();" type='button' value='...'/></td>

								<td rowspan="6" align="center" nowrap class="labeltd">ծ<br>Ȩ<br>��<br>��<br>Ϣ</td>

								<td align="center" nowrap class="labeltd">����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="creditortype"/></td>

							</tr>
							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">ծ���˴���
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="debtorcode"/></td>

								<td align="center" nowrap class="labeltd">����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="creditorcode"/></td>

							</tr>
							<tr>

								<td colspan="2" align="center" nowrap class="labeltd">ծ������
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="debtype"/></td>

								<td align="center" nowrap class="labeltd">��������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="creditorname"/></td>

							</tr>
							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">ǩԼ����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="contractcurr"/></td>

								<td align="center" nowrap class="labeltd">Ӣ������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="creditornamen"/></td>
							</tr>
							<tr>
								<td colspan="2"  align="center" nowrap class="labeltd">ǩԼ���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="contractamount"/></td>

								<td align="center" nowrap class="labeltd">�ܲ����ڹ��ң�����������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="crehqcode"/></td>
							</tr>

							<tr>
								<td colspan="2"  align="center" nowrap class="labeltd">��Ϣ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="valuedate"/></td>


								<td align="center" nowrap class="labeltd">��Ӫ�����ڹ��ң�����������
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="opercode"/></td>


							</tr>

							<tr>
								<td colspan="2"  align="center" nowrap class="labeltd">�Ƿ񸡶�����
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="floatrate"/></td>

								<td colspan="2"  align="center" nowrap class="labeltd">������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="maturity"/></td>
							</tr>

							<tr>
								<td colspan="2"  align="center" nowrap class="labeltd">�Ƿ�����Ϣ��������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="inprterm"/></td>

								<td colspan="2"  align="center" nowrap class="labeltd">�껯����ֵ
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="anninrate"/></td>
							</tr>
							<tr>


								<td colspan="2"  align="center" nowrap class="labeltd">�Ƿ�������������ռ��ָ��
								</td>
								<td class="datatd" colspan="4"><@CommonQueryMacro.SingleField
									fId="spapfeboindex"/></td>


							</tr>
							<tr>

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

								<td align="center" nowrap class="labeltd">����ҵ��κ�</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="buscode"/></td>



								<td align="center" nowrap class="labeltd">�䶯���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="changeno"/></td>

							</tr>
							<tr>
								<td  align="center" nowrap class="labeltd">�䶯����
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="changtype"/></td>

								<td align="center" nowrap class="labeltd">�䶯����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="chdate"/></td>

							</tr>
							<tr>

								<td  align="center" nowrap class="labeltd">�䶯����
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="chcurrency"/></td>

								<td align="center" nowrap class="labeltd">�䶯���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="chamount"/></td>

							</tr>
							<tr>


								<td align="center" nowrap class="labeltd">���ʼ�ֵ</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="fairvalue"/></td>

								<td align="center" nowrap class="labeltd">ҵ����ˮ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="filler2"/></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">��ע</td>
								<td class="datatd" colspan="3"><@CommonQueryMacro.SingleField
									fId="remark"/></td>
							</tr>

						</table></@CommonQueryMacro.GroupBox>
						</td>

				</tr>
			</table>
		</td>
		<td width="8px"></td>
		<td width="25%" valign="top" id="sysMsgGroup">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td><@CommonQueryMacro.GroupBox id="guoup3" label="ϵͳ��Ϣ"
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
								<td nowrap class="datatd"><@CommonQueryMacro.SingleField
									fId="approveStatus" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">�������</td>
								<td nowrap class="datatd"><@CommonQueryMacro.SingleField
									fId="approveResult" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">��ִ״̬</td>
								<td nowrap class="datatd"><@CommonQueryMacro.SingleField
									fId="repStatus" /><a id="repHerf" href="javascript:doRepDet()">��ִ���</a>
								</td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">����ʱ��</td>
								<td nowrap class="datatd"><@CommonQueryMacro.SingleField
									fId="crtTm" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">������ʱ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="lstUpdTm" /></td>
							</tr>
						</table> </@CommonQueryMacro.GroupBox></td>
				</tr>
				<tr>
					<td id="deleteasc"><@CommonQueryMacro.GroupBox id="guoup4"
						label="ɾ��ԭ��" expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>
								<td align="center" nowrap class="labeltd" width="25%">ɾ��ԭ��</td>
								<td class="datatd" width="75%">
									<@CommonQueryMacro.SingleField fId="actiondesc" /></td>
							</tr>
						</table> </@CommonQueryMacro.GroupBox></td>
				</tr>
			</table>
			</td>
	</tr>
 	<tr>
				<td>
					<table>
						 <tr>
							 <td colspan="2">
									<@CommonQueryMacro.Button id= "btColSave"/>&nbsp;&nbsp;<@CommonQueryMacro.Button id= "btColDel"/>&nbsp;&nbsp;<@CommonQueryMacro.Button id= "btBack"/>
							 </td>
						 </tr>
					  </table>
			    	</td>
				</tr>
</table>
</@CommonQueryMacro.CommonQuery>

<script language="javascript">
    var op = "${RequestParameters["op"]?default('')}";
    //��ҳ���ʼ����֮����Ե��ø÷���ִ����Ҫ����Ĳ�

	function debtype_DropDown_beforeOpen(dropDown){

	   DataDicTreeSelect_DropDownDataset.setParameter("headDataTypeNo","24");
	}

	function creditortype_DropDown_beforeOpen(dropDown){
	   DataDicTreeSelectCor_DropDownDataset.setParameter("headDataTypeNo","23");
	}

	function changtype_DropDown_beforeOpen(dropDown){
	   DataDicTreeSelectChangType_DropDownDataset.setParameter("headDataTypeNo","31");
	}


	function initCallGetter_post()
	{

			var approveStatus = BOPForDebtChangInfoCol_dataset.getValue("approveStatus");
			var repStatus = BOPForDebtChangInfoCol_dataset.getValue("repStatus");
			if (repStatus != "02") {
				document.getElementById("repHerf").href="#";
				document.getElementById("repHerf").style.color="#999999";
				}

		if('new'==op )
		{
			window.document.getElementById('btColDel').style.display="none";
			window.document.getElementById('deleteasc').style.display="none";
			window.document.getElementById('repHerf').style.display="none";
			window.document.getElementById('sysMsgGroup').style.display="none";
		}
		else if("mod"==op)
		{
			window.document.getElementById('btColDel').style.display="none";
		}
		else if("del" ==op)
		{	setReadOnly();
		window.document.getElementById('btColSave').style.display="none";
			BOPForDebtChangInfoCol_dataset.setFieldReadOnly("filler2",true);

		}
		else if("detaile" ==op)
		{	setReadOnly();
		window.document.getElementById('btColDel').style.display="none";
		window.document.getElementById('btColSave').style.display="none";
		    BOPForDebtChangInfoCol_dataset.setFieldReadOnly("actiondesc",true);
		    BOPForDebtChangInfoCol_dataset.setFieldReadOnly("filler2",true);
		}
	}


	function setReadOnly()
	{
			BOPForDebtChangInfoCol_dataset.getField("actiondesc").required=true;



			BOPForDebtChangInfoCol_dataset.setFieldReadOnly("buscode",true);
			BOPForDebtChangInfoCol_dataset.setFieldReadOnly("changeno",true);
			BOPForDebtChangInfoCol_dataset.setFieldReadOnly("changtype",true);
			BOPForDebtChangInfoCol_dataset.setFieldReadOnly("chdate",true);
			BOPForDebtChangInfoCol_dataset.setFieldReadOnly("chcurrency",true);

			BOPForDebtChangInfoCol_dataset.setFieldReadOnly("chamount",true);
			BOPForDebtChangInfoCol_dataset.setFieldReadOnly("fairvalue",true);
			BOPForDebtChangInfoCol_dataset.setFieldReadOnly("remark",true);


			document.getElementById("loadLoanButton").style.display="none";
	}

	//�����˻���Ϣѡ���
	function loadLoan(){

		showPickup("��������ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/winloadpage/BopCfaDebtBiLoanLoadPage.ftl?currentFile=AH");

	}

   	function btNewClick(){


		btNew.click();

	}

	function btColSave_onClickCheck(button)
	{
		if(isEmtry(BOPForDebtChangInfoCol_dataset.getValue('buscode') ))
		{
			alert("�ֶ�[ ����ҵ��κ� ] ����Ϊ��!");
			return false;
		}
		 if(isEmtry(BOPForDebtChangInfoCol_dataset.getValue('exdebtcode') ))
		{
			alert("�ֶ�[ ��ծ��� ] ����Ϊ��!");
			return false;
		}

		if (!BOPForDebtChangInfoCol_dataset.modified) {
				alert("�����޸ĺ��ٱ��棡");
				return false;
		 }
	}

	function btColSave_postSubmit(button){
		alert("����ɹ���");
		closeWin(true);
	}

	function btColDel_postSubmit(button){
		alert("ɾ���ɹ���");
		closeWin(true);
	}

	function btColDel_onClickCheck(button)
	{

		if (op == "del") {
			var actiondesc = BOPForDebtChangInfoCol_dataset.getValue("actiondesc");
			if (actiondesc.length == 0) {
				alert("����дɾ��ԭ��");
				return false;
			}
			BOPForDebtChangInfoCol_dataset.setParameter("op", op);
		}

	}


	function doRepDet(){
		var id = BOPForDebtChangInfoCol_dataset.getValue("id");
		var appType = BOPForDebtChangInfoCol_dataset.getValue("appType");
		var currentfile = BOPForDebtChangInfoCol_dataset.getValue("currentfile");
		var busiCode = BOPForDebtChangInfoCol_dataset.getValue("exdebtcode");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile + "&busiCode=" + busiCode, 600, 500);
	}

	function doApproveDet(){
		var id = BOPForDebtChangInfoCol_dataset.getValue("id");
		var appType = BOPForDebtChangInfoCol_dataset.getValue("appType");
		var currentfile = BOPForDebtChangInfoCol_dataset.getValue("currentfile");
		showPickup("��˽��","${contextPath}/fpages/commonloadpage/ftl/ReportApproveResult.ftl?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile,440,220);
	}


	function isEmtry(value)
	{
		if (''==value || null ==value)
		{
			return true;
		}
		else return false;
	}


	function btBack_onClick(){
		closeWin();
	}
</script>
</@CommonQueryMacro.page>
