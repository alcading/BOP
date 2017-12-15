<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
	<@CommonQueryMacro.CommonQuery id="BOPForDebtOtherDebtsCol" init="true" submitMode="current" navigate="false">
		<table width="90%" cellpadding="2">
			<tr>
				<td width="75%" valign="top">
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<@CommonQueryMacro.GroupBox id="guoup1" label="������Ϣ" expand="true">
									<table frame=void class="grouptable" width="100%">
										<tr>
											<td align="center" nowrap class="labeltd">��ծ���</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="exdebtcode"/></td>
											<td rowspan="6" align="center" nowrap class="labeltd">ծ<br>Ȩ<br>��<br>��<br>Ϣ</td>
											<td align="center" nowrap class="labeltd">����</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="creditortype"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">ծ���˴���</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="debtorcode"/></td>
											<td align="center" nowrap class="labeltd">����</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="creditorcode"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">ծ������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="debtype"/></td>
											<td align="center" nowrap class="labeltd">��������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="creditorname"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">ծ�����ͱ�ע</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="debtyperema"/></td>
											<td align="center" nowrap class="labeltd">Ӣ������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="creditornamen"/></td>
										</tr>
										<tr>
							     			<td align="center" nowrap class="labeltd">ǩԼ����</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="contractcurr"/></td>
											<td align="center" nowrap class="labeltd">�ܲ����ڹ��ң�����������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="crehqcode"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">ǩԼ���</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="contractamount"/></td>
											<td align="center" nowrap class="labeltd">��Ӫ�����ڹ��ң�����������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="opercode"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">��Ϣ��</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="valuedate"/></td>
											<td colspan="2"  align="center" nowrap class="labeltd">������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="maturity"/></td>
										</tr>
										<tr>
							     			<td align="center" nowrap class="labeltd">�Ƿ񸡶�����</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="floatrate"/></td>
											<td colspan="2"  align="center" nowrap class="labeltd">�Ƿ�����Ϣ��������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="inprterm"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">�껯����ֵ</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="anninrate"/></td>
											<td colspan="2"  align="center" nowrap class="labeltd">�Ƿ�������������ռ��ָ��</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="spapfeboindex"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">ҵ����ˮ��</td>
											<td  class="datatd"><@CommonQueryMacro.SingleField fId="filler2" /></td>
											<td colspan="2"  align="center" nowrap class="labeltd">��ע</td>
											<td  class="datatd"><@CommonQueryMacro.SingleField fId="remark"/></td>
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
												<td class="datatd" width="75%">
													<@CommonQueryMacro.SingleField fId="actiondesc" />
												</td>
											</tr>
										</table>
									</@CommonQueryMacro.GroupBox>
								</td>
							</tr>
						</table>
					</#if>
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
		</table>
	</@CommonQueryMacro.CommonQuery>

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
			if ("new" != op) {
				var repStatus = BOPForDebtOtherDebtsCol_dataset.getValue("repStatus");
				if (repStatus != "02") {
					document.getElementById("repHerf").href="#";
					document.getElementById("repHerf").style.color="#999999";
				}
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("approveResult", true);
			}

			if("new" == op) {
//				window.document.getElementById("newRecord").style.display = "";
//				window.document.getElementById("deleteasc").style.display = "none";
//				window.document.getElementById("repHerf").style.display = "none";

				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("actiondesc", true);
			} else if ("mod" == op) {
//				window.document.getElementById("newRecord").style.display="";
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("actiondesc", true);
			} else if ("del" == op) {
//			    window.document.getElementById("delRecord").style.display="";

			    BOPForDebtOtherDebtsCol_dataset.getField("actiondesc").required=true;
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("creditortype",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("debtorcode",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("creditorcode",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("debtype",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("creditorname",true);

				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("creditornamen",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("contractcurr",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("crehqcode",true);

				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("debtyperema",true);

				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("contractamount",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("opercode",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("valuedate",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("maturity",true);

				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("floatrate",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("anninrate",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("inprterm",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("spapfeboindex",true);

				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("remark",true);

				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("filler2",true);

			} else if("detaile" == op) {

				BOPForDebtOtherDebtsCol_dataset.readOnly=true;

				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("creditortype",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("debtorcode",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("creditorcode",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("debtype",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("creditorname",true);

				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("creditornamen",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("contractcurr",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("crehqcode",true);

				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("contractamount",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("opercode",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("valuedate",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("maturity",true);

				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("debtyperema",true);

				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("floatrate",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("anninrate",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("inprterm",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("spapfeboindex",true);
				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("actiondesc",true);

				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("remark",true);

				BOPForDebtOtherDebtsCol_dataset.setFieldReadOnly("filler2",true);
			}
		}

		function btSave_onClickCheck(button) {

			if ("del" != op) {
				if (!BOPForDebtOtherDebtsCol_dataset.modified) {
					alert("�����޸ĺ��ٱ��棡");
					return false;
				}
				var actiontype = BOPForDebtOtherDebtsCol_dataset.getValue("actiontype");
				var actiondesc = BOPForDebtOtherDebtsCol_dataset.getValue("actiondesc");
				var anninrate = BOPForDebtOtherDebtsCol_dataset.getValue("anninrate");
				var creditortype = BOPForDebtOtherDebtsCol_dataset.getValue("creditortype");
				var creditorname = BOPForDebtOtherDebtsCol_dataset.getValue("creditorname");
				var creditornamen = BOPForDebtOtherDebtsCol_dataset.getValue("creditornamen");
				var valuedate = BOPForDebtOtherDebtsCol_dataset.getValue("valuedate");
				var maturity = BOPForDebtOtherDebtsCol_dataset.getValue("maturity");
				if (op == "del") {
					var actiondesc = BOPForDebtOtherDebtsCol_dataset.getValue("actiondesc");
					if (actiondesc.length == 0) {
						alert("����дɾ��ԭ��");
						return false;
					}
					BOPForDebtOtherDebtsCol_dataset.setParameter("op", op);
				}
				if(isEmtry(creditortype)) {
					alert("�ֶ�[ ծ������ ] ����Ϊ��!");
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
			return confirm("�Ƿ񱣴�");
		}

		function btSave_postSubmit(button) {
			alert("����ɹ���");
			closeWin(true);
		}

//		function btColDel_postSubmit(button){
//			alert("ɾ���ɹ���");
//			closeWin(true);
//		}
//		function btColDel_onClickCheck(button) {
//			if(isEmtry(BOPForDebtOtherDebtsCol_dataset.getValue("creditortype") )) {
//				alert("�ֶ�[ ծ������ ] ����Ϊ��!");
//				return false;
//			}
//			if(isEmtry(BOPForDebtOtherDebtsCol_dataset.getValue("creditorname") ) && isEmtry(BOPForDebtOtherDebtsCol_dataset.getValue("creditornamen") )) {
//				alert("ծȨ���������ƺ�ծȨ��Ӣ������������дһ��!");
//				return false;
//			}
//			if (op == "del") {
//				var actiondesc = BOPForDebtOtherDebtsCol_dataset.getValue("actiondesc");
//				if (actiondesc.length == 0) {
//					alert("����дɾ��ԭ��");
//					return false;
//				}
//				BOPForDebtOtherDebtsCol_dataset.setParameter("op", op);
//			}
//			return confirm("�Ƿ񱣴�");
//		}


		function doRepDet() {
			var id = BOPForDebtOtherDebtsCol_dataset.getValue("id");
			var appType = BOPForDebtOtherDebtsCol_dataset.getValue("appType");
			var currentfile = BOPForDebtOtherDebtsCol_dataset.getValue("currentfile");
			var busiCode = BOPForDebtOtherDebtsCol_dataset.getValue("exdebtcode");
			showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile + "&busiCode=" + busiCode, 600, 500);
		}

		function isEmtry(value) {
			if ("" == value || null == value) {
				return true;
			} else {
				return false;
			}
		}

		function btBack_onClick(){
			closeWin(true);
		}
	</script>
</@CommonQueryMacro.page>