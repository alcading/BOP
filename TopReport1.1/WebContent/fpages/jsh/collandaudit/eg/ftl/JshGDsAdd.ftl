<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="������Ϣ">
<@CommonQueryMacro.CommonQuery id="JshGDsAdd" init="true" insertOnEmpty="true" navigate="false">
<table  width="95%" cellpadding="2">
			<tr>
				<td  width="75%" valign="top">
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<@CommonQueryMacro.GroupBox id="guoup1" label="������Ϣ" expand="true">
									<table frame="void" class="grouptable" width="100%">
							           <tr>
								          <td colspan="2" align="center" nowrap class="labeltd">�걨����</td>
								          <td class="datatd"><@CommonQueryMacro.SingleField fId="rptno"/><input id="loadLoanButton" extra="button" style='width=25px;height=17px;' onclick="loadLoan();" type='button' value='...'/></td>

								          <td colspan="1" rowspan="3" align="center" nowrap class="labeltd">�����Ϣ</td>
								          <td colspan="1" align="center" nowrap class="labeltd">����˻��˺�</td>
								          <td class="datatd"><@CommonQueryMacro.SingleField fId="fcyacc"/></td>

							           </tr>
							           <tr>
								          <td colspan="1" rowspan="4" align="center" nowrap class="labeltd">������������Ϣ</td>
								          <td colspan="1" align="center" nowrap class="labeltd">������������������</td>
								          <td class="datatd"><@CommonQueryMacro.SingleField fId="custype"/></td>
																
								          <td colspan="1" align="center" nowrap class="labeltd">����տ�������</td>
								          <td class="datatd"><@CommonQueryMacro.SingleField fId="oppuser"/></td>
							          								
							           </tr>
							           <tr>
							              <td colspan="1" align="center" nowrap class="labeltd">������������֯��������</td>
								          <td class="datatd"><@CommonQueryMacro.SingleField fId="custcod"/></td>
								
								          <td colspan="1" align="center" nowrap class="labeltd">����˻�������</td>
								          <td class="datatd"><@CommonQueryMacro.SingleField fId="oppbank"/></td>

							           </tr>
							           <tr>
							               <td colspan="1" align="center" nowrap class="labeltd">���������˸������֤������</td>
								           <td class="datatd"><@CommonQueryMacro.SingleField fId="idcode"/></td>
							  
							               <td colspan="1" rowspan="3" align="center" nowrap class="labeltd">������Ϣ</td>
										   <td colspan="1" align="center" nowrap class="labeltd">����ұ�</td>
										   <td class="datatd"><@CommonQueryMacro.SingleField fId="lcyccy"/></td>
							     
							           </tr>
							           <tr>
							               <td colspan="1" align="center" nowrap class="labeltd">��������������</td>
								           <td class="datatd"><@CommonQueryMacro.SingleField fId="custnm"/></td>

								           <td colspan="1" align="center" nowrap class="labeltd">������</td>
								           <td class="datatd"><@CommonQueryMacro.SingleField fId="lcyamt"/></td>												    
							           </tr>
							           <tr>
								           <td colspan="2" align="center" nowrap class="labeltd">������˻��˺�</td>
								           <td class="datatd"><@CommonQueryMacro.SingleField fId="lcyacc"/></td>
							  
                                           <td colspan="1" align="center" nowrap class="labeltd">����</td>
								           <td class="datatd"><@CommonQueryMacro.SingleField fId="exrate"/></td>
                              
								
							           </tr>
							           <tr>					
								          <td colspan="2" align="right" nowrap class="labeltd">����ҵ����</td>
								          <td class="datatd"><@CommonQueryMacro.SingleField fId="buscode"/></td>									
							           </tr>
							
						            </table>
								</@CommonQueryMacro.GroupBox>
							</td>
						</tr>
						<tr>
							<td>
								<@CommonQueryMacro.GroupBox id="guoup2" label="������Ϣ" expand="true">
									<table frame="void" class="grouptable" width="100%">
							           <tr>
								           <td colspan="2" align="center" nowrap class="labeltd">��������/�������/ҵ����</td>
								           <td class="datatd"><@CommonQueryMacro.SingleField fId="regno"/></td>

                                           <td colspan="1"  rowspan="2" align="center" nowrap class="labeltd">�����Ϣ</td>
                                           <td colspan="1" align="center" nowrap class="labeltd">���</td>
								           <td class="datatd"><@CommonQueryMacro.SingleField fId="crtuser"/></td>
							           </tr>
							           <tr>
								           <td colspan="2" align="right" nowrap class="labeltd">���ױ���</td>
								           <td class="datatd"><@CommonQueryMacro.SingleField fId="txcode"/></td>
								
								           <td colspan="1" align="center" nowrap class="labeltd">��˵绰</td>
								           <td class="datatd"><@CommonQueryMacro.SingleField fId="inptelc"/></td>
							           </tr>
							           <tr>
							               <td colspan="2" align="center" nowrap class="labeltd">ҵ����ˮ��</td>
								           <td class="datatd"><@CommonQueryMacro.SingleField fId="filler2"/></td>
								
								           <td colspan="2" align="center" nowrap class="labeltd">�걨����</td>
								           <td class="datatd"><@CommonQueryMacro.SingleField fId="rptdate"/></td>						
							           </tr>					
						            </table>
								</@CommonQueryMacro.GroupBox>
							</td>
						</tr>
					</table>
				</td>

				<td width="8px"></td>
				<td width="25%"  valign="top" id="xitong">
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<@CommonQueryMacro.GroupBox id="BOPCfaLounexguRecordAD1" label="ϵͳ��Ϣ"  expand="true">
									<table frame=void class="grouptable" width="100%">
										<tr>
											<td  align="center" nowrap class="labeltd">��������</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="actiontype"/></td>
										</tr>
										<tr>
											<td  align="center" nowrap class="labeltd" width="25%">��¼״̬</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="recStatus"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd" > ����״̬ </td>
											<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="approveStatus" /></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd" > ������� </td>
											<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="approveResult" /></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd" > ��ִ״̬ </td>
											<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="repStatus" /><a id="repHerf" href="javascript:doRepDet()">��ִ���</a></td>
										</tr>
										<tr>
											<td  align="center" nowrap class="labeltd">����ʱ��</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="crtTm"/></td>
										</tr>
										<tr>
											<td  align="center" nowrap class="labeltd">������ʱ��</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="lstUpdTm"/></td>
										</tr>
									</table>
								</@CommonQueryMacro.GroupBox>
							</td>
						</tr>

						<tr>
							<td id="deleteasc">
								<@CommonQueryMacro.GroupBox id="deleteasc" label="�޸�/ɾ����Ϣ"   expand="true">
									<table frame=void class="grouptable" width="100%" >
										<tr>
											<td  align="center" nowrap class="labeltd">�޸�/ɾ��ԭ��</td>
											<td class="datatd" ><@CommonQueryMacro.SingleField fId="actiondesc"/></td>
										</tr>
									</table>
								</@CommonQueryMacro.GroupBox>
							</td>
						</tr>
					</table>
				</td>
			</tr>

			<tr>
				<td align="left" colspan="3">
					<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;
					<@CommonQueryMacro.Button id= "btBack"/>&nbsp;&nbsp;
				</td>
			</tr>
		</table>
</@CommonQueryMacro.CommonQuery>
<script language="javascript">
	var op = "${RequestParameters["op"]?default('')}";
	<#assign v_branchcode = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getBrno()>
	//ϵͳ��Ϣֻ��
	function initCallGetter_post() {
		//�ϱ��ɹ�  ɾ��/�޸�ԭ�� ����   �ϱ�δ����  ɾ��/�޸���ֻ��  
		var subSuccess = JshGDsAdd_dataset.getValue("subSuccess");
		if(subSuccess=="0"&&"mod"==op){
			JshGDsAdd_dataset.setFieldReadOnly("actiondesc",true);			
		}
		var approveStatus = JshGDsAdd_dataset.getValue("approveStatus");
		if (approveStatus == "00") {
			//document.getElementById("approveHref").style.color="#999999";
		}
		var repStatus = JshGDsAdd_dataset.getValue("repStatus");
		if (repStatus != "02") {
			document.getElementById("repHerf").href="#";
			document.getElementById("repHerf").style.color="#999999";
		}
		// ������Ϣֻ��
		JshGDsAdd_dataset.setFieldReadOnly("rptno",true);
		JshGDsAdd_dataset.setFieldReadOnly("buscode",true);
		JshGDsAdd_dataset.setFieldReadOnly("custype",true);
		JshGDsAdd_dataset.setFieldReadOnly("custcod",true);
		JshGDsAdd_dataset.setFieldReadOnly("idcode",true);
		JshGDsAdd_dataset.setFieldReadOnly("custnm",true);
		JshGDsAdd_dataset.setFieldReadOnly("lcyacc",true);
		JshGDsAdd_dataset.setFieldReadOnly("fcyacc",true);
		JshGDsAdd_dataset.setFieldReadOnly("oppuser",true);
		JshGDsAdd_dataset.setFieldReadOnly("oppbank",true);
		JshGDsAdd_dataset.setFieldReadOnly("lcyamt",true);			
		JshGDsAdd_dataset.setFieldReadOnly("lcyccy",true);
		JshGDsAdd_dataset.setFieldReadOnly("exrate",true);
		
		// ϵͳ��Ϣֻ��
		JshGDsAdd_dataset.setFieldReadOnly("actiontype",true);
		JshGDsAdd_dataset.setFieldReadOnly("recStatus",true);
		JshGDsAdd_dataset.setFieldReadOnly("approveStatus",true);
		JshGDsAdd_dataset.setFieldReadOnly("approveResult",true);
		JshGDsAdd_dataset.setFieldReadOnly("repStatus",true);
		JshGDsAdd_dataset.setFieldReadOnly("crtTm",true);
		JshGDsAdd_dataset.setFieldReadOnly("lstUpdTm",true);
		if("new" == op)
		{
			
			JshGDsAdd_dataset.setFieldReadOnly("crtTm",true);
			window.document.getElementById('deleteasc').style.display="none";
			window.document.getElementById('xitong').style.display="none";
			window.document.getElementById('repHerf').style.display="none";
			JshGDsAdd_dataset.setFieldReadOnly("crtTm",true);
		} else if("mod" == op) {
			JshGDsAdd_dataset.setFieldReadOnly("approveStatus",true);
			JshGDsAdd_dataset.setFieldReadOnly("actiontype",true);
			JshGDsAdd_dataset.setFieldReadOnly("crtTm",true);
			JshGDsAdd_dataset.setFieldReadOnly("approveResult",true);
			JshGDsAdd_dataset.setFieldReadOnly("filler2",true);
			
		}
		else if("del" == op)
		{
			$("#loadLoanButton").hide();
			JshGDsAdd_dataset.getField("actiondesc").required=true;
			JshGDsAdd_dataset.setFieldReadOnly("filler2",true);
			JshGDsAdd_dataset.setFieldReadOnly("regno",true);
			
			JshGDsAdd_dataset.setFieldReadOnly("txcode",true);
			JshGDsAdd_dataset.setFieldReadOnly("crtuser",true);
			JshGDsAdd_dataset.setFieldReadOnly("inptelc",true);
			JshGDsAdd_dataset.setFieldReadOnly("rptdate",true);
			JshGDsAdd_dataset.setFieldReadOnly("filler2",true);
			JshGDsAdd_dataset.setFieldReadOnly("approveResult",true);
		}
		else if("detail" == op)
		{
			JshGDsAdd_dataset.readOnly=true;
			$("#btSave").hide();
			$("#loadLoanButton").hide();
			JshGDsAdd_dataset.setFieldReadOnly("actiondesc",true);
			JshGDsAdd_dataset.setFieldReadOnly("approveResult",true);
            JshGDsAdd_dataset.setFieldReadOnly("regno",true);
			
			JshGDsAdd_dataset.setFieldReadOnly("txcode",true);
			JshGDsAdd_dataset.setFieldReadOnly("crtuser",true);
			JshGDsAdd_dataset.setFieldReadOnly("inptelc",true);
			JshGDsAdd_dataset.setFieldReadOnly("rptdate",true);
			JshGDsAdd_dataset.setFieldReadOnly("filler2",true);
		}
	}
	function btBack_onClick() {
		closeWin();
	}

	//���水ť�ύǰ���ͳһ����
	function btSave_onClickCheck(button) {
	
		if(op == "del") {
			var actiondesc = JshGDsAdd_dataset.getValue("actiondesc");
			if(actiondesc == null || actiondesc == "") {
				alert("�ֶ�[ɾ��ԭ��]����Ϊ��");
				return false;
			}
		}
		JshGDsAdd_dataset.setParameter("op",op);
		return true;
	}
	
	function btSave_postSubmit(button){
		alert("����ɹ���");
		closeWin(true);
	}
	//��������˻����������Ϣѡ���
	function loadLoan(){
		
		showPickup("���������걨��������Ϣ","${contextPath}/fpages/jsh/collandaudit/eg/ftl/winloadpage/JshELoadPage.ftl");
	}
 
	function txcode_DropDown_beforeOpen(dropDown){
     	MtsInOutCodeTreeSelect_DropDownDataset.setParameter("headDataTypeNo","01");
    	MtsInOutCodeTreeSelect_DropDownDataset.setParameter("codeType","BOP-OUT");
    }
</script>
</@CommonQueryMacro.page>
