<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�걨��Ϣ">
<@CommonQueryMacro.CommonQuery id="bopGDsRecordInfo" init="true" insertOnEmpty="true" navigate="false">
<table width="90%" cellpadding="2">
	<tr>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<@CommonQueryMacro.GroupBox id="groupbox1" label="������Ϣ" expand="true">
						<table frame="void" class="grouptable" width="100%">
							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">�걨����</td>
								<td class="datatd">
									<@CommonQueryMacro.SingleField fId="rptno"/>
									<input id="btLoadPage" extra="button" style='width=25px;height=17px;' onclick="loadBase();" type='button' value='...'/>
								</td>
								<td colspan="2" align="center" nowrap class="labeltd">����������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="oppuser"/></td>
							</tr>
							<tr>
								<td rowspan="4" align="center" nowrap class="labeltd">�տ�����Ϣ</td>
								<td align="center" nowrap class="labeltd">�տ������� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="custype" /></td>
								<td rowspan="3" align="center" nowrap class="labeltd">�����Ϣ</td>
								<td align="center" nowrap class="labeltd">����� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="lcyamt" /></td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">�տ�������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="custnm"/></td>
								<td align="center" nowrap class="labeltd">������ʺ�/���п���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="lcyacc" /></td>
								
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">�������֤������ </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="idcode" /></td>
								<td align="center" nowrap class="labeltd">������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="exrate" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">��֯��������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="custcod" /></td>
								<td colspan="1" rowspan="2" align="center" nowrap class="labeltd">�ֻ���Ϣ</td>
								<td align="center" nowrap class="labeltd">�ֻ���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="fcyamt" /></td>
							</tr>
							<tr>
								<td colspan="1" rowspan="3" align="center" nowrap class="labeltd">�������Ϣ</td>
								<td align="center" nowrap class="labeltd">�������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="txamt" /></td>
								<td align="center" nowrap class="labeltd">����ʺ�/���п��� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="fcyacc" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">�������� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="txccy" /></td>
								<td colspan="1" rowspan="2" align="center" nowrap class="labeltd">������Ϣ</td>
								<td align="center" nowrap class="labeltd">�������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="othamt" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">���㷽ʽ </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="method" /></td>
								<td align="center" nowrap class="labeltd">�����ʺ�/���п���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="othacc" /></td>
							</tr>
							<tr>
								<td colspan="1" rowspan="2" align="center" nowrap class="labeltd">�������п۷���Ϣ</td>
								<td align="center" nowrap class="labeltd">�������п۷ѱ��� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="inchargeccy" /></td>
								<td colspan="1" rowspan="2" align="center" nowrap class="labeltd">�������п۷���Ϣ</td>
								<td align="center" nowrap class="labeltd">�������п۷ѱ��� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="outchargeccy" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">�������п۷ѽ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="inchargeamt" /></td>
								<td align="center" nowrap class="labeltd">�������п۷ѽ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="outchargeamt" /></td>
							</tr>
							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">����ҵ����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="buscode" /></td>
							</tr>
						</table> 
						</@CommonQueryMacro.GroupBox>
						</td>
				</tr>
				<tr>
			<td>
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td>
					<@CommonQueryMacro.GroupBox id="groupbox2" label="�걨��Ϣ" expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">�Ƿ���ں��������ջ� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="isref" /></td>
								<td colspan="2" align="center" nowrap class="labeltd">�������� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="payattr" /></td>
							</tr>
							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">�����˳�פ����/��������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="country" /></td>
								<td colspan="2" align="center" nowrap class="labeltd">�տ�����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="paytype" /></td>
							</tr>
							<tr>
								<td colspan="1" rowspan="3" align="center" nowrap class="labeltd">������Ϣ1</td>
								<td align="center" nowrap class="labeltd">���ױ���1</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="txcode" /></td>
								<td colspan="1" rowspan="3" align="center" nowrap class="labeltd">������Ϣ2</td>
								<td align="center" nowrap class="labeltd">���ױ���2</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="txcode2" /></td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">��Ӧ���1</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="tc1amt" /></td>
								<td colspan="1" align="center" nowrap class="labeltd">��Ӧ���2</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="tc2amt" /></td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">���׸���1</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="txrem" /></td>
								<td colspan="1" align="center" nowrap class="labeltd">���׸���2</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="tx2rem" /></td>
							</tr>
							<tr>
								<td colspan="1" rowspan="2" align="center" nowrap class="labeltd">���Ϣ</td>
								<td align="center" nowrap class="labeltd">��� </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="crtuser" /></td>
								<td colspan="2" align="center" nowrap class="labeltd">����������/�������/ҵ����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="billno" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">��˵绰 </td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="inptelc" /></td>
								<td colspan="2" align="center" nowrap class="labeltd">�걨����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="rptdate" /></td>
							</tr>
							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">ҵ����ˮ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="filler2" /></td>
							</tr>
						</table>
						</@CommonQueryMacro.GroupBox>
					</td>
			</tr>
		</table>
	</td>
</tr>
			</table>
		     </td>
		     <td  valign="top">
			     <table width="100%" cellpadding="0" cellspacing="0">
				    <tr>
					   <td id="systemMessageTd"><@CommonQueryMacro.GroupBox id="groupbox3"
						   label="ϵͳ��Ϣ" expand="true">
						   <table frame=void class="grouptable" width="100%">
							   <tr>
								  <td align="center" nowrap class="labeltd" >��������</td>
								   <td nowrap class="datatd">
									<@CommonQueryMacro.SingleField fId="actiontype" /></td>
							   </tr>

							   <tr>
								  <td align="center" nowrap class="labeltd" >��¼״̬</td>
								  <td class="datatd">
									<@CommonQueryMacro.SingleField fId="recStatus" /></td>
							   </tr>

							   <tr>
								  <td align="center" nowrap class="labeltd">����״̬</td>
								  <td nowrap class="datatd"><@CommonQueryMacro.SingleField
									fId="approveStatus" /></td>
							   </tr>

							   <tr>
								  <td align="center" nowrap class="labeltd">�������</td>
								  <td nowrap class="datatd"><@CommonQueryMacro.SingleField
									fId="approveResult" /></td>
							   </tr>
							   <tr>
								   <td align="center" nowrap class="labeltd">��ִ״̬</td>
								   <td nowrap class="datatd"><@CommonQueryMacro.SingleField
									fId="repStatus" /> <a id="repHerf" href="javascript:doRepDet()">��ִ���</a>
								   </td>
							    </tr>
							    <tr>
								   <td align="center" nowrap class="labeltd">����ʱ��</td>
								   <td nowrap class="datatd"><@CommonQueryMacro.SingleField
									 fId="crtTm" /></td>
							    </tr>
							    <tr>
								   <td align="center" nowrap class="labeltd">������ʱ��</td>
								   <td class="datatd"><@CommonQueryMacro.SingleField
									fId="lstUpdTm" /></td>
							    </tr>
						   </table> 
						   </@CommonQueryMacro.GroupBox>
						 </td>
				    </tr>
				    <tr id="actiondescTrTd"><td>
						<@CommonQueryMacro.GroupBox id="groupbox4" label="�޸�/ɾ��ԭ��"  expand="true">
							<table frame=void class="grouptable" width="100%" >
								<tr>
									<td align="center" nowrap class="labeltd">�޸�/ɾ��ԭ��</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="actiondesc"/></td>
								</tr>
							</table>
						</@CommonQueryMacro.GroupBox>
						</td>
					</tr>
			     </table>
		     </td>
	     </tr>
	  </table>
	 </td>
   </tr>
<tr>
	<td align="left" colspan="3">
		<@CommonQueryMacro.Button id="btSave"/>&nbsp;
		&nbsp;<@CommonQueryMacro.Button id="btBack"/>
	</td>
</tr>
</table>
</@CommonQueryMacro.CommonQuery>
<script language="JavaScript">
	var op = "${RequestParameters["op"]?default('')}";
	var ds = bopGDsRecordInfo_dataset;
	//ϵͳ��Ϣֻ��
	function initCallGetter_post(){
		// �ж������ϸ�ͻ�ִ��ϸ
		var repStatus = bopGDsRecordInfo_dataset.getValue("repStatus");
		if (repStatus == "00" || repStatus == "01") {
			document.getElementById("repHerf").href="javascript:void(0)";
			document.getElementById("repHerf").style.color="#999999";
		}
		ds.setFieldReadOnly("actiontype",true);
		ds.setFieldReadOnly("recStatus",true);
		ds.setFieldReadOnly("approveStatus",true);
		ds.setFieldReadOnly("approveResult",true);
		ds.setFieldReadOnly("repStatus",true);
		ds.setFieldReadOnly("crtTm",true);
		ds.setFieldReadOnly("lstUpdTm",true);
		//������Ϣֻ��
		ds.setFieldReadOnly("filler1",true);
		ds.setFieldReadOnly("rptno",true);
		ds.setFieldReadOnly("custype",true);
		ds.setFieldReadOnly("idcode",true);
		ds.setFieldReadOnly("custcod",true);
		ds.setFieldReadOnly("custnm",true);
		ds.setFieldReadOnly("oppuser",true);
		ds.setFieldReadOnly("txccy",true);
		ds.setFieldReadOnly("txamt",true);
		ds.setFieldReadOnly("exrate",true);
		ds.setFieldReadOnly("lcyamt",true);
		ds.setFieldReadOnly("lcyacc",true);
		ds.setFieldReadOnly("fcyamt",true);
		ds.setFieldReadOnly("fcyacc",true);
		ds.setFieldReadOnly("othamt",true);
		ds.setFieldReadOnly("othacc",true);
		ds.setFieldReadOnly("inchargeccy",true);
		ds.setFieldReadOnly("inchargeamt",true);
		ds.setFieldReadOnly("outchargeccy",true);
		ds.setFieldReadOnly("outchargeamt",true);
		ds.setFieldReadOnly("method",true);
		ds.setFieldReadOnly("buscode",true);
		
		//�ϱ��ɹ�  ɾ��/�޸�ԭ�� ����   �ϱ�δ����  ɾ��/�޸���ֻ��  add by  huangcheng
		var subSuccess = ds.getValue("subSuccess");
		if(subSuccess=="0"&&"mod"==op){
			ds.setFieldReadOnly("actiondesc",true);		
			document.getElementById("btLoadPage").style.display="none";	
		}
		if (op == "add") {
			window.document.getElementById('systemMessageTd').style.display="none";
			window.document.getElementById('actiondescTrTd').style.display="none";
		} else if (op == "del") {
			setCommonReadOnly();
			ds.getField("actiondesc").required = true;
			document.getElementById("btLoadPage").style.display="none";
		} else if (op == "det"){
			$("#btSave").get(0).style.display="none";
			document.getElementById("btLoadPage").style.display="none";
			//������Ϣֻ��
			setCommonReadOnly();
			ds.setFieldReadOnly("actiondesc",true);
		}
	}
	//���Ե�ֻ��ͳһ����
	function setCommonReadOnly() {
		ds.setFieldReadOnly("isref",true);
		ds.setFieldReadOnly("country",true);
		ds.setFieldReadOnly("paytype",true);
		ds.setFieldReadOnly("payattr",true);
		ds.setFieldReadOnly("txcode",true);
		ds.setFieldReadOnly("tc1amt",true);
		ds.setFieldReadOnly("txrem",true);
		ds.setFieldReadOnly("txcode2",true);
		ds.setFieldReadOnly("tc2amt",true);
		ds.setFieldReadOnly("tx2rem",true);
		ds.setFieldReadOnly("crtuser",true);
		ds.setFieldReadOnly("inptelc",true);
		ds.setFieldReadOnly("rptdate",true);
		ds.setFieldReadOnly("billno",true);
		ds.setFieldReadOnly("filler2",true);
	}
	
	function doRepDet(){
		var id = ds.getValue("id");
		var appType = ds.getValue("appType");
		var currentfile = ds.getValue("currentfile");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile, 600, 500);
	}

	function btBack_onClick(){
		closeWin();
	}	
				
	function btSave_onClickCheck(button) {
		ds.setParameter("op",op);
		return true;
	}
	
	function btSave_postSubmit(button){
		alert("����ɹ���");
		closeWin(true);
	}
	
	//�������������걨��������Ϣѡ���
	function loadBase(){		
		showPickup("���������걨��������Ϣ","${contextPath}/fpages/bop/collandaudit/ag/ftl/winloadpage/BopAGLoadPage.ftl?currentfile=G");
	}
	function txcode_DropDown_beforeOpen(dropDown){
		MtsInOutCodeTreeSelect_DropDownDataset.setParameter("headDataTypeNo","01");
		MtsInOutCodeTreeSelect_DropDownDataset.setParameter("codeType","BOP-IN");
	}
	function txcode2_DropDown_beforeOpen(dropDown){
		MtsInOutCodeTreeSelectTwo_DropDownDataset.setParameter("headDataTypeNo","01");
		MtsInOutCodeTreeSelectTwo_DropDownDataset.setParameter("codeType","BOP-IN");
	}
</script>
</@CommonQueryMacro.page>