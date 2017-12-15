<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="BOPForDebtBilLoan.title">
	<table width="100%">
		<tr>
			<td width="100" valign="top">
				<tr>
					<td>
						<@CommonQueryMacro.CommonQuery id="BOPForDebtBondBillCol" init="true" submitMode="all" navigate="false">
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
																<td colspan="2" align="center" nowrap class="labeltd">ǩԼ����</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="contractcurr"/></td>
																<td align="center" nowrap class="labeltd">Ӣ������</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="creditornamen"/></td>
															</tr>

															<tr>
																<td colspan="2"  align="center" nowrap class="labeltd">ǩԼ���</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="contractamount"/></td>
																<td align="center" nowrap class="labeltd">�ܲ����ڹ��ң�����������</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="crehqcode"/></td>
															</tr>

															<tr>
																<td colspan="2"  align="center" nowrap class="labeltd">��Ϣ��</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="valuedate"/></td>
																<td align="center" nowrap class="labeltd">��Ӫ�����ڹ���(����)����</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="opercode"/></td>
															</tr>

															<tr>
																<td colspan="2"  align="center" nowrap class="labeltd">�Ƿ񸡶�����</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="floatrate"/></td>
																<td colspan="2"  align="center" nowrap class="labeltd">������</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="maturity"/></td>
															</tr>

															<tr>
																<td colspan="2"  align="center" nowrap class="labeltd">ISIN CODE</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="isincode"/></td>
																<td colspan="2"  align="center" nowrap class="labeltd">�껯����ֵ</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="anninrate"/></td>
															</tr>

															<tr>
																<td colspan="2"  align="center" nowrap class="labeltd">�Ƿ�������������ռ��ָ��</td>
																<td class="datatd"><@CommonQueryMacro.SingleField fId="spapfeboindex"/></td>
																<td align="center" colspan="2" nowrap class="labeltd">ҵ����ˮ��</td>
																<td  class="datatd"><@CommonQueryMacro.SingleField fId="filler2" /></td>
															</tr>
															<tr>
																<td colspan="2"  align="center" nowrap class="labeltd">��ע</td>
																<td  class="datatd" colspan="4"><@CommonQueryMacro.SingleField fId="remark"/></td>
															</tr>
															<tr>
															</tr>
														</table>
													</@CommonQueryMacro.GroupBox>
												</td>
											</tr>
										</table>
									</td>
									<td width="8px"></td>
									<td width="25%" valign="top">

										<#assign op=RequestParameters["op"]?default("")>
										<#if op!="new">

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
																	<@CommonQueryMacro.SingleField fId="repStatus" /><a id="repHerf" href="javascript:doRepDet()">��ִ���</a>
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
													</@CommonQueryMacro.GroupBox></td>
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

										</#if>
									</td>
								</tr>
							</table>
						</@CommonQueryMacro.CommonQuery>
					</td>
				</tr>

				<tr>
					<td>
						<table>
							 <tr>
								<td>
									<#assign op=RequestParameters["op"]?default("")>
									<#if op!="detaile">
										<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;
									</#if>
									<@CommonQueryMacro.Button id= "btBack"/>&nbsp;&nbsp;
								</td>

							</tr>
						</table>
					</td>
				</tr>
			</td>
		</tr>
	</table>
	<script language="javascript">
	    var op = "${RequestParameters["op"]?default('')}";
	    //��ҳ���ʼ����֮����Ե��ø÷���ִ����Ҫ����Ĳ�


		function debtype_DropDown_beforeOpen(dropDown) {
			DataDicTreeSelect_DropDownDataset.setParameter("headDataTypeNo","24");
		}

		function creditortype_DropDown_beforeOpen(dropDown) {
			DataDicTreeSelectCor_DropDownDataset.setParameter("headDataTypeNo","23");
		}

		function initCallGetter_post() {
			if ("new" != op){
				var repStatus = BOPForDebtBondBillCol_dataset.getValue("repStatus");
				if (repStatus != "02") {
					document.getElementById("repHerf").href="#";
					document.getElementById("repHerf").style.color="#999999";
				}
			}

			BOPForDebtBondBillCol_dataset.setFieldReadOnly("approveResult",true);
			//ծȨ�����ʹ��룬�������������ʹ������ծȯ��Ʊ�ݡ�����ծ��ծȨ�����ʹ���ͳһ�Ϊ���ʱ��г���
			BOPForDebtBondBillCol_dataset.setFieldReadOnly("creditortype",true);

			if("new" == op) {
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("actiondesc",true);
			} else if ("mod" == op) {
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("actiondesc",true);
			} else if("del" == op) {
			    BOPForDebtBondBillCol_dataset.getField("actiondesc").required=true;

				//BOPForDebtBondBillCol_dataset.setFieldReadOnly("creditortype",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("debtorcode",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("creditorcode",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("debtype",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("creditorname",true);

				BOPForDebtBondBillCol_dataset.setFieldReadOnly("creditornamen",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("contractcurr",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("crehqcode",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("isincode",true);

				BOPForDebtBondBillCol_dataset.setFieldReadOnly("contractamount",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("opercode",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("valuedate",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("maturity",true);

				BOPForDebtBondBillCol_dataset.setFieldReadOnly("floatrate",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("anninrate",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("spapfeboindex",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("remark",true);

				BOPForDebtBondBillCol_dataset.setFieldReadOnly("filler2",true);
			} else if("detaile" == op) {

				BOPForDebtBondBillCol_dataset.readOnly=true;
				//BOPForDebtBondBillCol_dataset.setFieldReadOnly("creditortype",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("debtorcode",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("creditorcode",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("debtype",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("creditorname",true);

				BOPForDebtBondBillCol_dataset.setFieldReadOnly("creditornamen",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("contractcurr",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("crehqcode",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("isincode",true);

				BOPForDebtBondBillCol_dataset.setFieldReadOnly("contractamount",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("opercode",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("valuedate",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("maturity",true);

				BOPForDebtBondBillCol_dataset.setFieldReadOnly("floatrate",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("anninrate",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("spapfeboindex",true);
				BOPForDebtBondBillCol_dataset.setFieldReadOnly("actiondesc",true);

				BOPForDebtBondBillCol_dataset.setFieldReadOnly("remark",true);

				BOPForDebtBondBillCol_dataset.setFieldReadOnly("filler2",true);
			}
		}

		function btSave_onClickCheck(button) {
			if ("del" != op) {
				if (!BOPForDebtBondBillCol_dataset.modified) {
					alert("�����޸ĺ��ٱ��棡");
					return false;
				}
				var actiontype = BOPForDebtBondBillCol_dataset.getValue("actiontype");
				var actiondesc = BOPForDebtBondBillCol_dataset.getValue("actiondesc");
				var anninrate = BOPForDebtBondBillCol_dataset.getValue("anninrate");
				var creditorname = BOPForDebtBondBillCol_dataset.getValue("creditorname");
				var creditornamen = BOPForDebtBondBillCol_dataset.getValue("creditornamen");
				var valuedate = BOPForDebtBondBillCol_dataset.getValue("valuedate");
				var maturity = BOPForDebtBondBillCol_dataset.getValue("maturity");

				if("D" == actiontype && (null == actiondesc || "" == actiondesc)){
					alert("[��������]Ϊ[ɾ��],[ɾ��ԭ��]������д");
					return false;
				}

				if (("C" == actiontype || "A" == actiontype) && "" != actiondesc) {
					alert("[��������]Ϊ[ɾ��], [ɾ��ԭ��]������д");
					return false;
				}

				if(isEmtry(creditorname) && isEmtry(creditornamen)) {
					alert("ծȨ���������ƺ�ծȨ��Ӣ������������дһ��!");
					return false;
				}

				if(null != maturity && null != valuedate) {
					var mdat = new Date(maturity);
					var vdat = new Date(valuedate);
					if(vdat > mdat){
						alert("[������]������ڵ���[��Ϣ��]");
						return false;
					}
				}

				if (!isNaN(anninrate) && parseFloat(anninrate) >= 1) {
					alert("[�껯����ֵ]����ΪС��");
					return false;
				}
			}
		}

		function btSave_postSubmit(button){
			alert("����ɹ���");
			closeWin(true);
		}

		function doRepDet() {
			var id = BOPForDebtBondBillCol_dataset.getValue("id");
			var appType = BOPForDebtBondBillCol_dataset.getValue("appType");
			var currentfile = BOPForDebtBondBillCol_dataset.getValue("currentfile");
			var busiCode = BOPForDebtBondBillCol_dataset.getValue("exdebtcode");
			showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile + "&busiCode=" + busiCode, 600, 500);
		}

		function isEmtry(value) {
			if ("" == value || null == value)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		function btBack_onClick() {
			closeWin(true);
		}
	</script>
</@CommonQueryMacro.page>