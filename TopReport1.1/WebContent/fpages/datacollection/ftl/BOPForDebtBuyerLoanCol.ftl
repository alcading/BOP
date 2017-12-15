<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="BOPForDebtBilLoan.title">
	<table width="100%">
		<tr>
			<td width="100" valign="top">
				<tr>
					<td>
						<@CommonQueryMacro.CommonQuery id="BOPForDebtBuyerLoanCol" init="true" submitMode="all" navigate="false">
							<table width="90%" cellpadding="2">
								<tr>
									<td width="75%" valign="top">
										<table width="100%" cellpadding="0" cellspacing="0">
											<tr>
												<td>
													<@CommonQueryMacro.GroupBox id="guoup1" label="������Ϣ" expand="true">
														<table frame=void class="grouptable" width="100%">
															<tr>
																<td colspan="2" align="center" nowrap class="labeltd">��ծ���</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="exdebtcode"/></td>
																<td rowspan="6" align="center" nowrap class="labeltd">ծ<br>Ȩ<br>��<br>��<br>Ϣ</td>
																<td align="center" nowrap class="labeltd">����</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="creditortype"/></td>
															</tr>

															<tr>
																<td colspan="2" align="center" nowrap class="labeltd">ծ���˴���</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="debtorcode"/></td>
																<td align="center" nowrap class="labeltd">����</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="creditorcode"/></td>
															</tr>

															<tr>
																<td colspan="2" align="center" nowrap class="labeltd">ծ������</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="debtype"/></td>
																<td align="center" nowrap class="labeltd">��������</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="creditorname"/></td>
															</tr>

															<tr>
																<td rowspan="3" align="center" nowrap class="labeltd">ǩ<br>Լ<br>��<br>Ϣ</td>
																<td align="center" nowrap class="labeltd">����</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="contractdate"/></td>
																<td align="center" nowrap class="labeltd">Ӣ������</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="creditornamen"/></td>
															</tr>

															<tr>
																<td align="center" nowrap class="labeltd">����</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="contractcurr"/></td>
																<td align="center" nowrap class="labeltd">�ܲ����ڹ��ң�����������</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="crehqcode"/></td>
															</tr>

															<tr>
																<td align="center" nowrap class="labeltd">���</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="contractamount"/></td>
																<td align="center" nowrap class="labeltd">��Ӫ�����ڹ��ң�����������</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="opercode"/></td>
															</tr>

															<tr>
																<td colspan="2" align="center" nowrap class="labeltd">��Ϣ��</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="valuedate"/></td>
																<td colspan="2" align="center" nowrap class="labeltd">������</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="maturity"/></td>
															</tr>

															<tr>
																<td colspan="2" align="center" nowrap class="labeltd">�Ƿ񸡶�����</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="floatrate"/></td>
																<td colspan="2" align="center" nowrap class="labeltd">�껯����ֵ</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="anninrate"/></td>
															</tr>

															<tr>
																<td colspan="2" align="center" nowrap class="labeltd">�Ƿ�����Ϣ��������</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="inprterm"/></td>
																<td colspan="2" align="center" nowrap class="labeltd">�Ƿ�������������ռ��ָ��</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="spapfeboindex"/></td>
															</tr>

															<tr>
																<td align="center" colspan="2" nowrap class="labeltd">ҵ����ˮ��</td>
																<td class="datatd" colspan="4"><@CommonQueryMacro.SingleField fId="filler2" /></td>
															</tr>

															<tr>
																<td colspan="2" align="center" nowrap class="labeltd">��ע</td>
																<td colspan="4" class="datatd"><@CommonQueryMacro.SingleField fId="remark"/></td>
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
																<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="approveResult" /></td>
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
							</table>
						</@CommonQueryMacro.CommonQuery>
					</td>
				</tr>

				<tr>
					<td width="75%">
						<@CommonQueryMacro.CommonQuery id="BOPForDebtBuyerProject" init="true" submitMode="all" navigate="false" insertOnEmpty="true">
							<table width="90%" align="left" cellpadding="2">
								<tr>
									<td width="75%" >
										<table width="75%" cellpadding="0" cellspacing="0">
											<tr>
												<td>
													<@CommonQueryMacro.GroupBox id="guoup1" label="��Ŀ��Ϣ" expand="true">
														<table frame=void  width="100%">
															<tr>
																<td align="right" id="newDelButton">
																	<@CommonQueryMacro.Button id= "btNew"/>&nbsp;&nbsp;
																	<@CommonQueryMacro.Button id= "btDel"/>&nbsp;&nbsp;
																</td>
															</tr>

															<tr>
																<td>
																	<@CommonQueryMacro.DataTable id="datatable2" fieldStr="projectname" width="100%" hasFrame="true" height="100px" readonly="false"/>
																</td>
															</tr>

															<tr style="display: none">
																<td colspan="2">
																	<@CommonQueryMacro.Button id="btMod"/>&nbsp;&nbsp;
																	<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;
																</td>
															</tr>
														</table>
												 	</@CommonQueryMacro.GroupBox>
												</td>
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
					</td>
				</tr>
			</td>
		</tr>
	</table>
	<script language="javascript">
	    var op = "${RequestParameters["op"]?default('')}";
	    //��ҳ���ʼ����֮����Ե��ø÷���ִ����Ҫ����Ĳ�
		var countforProject=0;

		function debtype_DropDown_beforeOpen(dropDown){
		   DataDicTreeSelect_DropDownDataset.setParameter("headDataTypeNo","24");
		}

		function creditortype_DropDown_beforeOpen(dropDown){
		   DataDicTreeSelectCor_DropDownDataset.setParameter("headDataTypeNo","23");
		}

		function initCallGetter_post()
		{
			var approveStatus = BOPForDebtBuyerLoanCol_dataset.getValue("approveStatus");
			var repStatus = BOPForDebtBuyerLoanCol_dataset.getValue("repStatus");
			if (repStatus != "02") {
				document.getElementById("repHerf").href="#";
				document.getElementById("repHerf").style.color="#999999";
			}
			//ϵͳ��Ϣֻ��
			BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("actiontype",true);
			BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("recStatus",true);
			BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("approveStatus",true);
			BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("approveResult",true);
			BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("repStatus",true);
			BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("crtTm",true);
			BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("lstUpdTm",true);
			//��ծ���ֻ��
			BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("exdebtcode",true);
			if("new" == op)
			{
				window.document.getElementById('btColDel').style.display="none";
				window.document.getElementById('deleteasc').style.display="none";
				//window.document.getElementById('approveHref').style.display="none";
				window.document.getElementById('repHerf').style.display="none";
				window.document.getElementById('sysMsgGroup').style.display="none";
			}
			else if("mod" == op){
				window.document.getElementById('btColDel').style.display="none";
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("actiondesc",true);
			}
			else if("del" == op)
			{

			    BOPForDebtBuyerLoanCol_dataset.getField("actiondesc").required=true;

				window.document.getElementById('btColSave').style.display="none";
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("creditortype",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("debtorcode",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("creditorcode",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("debtype",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("creditorname",true);

				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("contractdate",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("creditornamen",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("contractcurr",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("crehqcode",true);

				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("contractamount",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("opercode",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("valuedate",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("maturity",true);

				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("floatrate",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("anninrate",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("inprterm",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("spapfeboindex",true);

				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("remark",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("filler2",true);

				BOPForDebtBuyerProject_dataset.setFieldReadOnly("projectname",true);

				//window.document.getElementById('newButton').style.display="none";
				window.document.getElementById('newDelButton').style.display="none";

			}
			else if("detaile" == op)
			{
				window.document.getElementById('btColDel').style.display="none";
				window.document.getElementById('btColSave').style.display="none";


				BOPForDebtBuyerLoanCol_dataset.readOnly=true;

				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("creditortype",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("debtorcode",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("creditorcode",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("debtype",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("creditorname",true);

				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("contractdate",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("creditornamen",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("contractcurr",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("crehqcode",true);

				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("contractamount",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("opercode",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("valuedate",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("maturity",true);

				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("floatrate",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("anninrate",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("inprterm",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("spapfeboindex",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("actiondesc",true);

				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("filler2",true);
				BOPForDebtBuyerLoanCol_dataset.setFieldReadOnly("remark",true);


				BOPForDebtBuyerProject_dataset.setFieldReadOnly("projectname",true);

			}
		}
	   	function btNewClick(){
			btNew.click();
		}

	    function doDelete()
		{
			btDel.click();
		}

		//��λһ����¼
//		function locate(id) {
//			var record = BOPForDebtBuyerLoanCol_dataset.find(["id"],[id]);
//			if (record) {
//				BOPForDebtBuyerLoanCol_dataset.setRecord(record);
//			}
//		}

		function btSave_onClick(button)
		{
			BOPForDebtBuyerProject_dataset.insertRecord();

			return true;
		}

		function btColSave_onClickCheck(button)
		{
			if("del" != op){
				if(isEmtry(BOPForDebtBuyerLoanCol_dataset.getValue('creditortype') ))
				{
					alert("�ֶ�[ ծ������ ] ����Ϊ��!");
					return false;
				}
				if(isEmtry(BOPForDebtBuyerLoanCol_dataset.getValue('creditorname') ) && isEmtry(BOPForDebtBuyerLoanCol_dataset.getValue('creditornamen') ))
				{
					alert("ծȨ���������ƺ�ծȨ��Ӣ������������дһ��!");
					return false;
				}
				if(BOPForDebtBuyerProject_dataset.length == 0 )
				{
					alert("��Ŀ����Ϊ�գ�");
					return false;
				}

				var anninrate = BOPForDebtBuyerLoanCol_dataset.getValue("anninrate");
				if (!isNaN(anninrate) && parseFloat(anninrate) >= 1) {
					alert("[�껯����ֵ]����ΪС��");
					return false;
				}
			}
			return true;
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
				var actiondesc = BOPForDebtBuyerLoanCol_dataset.getValue("actiondesc");
				if (actiondesc.length == 0) {
					alert("����дɾ��ԭ��");
					return false;
				}
				BOPForDebtBuyerLoanCol_dataset.setParameter("op", op);
			}
		}

		function doRepDet(){
			var id = BOPForDebtBuyerLoanCol_dataset.getValue("id");
			var appType = BOPForDebtBuyerLoanCol_dataset.getValue("appType");
			var currentfile = BOPForDebtBuyerLoanCol_dataset.getValue("currentfile");
			var busiCode = BOPForDebtBuyerLoanCol_dataset.getValue("exdebtcode");
			showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile + "&busiCode=" + busiCode, 600, 500);
		}

		function isEmtry(value)
		{
			if (null == value || ""==value)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		function btMod_onClick(button)
		{
			BOPForDebtBuyerProject_dataset.updateRecord();
			return true;
		}

		function btBack_onClick(){
			closeWin();
		}
	</script>
</@CommonQueryMacro.page>