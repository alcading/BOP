<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro> 
<@CommonQueryMacro.page title="������Ϣ">
<@CommonQueryMacro.CommonQuery id="BopRDsAdd" init="true" submitMode="all" navigate="false">
<table width="95%" cellpadding="2">
			<tr>
				<td  width="75%" valign="top">
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<@CommonQueryMacro.GroupBox id="groupbox1" label="������Ϣ" expand="true">
						       <table frame="void" class="grouptable" width="100%">
									<tr>
										<td colspan="2" align="center" nowrap class="labeltd">�걨����</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="rptno"/><input id="loadLoanButton" extra="button" style='width=25px;height=17px;' onclick="loadLoan();" type='button' value='...'/></td>
																				
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
										<td class="datatd"><@CommonQueryMacro.SingleField fId="othamt"/></td>						
									</tr>
									<tr>
																
									    <td colspan="1" align="center" nowrap class="labeltd">���㷽ʽ</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="method"/></td>	
											
										<td colspan="1" align="center" nowrap class="labeltd">�������</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="othacc"/></td>																			
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
									</tr>
							
						       </table> 
							   </@CommonQueryMacro.GroupBox>
							</td>
						</tr>
						<tr>
							<td>
								<@CommonQueryMacro.GroupBox id="groupbox1" label="������Ϣ"	expand="true">
								<table frame="void" class="grouptable" width="100%">
									<tr>
										<td colspan="2" align="center" nowrap class="labeltd">�Ƿ�˰���������ջ�</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="isref"/></td>
		
										<td colspan="2" align="right" nowrap class="labeltd">������������</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="payattr"/></td>
		
									</tr>
									<tr>
									    <td colspan="1" rowspan="3" align="center" nowrap class="labeltd">������Ϣ1</td>
										<td colspan="1" align="center" nowrap class="labeltd">���ױ���1</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="txcode"/></td>
										
										<td colspan="1" rowspan="3" align="center" nowrap class="labeltd">������Ϣ2</td>
										<td colspan="1" align="center" nowrap class="labeltd">���ױ���2</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="txcode2"/></td>	
											
									</tr>
									<tr> 	
									    <td colspan="1" align="center" nowrap class="labeltd">��Ӧ���1</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="tc1amt"/></td>	
										<td rowspan="1" align="center" nowrap class="labeltd">��Ӧ���2</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="tc2amt"/></td>					
									</tr>
									<tr>
										<td colspan="1" align="center" nowrap class="labeltd">���׸���1</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="txrem"/></td>
							   
										<td rowspan="1" align="center" nowrap class="labeltd">���׸���2</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="tx2rem"/></td>
									</tr>
									<tr>
										<td colspan="1" rowspan="2" align="center" nowrap class="labeltd">���Ϣ</td>
										<td colspan="1" align="center" nowrap class="labeltd">���</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="crtuser"/></td>	
											
									    <td colspan="2" align="center" nowrap class="labeltd">�տ����� </td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="paytype"/></td>
									</tr>
									<tr>
										<td align="center" nowrap class="labeltd">��˵绰</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="inptelc"/></td>
										<td colspan="2" align="center" nowrap class="labeltd">����������/�������/ҵ����</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="regno"/></td>
									</tr>
									<tr>
										<td colspan="2" align="center" nowrap class="labeltd">�걨����</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="rptdate"/></td>
											
										<td colspan="2" align="center" nowrap class="labeltd">ҵ����ˮ��</td>
										<td class="datatd"><@CommonQueryMacro.SingleField fId="filler2"/></td>						
									</tr>
							    </table> </@CommonQueryMacro.GroupBox>
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
											<td  align="center" nowrap class="labeltd">��¼״̬</td>
											<td class="datatd"><@CommonQueryMacro.SingleField fId="recStatus"/></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">����״̬ </td>
											<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="approveStatus" /></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">������� </td>
											<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="approveResult" /></td>
										</tr>
										<tr>
											<td align="center" nowrap class="labeltd">��ִ״̬ </td>
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
	function doRepDet(){
		var id = ds.getValue("id");
		var appType = ds.getValue("appType");
		var currentfile = ds.getValue("currentfile");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile, 600, 500);
	}
	//ϵͳ��Ϣֻ��
	BopRDsAdd_dataset.setFieldReadOnly("actiontype",true);
	BopRDsAdd_dataset.setFieldReadOnly("recStatus",true);
	BopRDsAdd_dataset.setFieldReadOnly("approveStatus",true);
	BopRDsAdd_dataset.setFieldReadOnly("repStatus",true);
	BopRDsAdd_dataset.setFieldReadOnly("crtTm",true);
	BopRDsAdd_dataset.setFieldReadOnly("lstUpdTm",true);
	BopRDsAdd_dataset.setFieldReadOnly("approveResult",true);
	//������Ϣֻ��
	if(op != "new") {
		BopRDsAdd_dataset.setFieldReadOnly("filler2",true);
	}
	BopRDsAdd_dataset.setFieldReadOnly("rptno",true);
	BopRDsAdd_dataset.setFieldReadOnly("custype",true);
	BopRDsAdd_dataset.setFieldReadOnly("idcode",true);
	BopRDsAdd_dataset.setFieldReadOnly("custcod",true);
	BopRDsAdd_dataset.setFieldReadOnly("custnm",true);
	BopRDsAdd_dataset.setFieldReadOnly("oppuser",true);
	BopRDsAdd_dataset.setFieldReadOnly("txccy",true);
	BopRDsAdd_dataset.setFieldReadOnly("txccyName",true);
	BopRDsAdd_dataset.setFieldReadOnly("txamt",true);
	BopRDsAdd_dataset.setFieldReadOnly("exrate",true);
	BopRDsAdd_dataset.setFieldReadOnly("lcyamt",true);			
	BopRDsAdd_dataset.setFieldReadOnly("lcyacc",true);
	BopRDsAdd_dataset.setFieldReadOnly("fcyamt",true);
	BopRDsAdd_dataset.setFieldReadOnly("fcyacc",true);
	BopRDsAdd_dataset.setFieldReadOnly("othamt",true);
	BopRDsAdd_dataset.setFieldReadOnly("othacc",true);
	BopRDsAdd_dataset.setFieldReadOnly("method",true);
	BopRDsAdd_dataset.setFieldReadOnly("buscode",true);
	BopRDsAdd_dataset.setFieldReadOnly("inchargeccy",true);
	BopRDsAdd_dataset.setFieldReadOnly("inchargeccyName",true);
	BopRDsAdd_dataset.setFieldReadOnly("inchargeamt",true);	
	function initCallGetter_post() {
		//�ϱ��ɹ�  ɾ��/�޸�ԭ�� ����   �ϱ�δ����  ɾ��/�޸���ֻ��
		var subSuccess = BopRDsAdd_dataset.getValue("subSuccess");
		if(subSuccess=="0"&&"mod"==op){
			BopRDsAdd_dataset.setFieldReadOnly("actiondesc",true);			
		}
		var repStatus = BopRDsAdd_dataset.getValue("repStatus");
		if (repStatus != "02") {
			document.getElementById("repHerf").href="#";
			document.getElementById("repHerf").style.color="#999999";
		}
		if("new" == op)
		{
			BopRDsAdd_dataset.setFieldReadOnly("crtTm",true);
			window.document.getElementById('deleteasc').style.display="none";
			window.document.getElementById('xitong').style.display="none";
			window.document.getElementById('repHerf').style.display="none";
			BopRDsAdd_dataset.setFieldReadOnly("crtTm",true);
		} else if("mod" == op) {
			BopRDsAdd_dataset.setFieldReadOnly("crtTm",true);
		}
		else if("del" == op)
		{
			BopRDsAdd_dataset.getField("actiondesc").required=true;
			BopRDsAdd_dataset.setFieldReadOnly("approveStatus",true);
			BopRDsAdd_dataset.setFieldReadOnly("actiontype",true);
			BopRDsAdd_dataset.setFieldReadOnly("crtTm",true);
			BopRDsAdd_dataset.setFieldReadOnly("custype",true);
			BopRDsAdd_dataset.setFieldReadOnly("isref",true);
			BopRDsAdd_dataset.setFieldReadOnly("payattr",true);
			BopRDsAdd_dataset.setFieldReadOnly("paytype",true);
			BopRDsAdd_dataset.setFieldReadOnly("txcode",true);
			BopRDsAdd_dataset.setFieldReadOnly("tc1amt",true);
			BopRDsAdd_dataset.setFieldReadOnly("txrem",true);
			BopRDsAdd_dataset.setFieldReadOnly("txcode2",true);
			BopRDsAdd_dataset.setFieldReadOnly("tc2amt",true);
			BopRDsAdd_dataset.setFieldReadOnly("tx2rem",true);
			BopRDsAdd_dataset.setFieldReadOnly("crtuser",true);			
			BopRDsAdd_dataset.setFieldReadOnly("inptelc",true);
			BopRDsAdd_dataset.setFieldReadOnly("rptdate",true);
			BopRDsAdd_dataset.setFieldReadOnly("regno",true);
			BopRDsAdd_dataset.setFieldReadOnly("filler2",true);
		}
		else if("detail" == op)
		{
			BopRDsAdd_dataset.readOnly=true;
			$("#btSave").hide();
			BopRDsAdd_dataset.setFieldReadOnly("crtTm",true);
			BopRDsAdd_dataset.setFieldReadOnly("approveStatus",true);
			BopRDsAdd_dataset.setFieldReadOnly("actiontype",true);
			BopRDsAdd_dataset.setFieldReadOnly("isref",true);
			BopRDsAdd_dataset.setFieldReadOnly("custype",true);
			BopRDsAdd_dataset.setFieldReadOnly("payattr",true);
			BopRDsAdd_dataset.setFieldReadOnly("paytype",true);
			BopRDsAdd_dataset.setFieldReadOnly("txcode",true);
			BopRDsAdd_dataset.setFieldReadOnly("tc1amt",true);
			BopRDsAdd_dataset.setFieldReadOnly("txrem",true);
			BopRDsAdd_dataset.setFieldReadOnly("txcode2",true);
			BopRDsAdd_dataset.setFieldReadOnly("tc2amt",true);
			BopRDsAdd_dataset.setFieldReadOnly("tx2rem",true);			
			BopRDsAdd_dataset.setFieldReadOnly("crtuser",true);			
			BopRDsAdd_dataset.setFieldReadOnly("inptelc",true);
			BopRDsAdd_dataset.setFieldReadOnly("rptdate",true);
			BopRDsAdd_dataset.setFieldReadOnly("regno",true);
			BopRDsAdd_dataset.setFieldReadOnly("filler2",true);
			BopRDsAdd_dataset.setFieldReadOnly("actiondesc",true);
			$("#loadLoanButton").hide();	
		}
	}
	function btBack_onClick() {
		closeWin();
	}
	//�������������걨��������Ϣѡ���
	function loadLoan(){		
		showPickup("���������걨��������Ϣ","${contextPath}/fpages/bop/collandaudit/dr/ftl/winloadpage/BopDLoadPage.ftl?currentfile=R");
	}
	//���ױ���������
    
 	 function txcode_DropDown_beforeOpen(dropDown){
        MtsInOutCodeTreeSelect_DropDownDataset.setParameter("headDataTypeNo","01");
        MtsInOutCodeTreeSelect_DropDownDataset.setParameter("codeType","BOP-IN");
	 }
	
	 function txcode2_DropDown_beforeOpen(dropDown){
        MtsInOutCodeTreeSelectTwo_DropDownDataset.setParameter("headDataTypeNo","01");
        MtsInOutCodeTreeSelectTwo_DropDownDataset.setParameter("codeType","BOP-IN");
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
		BopRDsAdd_dataset.setParameter("op",op);
		return true;
	}

	function btSave_postSubmit(button){
		alert("����ɹ���");
		closeWin(true);
	}
</script> 
</@CommonQueryMacro.page>