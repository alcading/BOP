<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="������Ϣ">
<@CommonQueryMacro.CommonQuery id="BopDDsAdd" init="true" insertOnEmpty="true" navigate="false">
<table width="90%" cellpadding="2">
	<tr>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td><@CommonQueryMacro.GroupBox id="groupbox1" label="������Ϣ"
						expand="true">
						<table frame="void" class="grouptable" width="100%">
							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">�걨����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="rptno"/></td>
																		
								<td colspan="2" align="center" nowrap class="labeltd">����������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="oppuser"/></td>		
							</tr>
							<tr>
							    <td colspan="1" rowspan="4" align="center" nowrap class="labeltd">�տ�����Ϣ</td>
							    <td rowspan="1" align="right" nowrap class="labeltd">�տ�������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="custype"/></td>
								
								<td colspan="1" rowspan="3" align="center" nowrap class="labeltd">�����Ϣ</td>
                                <td colspan="1" align="center" nowrap class="labeltd">������ʺ�/���п���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="lcyacc"/></td>								
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">�տ�������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="custnm"/></td>
									
                                <td align="center" nowrap class="labeltd">�����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="lcyamt"/></td>
								
							</tr>
							<tr>
							    <td colspan="1"  align="center" nowrap class="labeltd">�������֤������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="idcode"/></td>
							  								
                                <td colspan="1" align="center" nowrap class="labeltd">������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="exrate"/></td> 
								
							</tr>
							<tr>
							    <td colspan="1" align="center" nowrap class="labeltd">��֯��������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="custcod"/></td>
								 
								<td colspan="1" rowspan="2" align="center" nowrap class="labeltd">�ֻ���Ϣ</td>	
                                <td colspan="1" align="center" nowrap class="labeltd">����ʺ�/���п���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="fcyacc"/></td>	
								
							</tr>
							<tr>
								<td colspan="1" rowspan="3" align="center" nowrap class="labeltd">�������Ϣ</td>
								
                                <td rowspan="1" align="center" nowrap class="labeltd">�������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="txamt"/></td>
								
								<td align="center" colspan="1" nowrap class="labeltd">�ֻ���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="fcyamt"/></td>

							</tr>							
							<tr>					
								<td rowspan="1" align="center" nowrap class="labeltd">��������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="txccy"/></td>
								
								<td colspan="1" rowspan="2" align="center" nowrap class="labeltd">������Ϣ</td>
								<td colspan="1" align="center" nowrap class="labeltd">�����ʺ�/���п���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="othacc"/></td>						
							</tr>
							<tr>
													
							    <td colspan="1" align="center" nowrap class="labeltd">���㷽ʽ</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="method"/></td>	
								
								<td colspan="1" align="center" nowrap class="labeltd">�������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="othamt"/></td>																			
							</tr>							
							<tr>	
							    <td colspan="1" rowspan="2" align="center" nowrap class="labeltd">�������п۷���Ϣ</td>	
								<td colspan="1" align="center" nowrap class="labeltd">�������п۷ѽ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="inchargeamt"/></td>
	
								<td colspan="2" align="center" nowrap class="labeltd">����ҵ����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="buscode"/></td>
							</tr>							
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">�������п۷ѱ���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="inchargeccy"/></td>	
                                
								<td colspan="2" align="center" nowrap class="labeltd">ҵ����ˮ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="filler2"/></td>
							</tr>
							
						</table> </@CommonQueryMacro.GroupBox>
					</td>
				</tr>
			</table>
		</td>
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
													<@CommonQueryMacro.GroupBox id="guoup4" label="�޸�/ɾ��ԭ����Ϣ" expand="true">
														<table frame=void class="grouptable" width="100%">
															<tr>
																<td align="center" nowrap class="labeltd" width="25%">�޸�/ɾ��ԭ��</td>
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
	<tr>
		<td align="left" colspan="3"><@CommonQueryMacro.Button
			id="btSave"/>&nbsp; &nbsp;<@CommonQueryMacro.Button id="btBack"/></td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>
<script language="javascript">
	var op = "${RequestParameters["op"]?default('')}";
	<#assign v_branchcode = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getBrno()>
	function initCallGetter_post() {
		//�ϱ��ɹ�  ɾ��/�޸�ԭ�� ����   �ϱ�δ����  ɾ��/�޸���ֻ��
		var subSuccess = BopDDsAdd_dataset.getValue("subSuccess");
		if(subSuccess=="0"&&"mod"==op){
			BopDDsAdd_dataset.setFieldReadOnly("actiondesc",true);			
		}
		var repStatus = BopDDsAdd_dataset.getValue("repStatus");
		if (repStatus != "02") {
			document.getElementById("repHerf").style.color="#999999";
			document.getElementById("repHerf").href="#";
		}
		//ϵͳ��Ϣֻ��
		BopDDsAdd_dataset.setFieldReadOnly("actiontype",true);
		BopDDsAdd_dataset.setFieldReadOnly("recStatus",true);
		BopDDsAdd_dataset.setFieldReadOnly("approveStatus",true);
		BopDDsAdd_dataset.setFieldReadOnly("repStatus",true);
		BopDDsAdd_dataset.setFieldReadOnly("crtTm",true);
		BopDDsAdd_dataset.setFieldReadOnly("lstUpdTm",true);
		BopDDsAdd_dataset.setFieldReadOnly("approveResult",true);
		
		if("new" == op) {
			BopDDsAdd_dataset.setFieldReadOnly("rptno",true);
			BopDDsAdd_dataset.setFieldReadOnly("crtTm",true);
			window.document.getElementById('deleteasc').style.display="none";
			window.document.getElementById('xitong').style.display="none";
			window.document.getElementById('repHerf').style.display="none";
		} else if("mod" == op) {
			BopDDsAdd_dataset.setFieldReadOnly("filler2",true);
			BopDDsAdd_dataset.setFieldReadOnly("rptno",true);
			BopDDsAdd_dataset.setFieldReadOnly("approveStatus",true);
			BopDDsAdd_dataset.setFieldReadOnly("actiontype",true);			
			BopDDsAdd_dataset.setFieldReadOnly("crtTm",true);
		} else if("del" == op) {
			BopDDsAdd_dataset.getField("actiondesc").required=true;
			BopDDsAdd_dataset.setFieldReadOnly("approveStatus",true);
			BopDDsAdd_dataset.setFieldReadOnly("actiontype",true);
			BopDDsAdd_dataset.setFieldReadOnly("crtTm",true);
			BopDDsAdd_dataset.setFieldReadOnly("filler2",true);
			BopDDsAdd_dataset.setFieldReadOnly("rptno",true);
			BopDDsAdd_dataset.setFieldReadOnly("custype",true);
			BopDDsAdd_dataset.setFieldReadOnly("idcode",true);
			BopDDsAdd_dataset.setFieldReadOnly("custcod",true);
			BopDDsAdd_dataset.setFieldReadOnly("custnm",true);
			BopDDsAdd_dataset.setFieldReadOnly("oppuser",true);
			BopDDsAdd_dataset.setFieldReadOnly("txccy",true);
			BopDDsAdd_dataset.setFieldReadOnly("txccyName",true);
			BopDDsAdd_dataset.setFieldReadOnly("txamt",true);
			BopDDsAdd_dataset.setFieldReadOnly("exrate",true);
			BopDDsAdd_dataset.setFieldReadOnly("lcyamt",true);			
			BopDDsAdd_dataset.setFieldReadOnly("lcyacc",true);
			BopDDsAdd_dataset.setFieldReadOnly("fcyamt",true);
			BopDDsAdd_dataset.setFieldReadOnly("fcyacc",true);
			BopDDsAdd_dataset.setFieldReadOnly("othamt",true);
			BopDDsAdd_dataset.setFieldReadOnly("othacc",true);
			BopDDsAdd_dataset.setFieldReadOnly("method",true);
			BopDDsAdd_dataset.setFieldReadOnly("buscode",true);
			BopDDsAdd_dataset.setFieldReadOnly("inchargeccy",true);
			BopDDsAdd_dataset.setFieldReadOnly("inchargeccyName",true);
			BopDDsAdd_dataset.setFieldReadOnly("inchargeamt",true);
		} else if("detail" == op) {
			BopDDsAdd_dataset.readOnly=true;
			$("#btSave").hide();
			BopDDsAdd_dataset.setFieldReadOnly("crtTm",true);
			BopDDsAdd_dataset.setFieldReadOnly("approveStatus",true);
			BopDDsAdd_dataset.setFieldReadOnly("actiontype",true);
			BopDDsAdd_dataset.setFieldReadOnly("filler2",true);
			BopDDsAdd_dataset.setFieldReadOnly("rptno",true);
			BopDDsAdd_dataset.setFieldReadOnly("custype",true);
			BopDDsAdd_dataset.setFieldReadOnly("idcode",true);
			BopDDsAdd_dataset.setFieldReadOnly("custcod",true);
			BopDDsAdd_dataset.setFieldReadOnly("custnm",true);
			BopDDsAdd_dataset.setFieldReadOnly("oppuser",true);
			BopDDsAdd_dataset.setFieldReadOnly("txccy",true);
			BopDDsAdd_dataset.setFieldReadOnly("txccyName",true);
			BopDDsAdd_dataset.setFieldReadOnly("txamt",true);
			BopDDsAdd_dataset.setFieldReadOnly("exrate",true);
			BopDDsAdd_dataset.setFieldReadOnly("lcyamt",true);			
			BopDDsAdd_dataset.setFieldReadOnly("lcyacc",true);
			BopDDsAdd_dataset.setFieldReadOnly("fcyamt",true);
			BopDDsAdd_dataset.setFieldReadOnly("fcyacc",true);
			BopDDsAdd_dataset.setFieldReadOnly("othamt",true);
			BopDDsAdd_dataset.setFieldReadOnly("othacc",true);
			BopDDsAdd_dataset.setFieldReadOnly("method",true);
			BopDDsAdd_dataset.setFieldReadOnly("buscode",true);
			BopDDsAdd_dataset.setFieldReadOnly("inchargeccy",true);
			BopDDsAdd_dataset.setFieldReadOnly("inchargeccyName",true);
			BopDDsAdd_dataset.setFieldReadOnly("inchargeamt",true);
			BopDDsAdd_dataset.setFieldReadOnly("actiondesc",true);
		}
		
	}
	
	function custype_DropDown_onSelect(dropDown,
			record, editor){
		var cus = record[0];
		if(cus=="C"){
			BopDDsAdd_dataset.setValue("idcode","");
			return true;
		}
		if(cus=="D"){
			BopDDsAdd_dataset.setValue("custcod","");
			return true;
		}
		return true;
	}
	function btBack_onClick() {
		closeWin();
	}

	//���Ե�ֻ��ͳһ����
	if(op == "add") {
		
	}
	//���水ť�ύǰ���ͳһ����
	function btSave_onClickCheck(button) {
		if(op=="del"){
			   var actiondesc = BopRDsAdd_dataset.getValue("actiondesc");
			   if(actiondesc == null || actiondesc == "") {
				  alert("�ֶ�[ɾ��ԭ��]����Ϊ��");
				  return false;
			   }
			}
			BopDDsAdd_dataset.setParameter("op",op);
			return true;
	}

	function btSave_postSubmit(button){
		alert("����ɹ���");
		closeWin(true);
	}

</script>
</@CommonQueryMacro.page>
