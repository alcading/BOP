<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
<@CommonQueryMacro.CommonQuery id="BOPCfaLounexguRecordChangeInfo" init="true" insertOnEmpty="true" navigate="false" >
<table  width="95%" cellpadding="2">
	<tr>
		<td  width="75%" valign="top"   >
			<table width="100%" cellpadding="0" cellspacing="0">
			<tr>
				<td>
					<@CommonQueryMacro.GroupBox id="BOPCfaLounexguRecordAD" label="������Ϣ" expand="true">
						<table frame=void class="grouptable" width="100%">

			  				 <tr>
			                  <td colspan="2" align="center" nowrap class="labeltd" width="25%" >�Ᵽ�ڴ���� </td>
			                  <td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="lounexgucode"/><input extra="button" id="selectLoad"  style='width=25px;height=17px;'  type="button" onclick="loadNo();" value="..."/> </td>

			              	  <td  colspan="2" align="center" nowrap class="labeltd" width="25%">������������</td>
			  			      <td  class="datatd"  width="25%"><@CommonQueryMacro.SingleField fId="dofoexlocode"/></td>
			  			</tr>
						<tr>
							<td colspan="2" align="center" nowrap class="labeltd" >ծȨ�˴��� </td>
		  					<td class="datatd" ><@CommonQueryMacro.SingleField fId="creditorcode"/> </td>

		  				    <td rowspan="3" align="center" nowrap class="labeltd" >������ҵ<br>����<br>��������</td>
		  					<td align="center" nowrap class="labeltd" >����ҵ����׼�ļ���</td>
		  					<td class="datatd" ><@CommonQueryMacro.SingleField fId="cfeogudad"/> </td>
						</tr>
						<tr>
							<td rowspan="3" align="center" nowrap class="labeltd" >ծ����</td>
		  					<td align="center" nowrap class="labeltd" >���� </td>
		  					<td class="datatd" ><@CommonQueryMacro.SingleField fId="debtorcode"/> </td>

		  					<td align="center" nowrap class="labeltd" >���ڴ����ȱ���</td>
			  				<td class="datatd" ><@CommonQueryMacro.SingleField fId="cfeogudcurr"/> </td>
						</tr>
						<tr>
							<td align="center" nowrap class="labeltd" >��������</td>
			  				<td  class="datatd" ><@CommonQueryMacro.SingleField fId="debtorname"/> </td>

		  					<td align="center" nowrap class="labeltd" >���ڴ����Ƚ��</td>
		  					<td class="datatd" ><@CommonQueryMacro.SingleField fId="cfeogudamount"/> </td>
						</tr>
						<tr>
							<td align="center" nowrap class="labeltd" >����</td>
		  					<td  class="datatd" ><@CommonQueryMacro.SingleField fId="debtortype"/> </td>

		  					 <td colspan="2" align="center" nowrap class="labeltd" >��Ϣ��</td>
			                 <td class="datatd" ><@CommonQueryMacro.SingleField fId="valuedate"/> </td>
						</tr>
						<tr>
							<td  colspan="2" align="center" nowrap class="labeltd">�������</td>
		  					<td class="datatd"><@CommonQueryMacro.SingleField fId="credcurrcodeOth"/> </td>

		  					<td  align="center" colspan="2" nowrap class="labeltd" width="25%">������</td>
			                <td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="maturity"/> </td>
						</tr>
						<tr>
							<td  colspan="2" align="center" nowrap class="labeltd" >����ǩԼ���</td>
			  				<td  class="datatd" ><@CommonQueryMacro.SingleField fId="credconamount"/> </td>

			  				 <td  align="center" colspan="2" nowrap class="labeltd"  >��ע</td>
			                 <td  class="datatd"   ><@CommonQueryMacro.SingleField fId="remarkOth"/> </td>
						</tr>
					

			           </table>
			           </@CommonQueryMacro.GroupBox>
					</td>
				</tr>

				<tr>
					<td>
						<@CommonQueryMacro.GroupBox id="BOPCfaLounexguRecordChangeInfo" label="�䶯��Ϣ" expand="true">
						<table frame=void class="grouptable" width="100%">
			             	<tr>
							    <td  align="center" nowrap class="labeltd">����ҵ��κ�</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="buscode"/></td>
							
                                <td  align="center" nowrap class="labeltd">�䶯���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="changeno"/></td>
                              
							</tr>
							 <tr>
								  
								<td  align="center" nowrap class="labeltd">�����</td>
								<td class="datatd"  width="25%"><@CommonQueryMacro.SingleField fId="credwithamount"/></td>
								<td  align="center" nowrap class="labeltd">�������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="credrepayamount"/></td>
							</tr>
						    <tr>
							    <td  align="center" nowrap class="labeltd">�䶯����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="changedate"/></td>
								<td  align="center" nowrap class="labeltd">��Ϣ�ѽ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="picamount"/></td>
							</tr>
							<tr>
								
                                <td align="center" nowrap class="labeltd">�����������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="guarantlibala"/></td>
								<td align="center" nowrap class="labeltd">�������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="credprinbala"/></td>
							</tr>
							<tr>
								<td   align="center" nowrap class="labeltd">�䶯����</td>
		  						<td class="datatd"><@CommonQueryMacro.SingleField fId="credcurrcode"/> </td>
                                
								<td align="center" nowrap class="labeltd">������Լ���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="guperamount"/></td>
								
							</tr>
							<tr>
								<td  align="center" nowrap class="labeltd">��ע</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="remark"/></td>
								<td  align="center" nowrap class="labeltd">ҵ����ˮ��</td>
								<td class="datatd" colspan="3"><@CommonQueryMacro.SingleField fId="filler2"/></td>
							</tr>
							
			           </table>
			           </@CommonQueryMacro.GroupBox>
					</td>
				</tr>


			</table>
		</td>

		<td width="8px"></td>
		<td  id="newAction" width="25%"  valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td>
					  <@CommonQueryMacro.GroupBox id="BOPCfaLounexguRecordAD1" label="ϵͳ��Ϣ"  expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>
								<td  align="center" nowrap class="labeltd" width="25%">��������</td>
								<td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="actiontype"/></td>
							</tr>
							<tr>
								<td  align="center" nowrap class="labeltd" width="25%">��¼״̬</td>
								<td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="recStatus"/></td>

							</tr>
							<tr>
								<td align="center" nowrap class="labeltd" > ����״̬ </td>
								<td nowrap class="datatd" > <@CommonQueryMacro.SingleField fId="approveStatus" /></td>
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
						<td>
						  <@CommonQueryMacro.GroupBox id="BOPCfaLounexguRecordAD2" label="ɾ����Ϣ"   expand="true">
							<table frame=void class="grouptable" width="100%" >
								<tr>
									<td  align="center" nowrap class="labeltd" width="25%">ɾ��ԭ��</td>
									<td class="datatd"  colspan="3" width="75%"><@CommonQueryMacro.SingleField fId="actiondesc"/></td>
								</tr>
							</table>
						  </@CommonQueryMacro.GroupBox>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr >
			<td align="left" colspan="3">
				<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;
				<@CommonQueryMacro.Button id= "btBack"/>&nbsp;&nbsp;
			</td>
		</tr>
</table>

</@CommonQueryMacro.CommonQuery>
<script language="JavaScript">
var op = "${RequestParameters["op"]?default('')}";
	function initCallGetter_post(dataset) {

			if (BOPCfaLounexguRecordChangeInfo_dataset.length == 0) {
				BOPCfaLounexguRecordChangeInfo_dataset.insertRecord("end");
	     	}
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("actiontype",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("recStatus",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("approveStatus",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("approveResult",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("repStatus",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("crtTm",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("lstUpdTm",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("lounexgucode",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("actiondesc",true);

			//������Ϣֻ��
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("creditorcode",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("cfeogudad",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("cfeogudcurr",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("debtorcode",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("cfeogudamount",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("debtorname",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("dofoexlocode",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("debtortype",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("fogucode",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("credcurrcodeOth",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("foguname",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("credconamount",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("fogunamen",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("guaranteetype",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("fogurecode",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("valuedate",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("maturity",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("remarkOth",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("filler2Oth",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("changeno",true);



		if("del" ==op ){
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("actiondesc",false);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("credwithamount",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("buscode",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("credrepayamount",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("changeno",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("picamount",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("changedate",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("credprinbala",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("credcurrcode",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("guarantlibala",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("remark",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("guperamount",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("filler2",true);
			document.getElementById('selectLoad').style.display="none";

		}else if("mod" ==op){
			document.getElementById('selectLoad').style.display="none";
		}else if("detail" ==op){
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("credwithamount",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("buscode",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("credrepayamount",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("changeno",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("picamount",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("changedate",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("credprinbala",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("credcurrcode",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("guarantlibala",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("remark",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("guperamount",true);
			BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("filler2",true);
			document.getElementById("btSave").style.display="none";
			document.getElementById('selectLoad').style.display="none";
		}else if("new" ==op){
			BOPCfaLounexguRecordChangeInfo_dataset.	getField("lounexgucode").required = true;
			<#assign v_changeno = statics["com.huateng.report.utils.ReportUtils"].getTempStr(null,4)>
			BOPCfaLounexguRecordChangeInfo_dataset.setValue("changeno","${v_changeno}");

			document.getElementById("newAction").style.display = "none";
			//var currentDate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getLastDate()}";
			//BOPCfaLounexguRecordChangeInfo_dataset.setValue("changedate", new Date());
			//BOPCfaLounexguRecordChangeInfo_dataset.setFieldReadOnly("changedate",true);
		}

			var repStatus = BOPCfaLounexguRecordChangeInfo_dataset.getValue("repStatus");
			if (repStatus != "02") {
				document.getElementById("repHerf").href="#";
				document.getElementById("repHerf").style.color="#999999";
			}
	}


	function btSave_postSubmit(button){
		alert("����ɹ�");
		closeWin(true);
	}

	function btSave_onClickCheck(button){

		if ("del" != op) {

			var lounexgucode  =BOPCfaLounexguRecordChangeInfo_dataset.getValue("lounexgucode");
			if(lounexgucode.length ==0){
				alert("�Ᵽ�ڴ����Ϊ������");
				return false;
			}

			var credcurrcode = BOPCfaLounexguRecordChangeInfo_dataset.getValue("credcurrcode");
			if(credcurrcode.length ==0){
				alert("�䶯����Ϊ������!");
				return false;
			}

			var credwithamount = parseFloat(BOPCfaLounexguRecordChangeInfo_dataset.getValue("credwithamount"));
			var credrepayamount = parseFloat(BOPCfaLounexguRecordChangeInfo_dataset.getValue("credrepayamount"));
			var picamount = parseFloat(BOPCfaLounexguRecordChangeInfo_dataset.getValue("picamount"));
			var guperamount = parseFloat(BOPCfaLounexguRecordChangeInfo_dataset.getValue("guperamount"));
			if(isNaN(credwithamount) && isNaN(credrepayamount) && isNaN(picamount) &&isNaN(guperamount)){
				alert("������������Ϣ�ѽ�������Լ���������һ����Ϊ��!");
				return false;
			}else{
				if(credwithamount  <0){
						alert("������С����!");
						BOPCfaLounexguRecordChangeInfo_dataset.setValue("credwithamount","");
						return false;
				}
				if(credrepayamount  <0){
					alert("��������С����!");
					BOPCfaLounexguRecordChangeInfo_dataset.setValue("credrepayamount","");
					return false;
				}
				if(picamount  <0){
					alert("��Ϣ�ѽ���С����!");
					BOPCfaLounexguRecordChangeInfo_dataset.setValue("picamount","");
					return false;
				}
				if(guperamount <0){
					alert("������Լ����С����!");
					BOPCfaLounexguRecordChangeInfo_dataset.setValue("guperamount","");
					return false;
				}
			}

			var credprinbala = parseFloat(BOPCfaLounexguRecordChangeInfo_dataset.getValue("credprinbala"));
			if(credprinbala  <0){
				alert("��������С����!");
				BOPCfaLounexguRecordChangeInfo_dataset.setValue("credprinbala","");
				return false;
			}

			var guperamount = parseFloat(BOPCfaLounexguRecordChangeInfo_dataset.getValue("guperamount"));
			if(guperamount  <0){
				alert("������Լ����С����!");
				BOPCfaLounexguRecordChangeInfo_dataset.setValue("guperamount","");
				return false;
			}
		}
		return true;
	}

	//�����˻���Ϣѡ���

	function loadNo(){
	   showPickup("ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/winloadpage/BOPCfaLounexguRecordLoadPage.ftl");
	}

		function doRepDet(){
			var id = BOPCfaLounexguRecordChangeInfo_dataset.getValue("id");
			var appType = BOPCfaLounexguRecordChangeInfo_dataset.getValue("appType");
			var currentfile = BOPCfaLounexguRecordChangeInfo_dataset.getValue("currentfile");
			//var busiCode = BOPCfaLounexguRecordChangeInfo_dataset.getValue("fileNumber");
			showPickup("��ִ���","${contextPath}/fpages/commonloadpage/ftl/ReportApproveResult.ftl?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile );
		}

	function btBack_onClick(button){
		closeWin();
	}
</script>
</@CommonQueryMacro.page>