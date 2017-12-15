<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="BOPForDebtBilLoan.title">
	<@CommonQueryMacro.CommonQuery id="BOPForDebtBalanceInfoCol" init="true" submitMode="current" navigate="false">
		<table width="90%" cellpadding="2">
			<tr>
				<td width="75%" valign="top">
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<@CommonQueryMacro.GroupBox id="guoup1" label="ǩԼ��Ϣ"  expand="true">
									<table frame=void class="grouptable" width="100%">
										<tr>
											<td colspan="2" align="center" nowrap class="labeltd">��ծ���</td>
											<td class="datatd" >
												<@CommonQueryMacro.SingleField fId="exdebtcode"/>
												<input extra="button" id="selectLoad"  style='width=25px;height=17px;' type="button" onclick="loadNo();" value="..."/>
											</td>

											<td rowspan="6" align="center" nowrap class="labeltd">ծ<br>Ȩ<br>��<br>��<br>Ϣ</td>
											<td align="center" nowrap class="labeltd">����</td>
											<td class="datatd" width="25%"><@CommonQueryMacro.SingleField  fId="creditorcode"/></td>
										</tr>
										<tr>
											<td colspan="2" align="center" nowrap class="labeltd">ծ���˴���</td>
											<td class="datatd"><@CommonQueryMacro.SingleField  fId="debtorcode"/></td>
											<td align="center" nowrap class="labeltd">��������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField  fId="creditorname"/></td>
										</tr>
										<tr>
											<td colspan="2" align="center" nowrap class="labeltd">ծ������</td>
											<td class="datatd" width="30%"><@CommonQueryMacro.SingleField  fId="debtype"/></td>
											<td align="center" nowrap class="labeltd">Ӣ������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField  fId="creditornamen"/></td>
										</tr>
										<tr>
										<td colspan="2"  align="center" nowrap class="labeltd">��Ϣ��</td>
											<td class="datatd"><@CommonQueryMacro.SingleField  fId="valuedate"/></td>

											<td align="center" nowrap class="labeltd">���ʹ���</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="creditortype"/></td>
										</tr>
										<tr>
											<td colspan="2"  align="center" nowrap class="labeltd">ǩԼ����</td>
											<td class="datatd"><@CommonQueryMacro.SingleField	fId="contractcurr"/></td>
											<td align="center" nowrap class="labeltd">�ܲ����ڹ��ң�����������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField	fId="crehqcode"/></td>
										</tr>
										<tr>
											<td colspan="2"  align="center" nowrap class="labeltd">�Ƿ񸡶�����</td>
											<td class="datatd"><@CommonQueryMacro.SingleField  fId="floatrate"/></td>
											<td align="center" nowrap class="labeltd">��Ӫ�����ڹ��ң�����������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField	fId="opercode"/></td>
										</tr>
										<tr>
											<td colspan="2" align="center" nowrap class="labeltd">�껯����ֵ</td>
											<td class="datatd"><@CommonQueryMacro.SingleField  fId="anninrate"/></td>
											<td colspan="2" align="center" nowrap class="labeltd">�Ƿ�������������ռ��ָ��</td>
											<td class="datatd"><@CommonQueryMacro.SingleField	fId="spapfeboindex"/></td>
										</tr>
										<tr>
											<td colspan="2" align="center" nowrap class="labeltd">ҵ����ˮ��</td>
											<td class="datatd" colspan="4"><@CommonQueryMacro.SingleField  fId="filler2Oth"/></td>
										</tr>
									</table>
								</@CommonQueryMacro.GroupBox>
							</td>
						</tr>
						<tr>
							<td>
								<@CommonQueryMacro.GroupBox id="guoup2" label="�����Ϣ" expand="true">
									<table frame=void class="grouptable" width="100%">
										<tr>
											<td align="center" nowrap class="labeltd">�����˺�</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="buscode"/></td>
											<td align="center" nowrap class="labeltd">�䶯���</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="changeno"/></td>
										</tr>
										<tr>
											<td  align="center" nowrap class="labeltd">��ծ���</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="accoamount"/></td>
											<td align="center" nowrap class="labeltd">�䶯����</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="chdate"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">��ע</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="remark"/></td>
											<td align="center" nowrap class="labeltd">ҵ����ˮ��</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="filler2"/></td>
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
											<td nowrap class="datatd">
												<@CommonQueryMacro.SingleField fId="approveResult" />
											</td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">��ִ״̬</td>
											<td nowrap class="datatd">
												<@CommonQueryMacro.SingleField fId="repStatus" />
												<a id="repHerf" href="javascript:doRepDet()">��ִ���</a>
											</td>
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
							</td>
						</tr>
						<tr>
							<td id="deleteasc">
								<@CommonQueryMacro.GroupBox id="guoup4" label="ɾ��ԭ��" expand="true">
									<table frame=void class="grouptable" width="100%">
										<tr>
											<td align="center" nowrap class="labeltd" width="25%">ɾ��ԭ��</td>
											<td class="datatd" width="75%"><@CommonQueryMacro.SingleField fId="actiondesc" /></td>
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
	<script language="javascript">
		var op = "${RequestParameters["op"]?default('')}";

	    var balanceFileType = "${RequestParameters["balanceFileType"]?default('')}";

	    BOPForDebtBalanceInfoCol_dataset.setParameter("balanceFileType",balanceFileType);

	    //��ҳ���ʼ����֮����Ե��ø÷���ִ����Ҫ����Ĳ�
		function initCallGetter_post()
		{
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("actiontype",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("recStatus",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("approveStatus",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("approveResult",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("repStatus",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("crtTm",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("lstUpdTm",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("actiondesc",true);

			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("exdebtcode",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("creditorcode",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("debtorcode",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("creditorname",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("debtype",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("creditornamen",true);
			//BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("limitType",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("creditortype",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("valuedate",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("crehqcode",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("contractcurr",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("opercode",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("floatrate",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("spapfeboindex",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("anninrate",true);
			BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("filler2Oth",true);
			if("new" == op){
				window.document.getElementById('deleteasc').style.display="none";
				window.document.getElementById('sysMsgGroup').style.display="none";
				<#assign v_changeno = statics["com.huateng.report.utils.ReportUtils"].getTempStr(null,4)>
				BOPForDebtBalanceInfoCol_dataset.setValue("changeno", "${v_changeno}");
				BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("changeno",true);
			}else if("mod" ==op){
				window.document.getElementById('deleteasc').style.display="none";
				document.getElementById('selectLoad').style.display="none";
			}else if("del" ==op){
				document.getElementById('selectLoad').style.display="none";
				BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("actiondesc",false);
				BOPForDebtBalanceInfoCol_dataset.getField("actiondesc").required = true;
				BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("changeno",true);
				BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("buscode",true);
				BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("accoamount",true);
				BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("chdate",true);
				BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("remark",true);
				BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("filler2",true);
			}else if("detail" ==op){
				document.getElementById('selectLoad').style.display="none";
				document.getElementById('btSave').style.display="none";
				BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("changeno",true);
				BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("buscode",true);
				BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("accoamount",true);
				BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("chdate",true);
				BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("remark",true);
				BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("filler2",true);
			}
			var repStatus = BOPForDebtBalanceInfoCol_dataset.getValue("repStatus");
			if (repStatus != "02") {
				document.getElementById("repHerf").href="#";
				document.getElementById("repHerf").style.color="#999999";
			}
		}
	 	function  BOPForDebtBalanceInfoCol_dataset_afterChange(dataset,field){
    		if(field.fieldName =="accoamount"){
				var accoamount  = parseFloat(BOPForDebtBalanceInfoCol_dataset.getValue("accoamount"));
				if(accoamount <0){
					alert("��ծ���ֵ����С����!");
					BOPForDebtBalanceInfoCol_dataset.setValue("accoamount","");
					return false;
				}
			}
			if(field.fieldName =="debtype"){
				var debtype = BOPForDebtBalanceInfoCol_dataset.getValue("debtype");
				if(debtype =="1304"){
					BOPForDebtBalanceInfoCol_dataset.setValue("buscode","N/A");
					BOPForDebtBalanceInfoCol_dataset.setFieldReadOnly("buscode",true);
				}
			}
    	}
		function btSave_onClickCheck(button){
			var  exdebtcode =  BOPForDebtBalanceInfoCol_dataset.getValue("exdebtcode");
			if(exdebtcode ==""){
				alert("��ѡ����ծ���!");
				return false;
			}
			var  changeno =  BOPForDebtBalanceInfoCol_dataset.getValue("changeno");
			if(changeno =="" ){
				alert("�䶯���Ϊ�������Ϊ��!");
				return false;
			}
			var  buscode =  BOPForDebtBalanceInfoCol_dataset.getValue("buscode");
			if(buscode ==""){
				alert("�����˺�Ϊ�������Ϊ��!");
				return false;
			}
			var  accoamount =  BOPForDebtBalanceInfoCol_dataset.getValue("accoamount");
			if(accoamount =="" ){
				alert("��ծ���Ϊ�������Ϊ��!");
				return false;
			}
			var  chdate =  BOPForDebtBalanceInfoCol_dataset.getValue("chdate");
			if(chdate =="" ){
				alert("�䶯����Ϊ�������Ϊ��!");
				return false;
			}
			if("delBalance" ==op){
				var actiondesc = BOPForDebtBalanceInfoCol_dataset.getValue("actiondesc");
				if(actiondesc ==""){
					alert("ɾ��ԭ����Ϊ��!");
					return false;
				}
			}
		}
		//�����˻���Ϣѡ���
		function loadNo(){
			showPickup("�䶯��Ϣ","${contextPath}/fpages/datacollection/ftl/winloadpage/BOPForDebtBalanceLoadPage.ftl?currentFile="+balanceFileType);
		}
		function btSave_postSubmit(button){
			alert("����ɹ���");
			closeWin(true);
		}
		function doRepDet(){
			var id = BOPForDebtBalanceInfoCol_dataset.getValue("id");
			var appType = BOPForDebtBalanceInfoCol_dataset.getValue("appType");
			var currentfile = BOPForDebtBalanceInfoCol_dataset.getValue("currentfile");
			var busiCode = BOPForDebtBalanceInfoCol_dataset.getValue("exdebtcode");
			showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile + "&busiCode=" + busiCode, 600, 500);
		}
		function btBack_onClick(){
			closeWin();
		}
	</script>
</@CommonQueryMacro.page>