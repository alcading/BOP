<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�䶯��Ϣ">
	<table width="90%" align="left">
		<tr>
			<td width="75%" valign="top">
				<table width="100%" cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td>
							<@CommonQueryMacro.CommonQuery id="BopCfaExplrmbloDsChangeInfoAdd" init="true" submitMode="all" navigate="false" >
								<@CommonQueryMacro.GroupBox id="guoup1" label="ǩԼ��Ϣ" expand="true">
									<table frame=void class="grouptable" width="100%">
										<tr>
											<td align="center" nowrap class="labeltd" colspan="2">�����Ѻ����Ҵ�����</td>
											<td class="datatd">
												<@CommonQueryMacro.SingleField fId="explrmblono"/>
												<#assign op=RequestParameters["op"]?default("")>
												<#if op == "new">
													<@CommonQueryMacro.Button id="btSearch"/>&nbsp;&nbsp;
												</#if>
											</td>
											<td rowspan="2" align="center" nowrap class="labeltd">ծ����</td>
											<td align="center" nowrap class="labeltd">ծ���˴���</td>
											<td  class="datatd"><@CommonQueryMacro.SingleField fId="debtorcode" /></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd" colspan="2">ծȨ�˴���</td>
											<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="creditorcode" /></td>
											<td align="center" nowrap class="labeltd">ծ������������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="debtorname" /></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd" colspan="2">������Ϣ��</td>
											<td  class="datatd"><@CommonQueryMacro.SingleField fId="valuedate" /></td>
											<td align="center" nowrap class="labeltd" colspan="2">�������</td>
											<td  class="datatd"><@CommonQueryMacro.SingleField fId="maturity" /></td>
										</tr>

										<tr>
											<td align="center" nowrap class="labeltd" colspan="2">����ǩԼ����</td>
											<td  class="datatd"><@CommonQueryMacro.SingleField fId="credconcurr" /></td>

											<td align="center" nowrap class="labeltd" colspan="2">����ǩԼ���</td>
											<td  class="datatd"><@CommonQueryMacro.SingleField fId="credconamount" /></td>

										</tr>

									</table>
								</@CommonQueryMacro.GroupBox>


								<@CommonQueryMacro.Group id ="group1" label="�䶯��Ϣ"
									fieldStr="buocmonth,changeno,monbeloadbal,monenloadbal,credwithamount,credrepayamount,picamount,filler2,remark" colNm=4/>

							</@CommonQueryMacro.CommonQuery>
						</td>
					</tr>

					<tr>
						<td>
							<@CommonQueryMacro.CommonQuery id="BopCfaExplcurrinfo" init="true" submitMode="all" navigate="false" insertOnEmpty="true">
								<@CommonQueryMacro.GroupBox id="guoup2" label="��Ѻ��Ϣ" expand="true">
									<table frame=void width="100%">
										<tr>
											<td align="right">
												<#assign op=RequestParameters["op"]?default("")>
												<#if op=="new" || op == "mod">
													<@CommonQueryMacro.Button id= "btAddRecord"/>&nbsp;&nbsp;
													<@CommonQueryMacro.Button id= "btDelRecord"/>&nbsp;&nbsp;
												</#if>
											</td>
										</tr>
										<tr>
											<td>
												<@CommonQueryMacro.DataTable id="datatable1" fieldStr="explcurr,explamount,explperamount,plcoseamount" readonly="false" width="100%" hasFrame="true" height="200px" />
											</td>
										</tr>
									</table>
								</@CommonQueryMacro.GroupBox>
							</@CommonQueryMacro.CommonQuery>
						</td>
					</tr>
			  	</table>
		  	</td>

		  	<td width="8px"></td>

		  	<td width="25%" valign="top">
		  		<#assign op=RequestParameters["op"]?default("")>
				<#if op != "new">
				  	<@CommonQueryMacro.CommonQuery id="BopCfaExplrmbloDsChangeInfoAdd" mode="1" navigate="false" >
						<@CommonQueryMacro.GroupBox id="guoup3" label="ϵͳ��Ϣ" expand="true">
							<table frame=void class="grouptable" width="100%">
								<tr>
									<td align="center" nowrap class="labeltd" width="25%">��������</td>
									<td nowrap class="datatd"  width="25%"><@CommonQueryMacro.SingleField fId="actiontype" /></td>
								</tr>

								<tr>
									<td  align="center" nowrap class="labeltd" width="25%">��¼״̬</td>
									<td class="datatd"  width="25%"> <@CommonQueryMacro.SingleField fId="recStatus" /></td>
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
									<td align="center" nowrap class="labeltd" >��ִ״̬</td>
									<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="repStatus" /><a id="repHerf" href="javascript:doRepDet()">��ִ���</a></td>
								</tr>

								<tr>
									<td align="center" nowrap class="labeltd">����ʱ��</td>
									<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="crtTm" /></td>
								</tr>

								<tr>
									<td align="center" nowrap class="labeltd" >������ʱ��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="lstUpdTm" /></td>
								</tr>

							</table>
						</@CommonQueryMacro.GroupBox>

						<@CommonQueryMacro.GroupBox id="guoup4" label="ɾ��ԭ��" expand="true">
							<table frame=void class="grouptable" width="100%">
								<tr>
									<td align="center" nowrap class="labeltd" width="25%"> ɾ��ԭ�� </td>
									<td class="datatd" width="75%"><@CommonQueryMacro.SingleField fId="actiondesc" /></td>
								</tr>
							</table>
						</@CommonQueryMacro.GroupBox>
					</@CommonQueryMacro.CommonQuery>
				</#if>
			</td>
		</tr>

		<tr>
			<td>
				<@CommonQueryMacro.CommonQuery id="BopCfaExplrmbloDsChangeInfoAdd" mode="1" navigate="false">
					<#assign op=RequestParameters["op"]?default("")>
					<#if op!="detail">
						<@CommonQueryMacro.Button id="btSave"/>&nbsp;&nbsp;
					</#if>
					<@CommonQueryMacro.Button id="btBack"/>&nbsp;&nbsp;
				</@CommonQueryMacro.CommonQuery>
			</td>
		</tr>
	</table>


	<script language="JavaScript">
		var op = "${RequestParameters["op"]?default('')}";

		function btBack_onClick(){
			closeWin(true);
		}

		function btSearch_onClick()	{
			loadPage();
		}

		//�����˻���Ϣѡ���
		function loadPage() {
			showPickup("ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/winloadpage/BopCfaExplrmbloDsLoadPage.ftl");
		}

		function doRepDet() {
			var id = BopCfaExplrmbloDsChangeInfoAdd_dataset.getValue("id");
			var appType = BopCfaExplrmbloDsChangeInfoAdd_dataset.getValue("appType");
			var currentfile = BopCfaExplrmbloDsChangeInfoAdd_dataset.getValue("currentfile");
			var busiCode = BopCfaExplrmbloDsChangeInfoAdd_dataset.getValue("explrmblono");
			showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile + "&busiCode=" + busiCode, 600, 500);
		}

		function btSave_postSubmit(button){
			alert("����ɹ���");
			closeWin(true);
		}

		//��ҳ���ʼ����֮����Ե��ø÷���ִ����Ҫ����Ĳ�
		function initCallGetter_post(dataset) {

			if ("new" != op) {
				//ϵͳ������Ϊֻ��
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("actiontype",true);
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("recStatus",true);
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("approveStatus",true);
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("approveResult",true);
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("crtTm",true);
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("lstUpdTm",true);
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("repStatus",true);

				var repStatus = BopCfaExplrmbloDsChangeInfoAdd_dataset.getValue("repStatus");
				if (repStatus != "02") {
					document.getElementById("repHerf").href="#";
					document.getElementById("repHerf").style.color="#999999";
				}

			}
			BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("changeno",true);
			BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("explrmblono",true);

			//ǩԼ��Ϣ��Ϊֻ��
			BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("debtorcode", true);
			BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("creditorcode",true);
			BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("debtorname",true);
			BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("valuedate",true);
			BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("maturity",true);
			BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("credconcurr",true);
			BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("explcurr",true);
			BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("credconamount",true);
			BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("explamount",true);



			if ("new" == op) {
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("actiondesc",true);
			} else if ("mod" == op) {
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("actiondesc",true);
			} else if ("del" == op || "detail" == op) {
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("explrmblono",true);
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("buocmonth",true);
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("monbeloadbal",true);
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("monenloadbal",true);
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("credwithamount",true);
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("credrepayamount",true);
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("picamount",true);
				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("remark",true);

				BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("filler2",true);

				BopCfaExplcurrinfo_dataset.setFieldReadOnly("explcurr",true);
				BopCfaExplcurrinfo_dataset.setFieldReadOnly("explamount",true);
				BopCfaExplcurrinfo_dataset.setFieldReadOnly("explperamount",true);
				BopCfaExplcurrinfo_dataset.setFieldReadOnly("plcoseamount",true);

				if ("detail" == op) {
					BopCfaExplrmbloDsChangeInfoAdd_dataset.setFieldReadOnly("actiondesc",true);
				}
			}
		}

		function btSave_onClickCheck(button) {

			if("D" == actiontype && (null == actiondesc || "" == actiondesc)){
				alert("[��������]Ϊ[ɾ��],[ɾ��ԭ��]������д");
				return false;
			}

			if ("del" != op) {
				if (!BopCfaExplrmbloDsChangeInfoAdd_dataset.modified && !BopCfaExplcurrinfo_dataset.modified) {
					alert("�����޸ĺ��ٱ��棡");
					return false;
				}
				var monbeloadbal = BopCfaExplrmbloDsChangeInfoAdd_dataset.getValue("monbeloadbal");
				var credwithamount = BopCfaExplrmbloDsChangeInfoAdd_dataset.getValue("credwithamount");
				var credrepayamount = BopCfaExplrmbloDsChangeInfoAdd_dataset.getValue("credrepayamount");
				var picamount = BopCfaExplrmbloDsChangeInfoAdd_dataset.getValue("picamount");
				var monenloadbal = BopCfaExplrmbloDsChangeInfoAdd_dataset.getValue("monenloadbal");
				var actiontype = BopCfaExplrmbloDsChangeInfoAdd_dataset.getValue("actiontype");
				var actiondesc = BopCfaExplrmbloDsChangeInfoAdd_dataset.getValue("actiondesc");
				var explrmblono = BopCfaExplrmbloDsChangeInfoAdd_dataset.getValue("explrmblono");
				var record = BopCfaExplcurrinfo_dataset.getFirstRecord();

				if("" == explrmblono || null == explrmblono){
					alert("[�����Ѻ����Ҵ�����]����Ϊ��");
					return false;
				}
				if (("C" == actiontype || "A" == actiontype) && "" != actiondesc) {
					alert("[��������]Ϊ[ɾ��], [ɾ��ԭ��]������д");
					return false;
				}

				if(null == record){
					alert("��Ѻ��Ϣ������дһ��");
					return false;
				}
			}
			return true;
		}
	</script>
</@CommonQueryMacro.page>