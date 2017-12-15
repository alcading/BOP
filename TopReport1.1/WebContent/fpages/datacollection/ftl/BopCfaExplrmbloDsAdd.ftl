<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
	<table width="90%" align="left">
		<tr>
			<td width="75%" valign="top">
				<table width="100%" cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td>
							<@CommonQueryMacro.CommonQuery id="BopCfaExplrmbloDsAdd" init="true" submitMode="all" navigate="false" >
								<@CommonQueryMacro.GroupBox id="guoup1" label="ǩԼ��Ϣ" expand="true">
									<table frame=void class="grouptable" width="100%">
										<tr>
											<td align="center" nowrap class="labeltd">�����Ѻ����Ҵ�����</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="explrmblono"/></td>
											<td rowspan="2" align="center" nowrap class="labeltd">ծ����</td>
											<td align="center" nowrap class="labeltd">ծ���˴���</td>
											<td  class="datatd"><@CommonQueryMacro.SingleField fId="debtorcode" /></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">ծȨ�˴���</td>
											<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="creditorcode" /></td>
											<td align="center" nowrap class="labeltd">ծ������������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="debtorname" /></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">������Ϣ��</td>
											<td  class="datatd"><@CommonQueryMacro.SingleField fId="valuedate" /></td>
											<td align="center" nowrap class="labeltd" colspan="2">�������</td>
											<td  class="datatd"><@CommonQueryMacro.SingleField fId="maturity" /></td>
										</tr>

										<tr>

											<td align="center" nowrap class="labeltd">����ǩԼ����</td>
											<td  class="datatd"><@CommonQueryMacro.SingleField fId="credconcurr" /></td>

											<td align="center" nowrap class="labeltd" colspan="2">����ǩԼ���</td>
											<td  class="datatd"><@CommonQueryMacro.SingleField fId="credconamount" /></td>

										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">ҵ����ˮ��</td>
											<td  class="datatd"><@CommonQueryMacro.SingleField fId="filler2" /></td>

											<td align="center" nowrap class="labeltd" colspan="2">��ע</td>
											<td  class="datatd"><@CommonQueryMacro.SingleField fId="remark" /></td>
										</tr>

									</table>
								</@CommonQueryMacro.GroupBox>
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
												<@CommonQueryMacro.DataTable id="datatable1" fieldStr="explcurr,explamount" readonly="false" width="100%" hasFrame="true" height="200px" />
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

				  	<@CommonQueryMacro.CommonQuery id="BopCfaExplrmbloDsAdd" mode="1" navigate="false" >
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
				<@CommonQueryMacro.CommonQuery id="BopCfaExplrmbloDsAdd" mode="1" navigate="false">
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

		function doRepDet() {
			var id = BopCfaExplrmbloDsAdd_dataset.getValue("id");
			var appType = BopCfaExplrmbloDsAdd_dataset.getValue("appType");
			var currentfile = BopCfaExplrmbloDsAdd_dataset.getValue("currentfile");
			var explrmblono = BopCfaExplrmbloDsAdd_dataset.getValue("explrmblono");
			showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile + "&busiCode=" + explrmblono, 600, 500);
		}


		function btBack_onClick(){
			closeWin(true);
		}

		function btSave_postSubmit(button){
			alert("����ɹ���");
			closeWin(true);
		}

		//��ҳ���ʼ����֮����Ե��ø÷���ִ����Ҫ����Ĳ�
		function initCallGetter_post(dataset) {
			if("new" != op){
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("actiontype",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("explrmblono",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("recStatus",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("approveStatus",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("approveResult",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("crtTm",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("lstUpdTm",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("repStatus",true);
				var repStatus = BopCfaExplrmbloDsAdd_dataset.getValue("repStatus");
				if (repStatus != "02") {
					document.getElementById("repHerf").href="#";
					document.getElementById("repHerf").style.color="#999999";
				}
			}


			if("mod" == op) {
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("actiondesc",true);
			} else if ("new" == op) {
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("actiondesc",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("explrmblono",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("creditorcode",true);
				//����ǩԼ����Ĭ�������
				BopCfaExplrmbloDsAdd_dataset.setValue2("credconcurr","CNY");
				BopCfaExplrmbloDsAdd_dataset.setValue("credconcurrName","CNY-�����");
			} else if ("del" == op || "detail" == op) {
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("explrmblono",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("creditorcode",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("debtorcode",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("debtorname",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("valuedate",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("maturity",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("credconcurr",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("credconamount",true);
				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("remark",true);

				BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("filler2",true);

				BopCfaExplcurrinfo_dataset.setFieldReadOnly("explcurr",true);
				BopCfaExplcurrinfo_dataset.setFieldReadOnly("explamount",true);



				if ("detail" == op) {
					BopCfaExplrmbloDsAdd_dataset.setFieldReadOnly("actiondesc",true);
				}
			}
		}

		function btSave_onClickCheck(button) {
			if("D" == actiontype && (null == actiondesc || "" == actiondesc)){
				alert("[��������]Ϊ[ɾ��],[ɾ��ԭ��]������д");
				return false;
			}
			if ("del" != op) {
				if (!BopCfaExplrmbloDsAdd_dataset.modified && !BopCfaExplcurrinfo_dataset.modified) {
					alert("�����޸ĺ��ٱ��棡");
					return false;
				}
				var actiontype = BopCfaExplrmbloDsAdd_dataset.getValue("actiontype");
				var actiondesc = BopCfaExplrmbloDsAdd_dataset.getValue("actiondesc");
				var credconamount = BopCfaExplrmbloDsAdd_dataset.getValue("credconamount");

				var valuedate = BopCfaExplrmbloDsAdd_dataset.getValue("valuedate");
				var maturity = BopCfaExplrmbloDsAdd_dataset.getValue("maturity");
				var record = BopCfaExplcurrinfo_dataset.getFirstRecord();

				if(null != maturity && null != valuedate) {
					var mdat = new Date(maturity);
					var vdat = new Date(valuedate);
					if(vdat > mdat){
						alert("[�������]������ڵ���[������Ϣ��]");
						return false;
					}
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