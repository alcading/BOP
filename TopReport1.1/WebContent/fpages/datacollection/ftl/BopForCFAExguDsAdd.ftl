<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
	<table width="100%">
		<tr>
			<td width="100" valign="top">
				<tr>
					<td>
						<@CommonQueryMacro.CommonQuery id="BOPForCFAExguDsInfoAdd" init="true" submitMode="all" navigate="false" >
							<table width="95%" cellpadding="2">
								<tr>
									<td width="75%" valign="top">
										<table width="100%" cellpadding="0" cellspacing="0">
											<tr>
							     				<td>
								 					<@CommonQueryMacro.GroupBox id="bopForCFAExgu" label="���ⵣ����Ϣ" expand="true">
														<table frame=void class="grouptable" width="900px">
															<tr>
								                            	<td align="center" nowrap class="labeltd" colspan="2">���ⵣ�����</td>
								                            	<td class="datatd"><@CommonQueryMacro.SingleField fId="exguarancode" /></td>
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
								                            	<td align="center" nowrap class="labeltd" colspan="2">ҵ����ˮ��</td>
								                            	<td class="datatd"><@CommonQueryMacro.SingleField fId="filler2" /></td>
															</tr>

															<tr>
								                            	<td align="center" nowrap class="labeltd" colspan="2">��ע</td>
								                            	<td colspan="4" class="datatd"><@CommonQueryMacro.SingleField fId="remark" /></td>
															</tr>
														</table>
													</@CommonQueryMacro.GroupBox>
												</td>
											</tr>
										</table>
									</td>

									<td width="8px"></td>

									<td width="25%" valign="top">
										<table width="100%" cellpadding="0" cellspacing="0">
											<tr>
												<td id="xitong">
													<@CommonQueryMacro.GroupBox id="guoup3" label="ϵͳ��Ϣ" expand="true">
														<table frame=void class="grouptable" width="100%">
															<tr>
																<td align="center" nowrap class="labeltd" width="25%">��������</td>
																<td nowrap class="datatd" width="25%">
																	<@CommonQueryMacro.SingleField fId="actiontype" />
																</td>
															</tr>

															<tr>
																<td align="center" nowrap class="labeltd" width="25%">��¼״̬</td>
																<td class="datatd" width="25%">
																	<@CommonQueryMacro.SingleField fId="recStatus" />
																</td>
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
																	<@CommonQueryMacro.SingleField fId="repStatus" />
																	<a id="repHerf" href="javascript:doRepDet()">��ִ���</a>
																</td>
															</tr>
															<tr>
																<td align="center" nowrap class="labeltd">����ʱ��</td>
																<td nowrap class="datatd">
																	<@CommonQueryMacro.SingleField fId="crtTm" />
																</td>
															</tr>
															<tr>
																<td align="center" nowrap class="labeltd">������ʱ��</td>
																<td class="datatd">
																	<@CommonQueryMacro.SingleField fId="lstUpdTm" />
																</td>
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
									</td>
								</tr>
							</table>
						</@CommonQueryMacro.CommonQuery>
					</td>
				</tr>

				<tr>
					<td width="75%">
						<@CommonQueryMacro.CommonQuery id="BOPForExguTorDsInfoBen" init="true" submitMode="all" navigate="false" insertOnEmpty="true">
							<table width="71%" align="left" cellpadding="2">
								<tr>
									<td width="75%">
										<table width="100%" cellpadding="0" cellspacing="0">
											<tr>
												<td>
													<@CommonQueryMacro.GroupBox id="guoup4" label="��������Ϣ" expand="true">
								      					<table frame=void  width="100%">
											  				<tr>
																<td align="right" id="BenButton">
																	<@CommonQueryMacro.Button id= "btNewBen"/>&nbsp;&nbsp;
																	<@CommonQueryMacro.Button id= "btDelBen"/>&nbsp;&nbsp;
																</td>
															</tr>

															<tr>
																<td>
																	<@CommonQueryMacro.DataTable id ="datatableBen" fieldStr="torCode[150],torName[150],torEnname[150],countryCodeBen[150],torTypeCodeBen[150]" width="100%" hasFrame="true"  readonly="false"/>
																</td>
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
						<@CommonQueryMacro.CommonQuery id="BOPForExguTorDsInfoGua" init="true" submitMode="all" navigate="false" insertOnEmpty="true">
							<table width="71%" align="left" cellpadding="2">
								<tr>
									<td width="75%">
										<table width="100%" cellpadding="0" cellspacing="0">
											<tr>
												<td>
													<@CommonQueryMacro.GroupBox id="guoup1" label="����������Ϣ" expand="true">
								      					<table frame=void  width="100%">
											  				<tr>
																<td align="right" id="GuaButton">
																	<@CommonQueryMacro.Button id= "btNew"/>&nbsp;&nbsp;
																	<@CommonQueryMacro.Button id= "btDel"/>&nbsp;&nbsp;
																</td>
															</tr>

															<tr>
																<td>
																	<@CommonQueryMacro.DataTable id ="datatableGua" fieldStr="torCode[150],torName[150],torEnname[150],countryCodeGua[150],torTypeCodeGua[150]" width="100%" hasFrame="true"  readonly="false"/>
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
					            					<@CommonQueryMacro.Button id= "btColSave"/>&nbsp;&nbsp;
					            					<@CommonQueryMacro.Button id= "btColDel"/>&nbsp;&nbsp;
					            					<@CommonQueryMacro.Button id= "btBack"/>
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
<script language="JavaScript">
		var op = "${RequestParameters["op"]?default('')}";
		function btBack_onClick(){
			closeWin();
		}
		//��Ա��������������
		function torTypeCodeBen_DropDown_beforeOpen(dropDown){
			var countryCode = BOPForExguTorDsInfoBen_dataset.getValue("countryCodeBen");
			torTypeCodeBen_DropDown.cached=false;
			if(countryCode == "CHN") {
				DataDicTreeSelect_DropDownDataset.setParameter("headDataTypeNo","16");
			} else {
				DataDicTreeSelect_DropDownDataset.setParameter("headDataTypeNo","23");
			}
		}
		function torTypeCodeGua_DropDown_beforeOpen(dropDown){
			var countryCode = BOPForExguTorDsInfoGua_dataset.getValue("countryCodeGua");
			torTypeCodeGua_DropDown.cached=false;
			if(countryCode == "CHN") {
				DataDicTreeSelectCor_DropDownDataset.setParameter("headDataTypeNo","16");
			} else {
				DataDicTreeSelectCor_DropDownDataset.setParameter("headDataTypeNo","23");
			}
		}
		//��������������
		function guarantype_DropDown_beforeOpen(dropDown){
	    	DataDicTreeSelectChangType_DropDownDataset.setParameter("headDataTypeNo","39");
		}


		//���ҵ����䶯�������������ͺ�������������Ϊ��
		function countryCodeGua_DropDown_onSelect(dropDown,record,editor){
			BOPForExguTorDsInfoGua_dataset.setValue2('torTypeCodeGua' ,"");
			return true;
		}
		function countryCodeBen_DropDown_onSelect(dropDown,record,editor){
			BOPForExguTorDsInfoBen_dataset.setValue2('torTypeCodeBen' ,"");
			return true;
		}
		
	
		function doRepDet(){
			var id = BOPForCFAExguDsInfoAdd_dataset.getValue("id");
			var appType = BOPForCFAExguDsInfoAdd_dataset.getValue("appType");
			var currentfile = BOPForCFAExguDsInfoAdd_dataset.getValue("currentfile");
			var busiCode = BOPForCFAExguDsInfoAdd_dataset.getValue("exguarancode");
			showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile + "&busiCode=" + busiCode, 600, 500);
		}

		
		function initCallGetter_post()
		{
			var repStatus = BOPForCFAExguDsInfoAdd_dataset.getValue("repStatus");
			if (repStatus != "02") {
				document.getElementById("repHerf").href="#";
				document.getElementById("repHerf").style.color="#999999";
			}
			if("new" == op)
			{
				window.document.getElementById('btColDel').style.display="none";
				window.document.getElementById('deleteasc').style.display="none";
				window.document.getElementById('xitong').style.display="none";
				window.document.getElementById('repHerf').style.display="none";
			} else if("mod" == op) {
				window.document.getElementById('btColDel').style.display="none";
				BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("crtTm",true);
				BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("actiondesc",true);
			}
			else if("del" == op)
			{   
				BOPForGuperDsInfoAdd_dataset.getField("actiondesc").required=true
				window.document.getElementById('btColSave').style.display="none";
				window.document.getElementById('BenButton').style.display="none";
				window.document.getElementById('GuaButton').style.display="none";
				setFieldReadOnly();
			}
			else if("detail" == op)
			{
				window.document.getElementById('btColDel').style.display="none";
				window.document.getElementById('btColSave').style.display="none";
				window.document.getElementById('BenButton').style.display="none";
				window.document.getElementById('GuaButton').style.display="none";
				setFieldReadOnly();
			}
		}
		
		function setFieldReadOnly(){
			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("crtTm",true);
			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("exguarancode",true);
			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("torCodeGu",true);
			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("torNameGu",true);
			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("guarantype",true);
			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("crtTm",true);

			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("torEnnameGu",true);
			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("actiontype",true);
			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("appdocuno",true);
			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("contractdate",true);

			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("maturity",true);
			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("guarancurr",true);
			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("maindebtcurr",true);
			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("guaranamount",true);
			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("maindebtamount",true);

			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("actiondesc",true);
			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("filler2",true);

			BOPForExguTorDsInfoGua_dataset.setFieldReadOnly("torCode",true);
			BOPForExguTorDsInfoGua_dataset.setFieldReadOnly("torName",true);
			BOPForExguTorDsInfoGua_dataset.setFieldReadOnly("torEnname",true);
			BOPForExguTorDsInfoGua_dataset.setFieldReadOnly("torTypeCodeGua",true);
			BOPForExguTorDsInfoGua_dataset.setFieldReadOnly("countryCodeGua",true);

			BOPForExguTorDsInfoBen_dataset.setFieldReadOnly("torCode",true);
			BOPForExguTorDsInfoBen_dataset.setFieldReadOnly("torName",true);
			BOPForExguTorDsInfoBen_dataset.setFieldReadOnly("torEnname",true);
			BOPForExguTorDsInfoBen_dataset.setFieldReadOnly("torTypeCodeBen",true);
			BOPForExguTorDsInfoBen_dataset.setFieldReadOnly("countryCodeBen",true);

			BOPForCFAExguDsInfoAdd_dataset.setFieldReadOnly("remark",true);
			
		}
		
		function btColSave_postSubmit(button){
			alert("����ɹ���");
			closeWin(true);
		}
	    //����������֤ 
		function btColSave_onClickCheck(button)
		{
	    	
			if(isEmtry(BOPForCFAExguDsInfoAdd_dataset.getValue('torNameGu') ) && isEmtry(BOPForCFAExguDsInfoAdd_dataset.getValue('torEnnameGu') ))
			{
				alert("������������������Ӣ������������дһ��!");
				return false;
			}

			if(isEmtry(BOPForExguTorDsInfoBen_dataset.getValue('torName') ) && isEmtry(BOPForExguTorDsInfoBen_dataset.getValue('torEnname') ))
			{
				alert("��������������Ӣ������������дһ��!");
				return false;
			}


			if(isEmtry(BOPForExguTorDsInfoGua_dataset.getValue('torName') ) && isEmtry(BOPForExguTorDsInfoGua_dataset.getValue('torEnname') ))
			{
				alert("����������������Ӣ������������дһ��!");
				return false;
			}
			//�������� ����Ǿ��ڸ���Ӧ��д���֤ ����Ǿ���Ӧ��д8λ��11λ��SWIFT CODE
			var recordGua = BOPForExguTorDsInfoGua_dataset.getFirstRecord();
			var resGua = true;
			while(recordGua) {
				var torCodeGua = recordGua.getValue("torCode");
				var torTypeCodeGua = recordGua.getValue("torTypeCodeGua");
				if(torTypeCodeGua > '20001100' && torTypeCodeGua < '20009900'){
					if(torCodeGua.length!=8 && torCodeGua.length!=11 ){
						alert("��������Ϊ�������Ӧ��д8λ��11λ��SWIFT CODE");
						resGua = false;
					}
				}
				if(torTypeCodeGua == '10130000') {
					if(torCodeGua.length!=15 && torCodeGua.length!=18 ) {
							alert("��������Ϊ���ڸ�������д15����18λ�����֤��");
							resGua = false;
					}
				}
				if(resGua == false) {
					break;
				} else {
					recordGua = recordGua.getNextRecord();
				}
			}

			if(!resGua){
				return false;
			}
			//����������֤��
			//��������֤ ����Ǿ��ڸ���Ӧ��д���֤ ����Ǿ���Ӧ��д8λ��11λ��SWIFT CODE
			//��ȡ��һ����¼
			var recordBen = BOPForExguTorDsInfoBen_dataset.getFirstRecord();
			var resBen = true;
			while(recordBen) {
				var torCodeBen = recordBen.getValue("torCode");
				var torTypeCodeBen = recordBen.getValue("torTypeCodeBen");
				if(torTypeCodeBen >= '20001100' && torTypeCodeBen <= '20009900'){
					if(torCodeBen.length!=8 && torCodeBen.length!=11 ){
						alert("������Ϊ�������Ӧ��д8λ��11λ��SWIFT CODE");
						resBen = false;
					}
				}
				if(torTypeCodeBen == '10130000') {
					if(torCodeBen.length!=15 && torCodeBen.length!=18 ) {
						alert("������Ϊ���ڸ�������д15����18λ�����֤��");
						resBen = false;
					}
				}
				if(resBen == false) {
					break;
				} else {
					recordBen = recordBen.getNextRecord();
				}
			}
			//����������֤��
			if(!resBen){
				return false;
			}
			return true;
		}
		function isEmtry(value)
		{
			if (''==value || null ==value)
			{
				return true;
			}
			else
			{
			return false;
			}
		}
		//ɾ����֤
		function btColDel_onClickCheck(button)
		{
			if (op == "del") {
				var actiondesc = BOPForCFAExguDsInfoAdd_dataset.getValue("actiondesc");
				if (actiondesc.length == 0) {
					alert("����дɾ��ԭ��");
					return false;
				}
				BOPForCFAExguDsInfoAdd_dataset.setParameter("op", op);
			}
			return true;
			//closeWin(true);
		}

		function btColDel_postSubmit(button){
			alert("ɾ���ɹ���");
			closeWin(true);
		}
</script>
</@CommonQueryMacro.page>