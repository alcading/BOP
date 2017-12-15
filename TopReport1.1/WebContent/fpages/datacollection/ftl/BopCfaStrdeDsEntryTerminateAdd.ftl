<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#global contextPath = contextPath>
<@CommonQueryMacro.page title="��ֹ��Ϣ����">
<@CommonQueryMacro.CommonQuery id="bopCfaStrdeDsEntryTerminateAdd" navigate="false" init="true" insertOnEmpty="true">
<table>
	<tr>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td><@CommonQueryMacro.GroupBox id="groupbox1" label="ǩԼ��Ϣ"
						expand="true">
						<table frame="void" class="grouptable" width="100%">
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">����ҽṹ�Դ����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="strdecode"/><input extra="button" style='width=25px;height=17px;' onclick="loadAccount();" type='button' value='...'/></td>


								<td rowspan="1" align="right" nowrap class="labeltd">���ڻ�����ʶ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="branchcode"/></td>

							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">�ͻ�����
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="clientcode"/></td>

								<td colspan="1" align="center" nowrap class="labeltd">�ͻ�����
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="clientname"/></td>

							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">ǩԼ����
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="contractdate"/></td>

								<td colspan="1" align="center" nowrap class="labeltd">��ͬ��
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="contract"/></td>

							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">ǩԼ���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="contractamount"/></td>

								<td rowspan="1" align="center" nowrap class="labeltd">������
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="maturity"/></td>

							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">�ҹ�ָ��
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="lincame"/></td>

								<td align="center" nowrap class="labeltd">�ҹ�ָ����㷽��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="lincamethod"/></td>

							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">Լ������������
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="aginraup"/></td>

								<td align="center" nowrap class="labeltd">Լ������������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="aginralo"/></td>

							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">��Ϣ������ʽ</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="aginraloinpay"/></td>

								<td colspan="1" align="center" nowrap class="labeltd">��ע</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="remark"/></td>
							</tr>
						</table> </@CommonQueryMacro.GroupBox>
					</td>
				</tr>
			</table>
		</td>

		<td width="8px"></td>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0" style="display:none">
				<tr>
					<td><@CommonQueryMacro.GroupBox id="groupbox2" label="ϵͳ��Ϣ"
						expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">��������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="actiontype"/></td>
							</tr>
							<tr>
								<td rowspan="1" align="right" nowrap class="labeltd">��¼״̬</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="recStatus"/></td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">����״̬
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="approveStatus"/>
								</td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">����˵��
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="approveResult"/>
								</td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">��ִ״̬
								</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="repStatus"/>
								</td>
							</tr>
							<tr>
								<td colspan="1" align="center" nowrap class="labeltd">����ʱ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="crtTm"/></td>
							</tr>
								<td colspan="1" align="center" nowrap class="labeltd">����޸�ʱ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField
									fId="lstUpdTm"/></td>
							</tr>
						</table> </@CommonQueryMacro.GroupBox></td>
				</tr>
			</table></td>

	</tr>

	<tr><#--MOD  BY HUANGCHENG   2012-8-22 BEGIN-->
		<td>
		<@CommonQueryMacro.GroupBox id="groupbox1" label="��ֹ��Ϣ" expand="true">
			<table frame=void class="grouptable" width="900px">
               <tr>
                   <td colspan="1" align="center" nowrap class="labeltd" >��ֹ����</td>
                   <td class="datatd"><@CommonQueryMacro.SingleField fId="tertype"/> </td>

	               <td colspan="1"  align="center" nowrap class="labeltd" >��ֹ֧����� </td>
		           <td class="datatd"><@CommonQueryMacro.SingleField fId="terpaycode"/></td>

               </tr>
               <tr>

		           <td colspan="1" align="center" nowrap class="labeltd" >��ֹ���� </td>
                   <td class="datatd" ><@CommonQueryMacro.SingleField fId="terdate"/> </td>

                   <td colspan="1" align="center" nowrap class="labeltd" >��ֹ֧�����ϼ��������</td>
                   <td class="datatd" ><@CommonQueryMacro.SingleField fId="terpayamtormb"/> </td>

    			<tr>
		           <td rowspan="1" align="center" nowrap class="labeltd" >��ֹ�����֧����� </td>
		           <td class="datatd" ><@CommonQueryMacro.SingleField fId="terrmbpayam"/>  </td>

                   <td colspan="1" align="center" nowrap class="labeltd" >��ֹ���֧������ </td>
                   <td class="datatd" ><@CommonQueryMacro.SingleField fId="terpaycurr"/> </td>
				</tr>
				<tr>
		           <td align="center" nowrap class="labeltd" >��ֹ���֧�����</td>
		           <td class="datatd" ><@CommonQueryMacro.SingleField fId="terpaycurram"/>  </td>

                   <td colspan="1" align="center" nowrap class="labeltd" >ҵ����ˮ��</td>
                   <td class="datatd" ><@CommonQueryMacro.SingleField fId="filler2"/> </td>
              </tr>
              <tr>
                   <td colspan="1" align="center" nowrap class="labeltd" >��ע</td>
                   <td class="datatd" colspan="3"><@CommonQueryMacro.SingleField fId="remark1"/> </td>
              </tr>
           </table>
         </@CommonQueryMacro.GroupBox>
       </td>
   </tr>

   <tr>
		<td>
			<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;<@CommonQueryMacro.Button id= "btBack"/>
		</td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>
<script language="javascript">
	var op = "${RequestParameters["op"]?default('')}";
	//��ֹ�����"****"����
	<#assign v_terpaycode = statics["com.huateng.report.utils.ReportUtils"].getTempStr(null,4)>
	function initCallGetter_post(){
		if (bopCfaStrdeDsEntryTerminateAdd_dataset.length == 0) {
			bopCfaStrdeDsEntryTerminateAdd_dataset.insertRecord("end");
		}
		bopCfaStrdeDsEntryTerminateAdd_dataset.setValue("terpaycode","${v_terpaycode}");
		bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("terpaycode",true);
	}

	//ǩԼ��Ϣֻ��
	bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("strdecode",true);
	bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("branchcode",true);
	bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("clientcode",true);
	bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("clientname",true);
	bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("contractdate",true);
	bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("contract",true);
	bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("contractamount",true);
	bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("maturity",true);
	bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("lincame",true);
	bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("lincamethod",true);
	bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("aginraup",true);
	bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("aginralo",true);
	bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("aginraloinpay",true);
	bopCfaStrdeDsEntryTerminateAdd_dataset.setFieldReadOnly("remark",true);


	function btBack_onClick() {
		closeWin();
	}

	//����ǩԼ��Ϣѡ���
	function loadAccount(){
		showPickup("ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/winloadpage/BopCfaStrdeDsLoadPage.ftl?type=terminate");
	}

	//���水ť�ύǰ���ͳһ����
	function btSave_onClickCheck(button) {
		return addClickCheck();
	}

	//���水ť���
	function addClickCheck() {
		var strdecode = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("strdecode");
		var terpaycode = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("terpaycode");
		var terpayamtormb = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("terpayamtormb");
		var terpaycurram = bopCfaStrdeDsEntryTerminateAdd_dataset.getString("terpaycurram");
		var terpaycurr = bopCfaStrdeDsEntryTerminateAdd_dataset.getValue("terpaycurr");
		var terrmbpayam = bopCfaStrdeDsEntryTerminateAdd_dataset.getString("terrmbpayam");
		if(strdecode == null || strdecode == "") {
			alert("����ѡ������ҽṹ�Դ����");
			return false;
		}
		if(terpaycode.length != 4) {
			alert("�ֶ�[��ֹ֧�����]������4λ�ַ�");
			return false;
		}
		if(terrmbpayam.length == 0 && terpaycurram.length == 0) {
			alert("��ֹ�����֧���������ֹ���֧�����������һ����");
			return false;
		}
		//��ֹ���֧�����ֺ���ֹ���֧�����Ϊһ�����ݣ�����ͬʱΪ�ջ��߲�Ϊ�ա� terpaycurr terpaycurram
		if((terpaycurr.length == 0 && terpaycurram.length != 0) || (terpaycurr.length != 0 && terpaycurram.length == 0)) {
			alert("��ֹ���֧�����ֺ���ֹ���֧��������ͬʱΪ�ջ��߲�Ϊ��");
			return false;
		}
		//����ҽṹ�Դ���ͬ��ֹ��֧�����ϼ��������ֵ��������ֹ�����֧�����+��ֹ���֧�����������ҡ�(�ں�̨��֤)
		return true;
	}

	function btSave_postSubmit(button) {
		alert("����ɹ�");
		closeWin(true);
	}

</script>
</@CommonQueryMacro.page>
