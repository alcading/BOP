<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
<@CommonQueryMacro.CommonQuery id="BopForSameInduDepositInfoCol" init="true" submitMode="all" navigate="true">
<table  width="95%" cellpadding="2">
	<tr>
		<td  width="75%" valign="top"   >
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<@CommonQueryMacro.GroupBox id="guoup1" label="ǩԼ��Ϣ"  expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">��ծ���</td>
								<td class="datatd"  width="25%"><@CommonQueryMacro.SingleField fId="exdebtcode"/></td>

								<td rowspan="6" align="center" nowrap class="labeltd">ծ<br>Ȩ<br>��<br>��<br>Ϣ</td>
								<td align="center" nowrap class="labeltd">����</td>
								<td class="datatd" width="25%"><@CommonQueryMacro.SingleField  fId="creditorcode"/></td>
							</tr>
							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">ծ���˴���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField  fId="debtorcode"/></td>

								<td align="center" nowrap class="labeltd">��������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField  fId="creditorname"/></td>
							</tr>

							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">ծ������</td>
								<td class="datatd" ><@CommonQueryMacro.SingleField  fId="debtype"/></td>

								<td align="center" nowrap class="labeltd">Ӣ������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField  fId="creditornamen"/></td>
							</tr>
							<tr>
								<td colspan="2"  align="center" nowrap class="labeltd">��Ϣ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField  fId="valuedate"/></td>

								<td align="center" nowrap class="labeltd">���ʹ���</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="creditortype"/></td>
							</tr>
							<tr>
								<td colspan="2"  align="center" nowrap class="labeltd">ǩԼ����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField	fId="contractcurr"/></td>

								<td align="center" nowrap class="labeltd">�ܲ����ڹ��ң�����������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField	fId="crehqcode"/></td>
							</tr>
							<tr>
								<td colspan="2"  align="center" nowrap class="labeltd">�Ƿ񸡶�����</td>
								<td class="datatd"><@CommonQueryMacro.SingleField  fId="floatrate"/></td>

								<td align="center" nowrap class="labeltd">��Ӫ�����ڹ��ң�����������</td>
								<td class="datatd"><@CommonQueryMacro.SingleField	fId="opercode"/></td>
							</tr>

							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">�껯����ֵ</td>
								<td class="datatd"><@CommonQueryMacro.SingleField  fId="anninrate"/></td>

								<td colspan="2" align="center" nowrap class="labeltd">�Ƿ�������������ռ��ָ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField	fId="spapfeboindex"/></td>
							</tr>

							<tr>
								<td colspan="2" align="center" nowrap class="labeltd">��ע</td>
								<td  class="datatd"><@CommonQueryMacro.SingleField fId="remark"/></td>

								<td colspan="2" align="center" nowrap class="labeltd">ҵ����ˮ��</td>
								<td  class="datatd"><@CommonQueryMacro.SingleField fId="filler2"/></td>
							</tr>
						</table>
						</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
			</table>
		</td>

		<td width="8px"></td>
		<td width="25%"  valign="top" id="sysMsgGroup">
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
<script language="javascript">
 	  var op = "${RequestParameters["op"]?default('')}";

    //��ҳ���ʼ����֮����Ե��ø÷���ִ����Ҫ����Ĳ�
    function initCallGetter_post(dataset) {
		BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("actiontype",true);
		BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("recStatus",true);
		BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("approveStatus",true);
		BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("approveResult",true);
		BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("repStatus",true);
		BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("crtTm",true);
		BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("lstUpdTm",true);
		BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("actiondesc",true);

		BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("exdebtcode",true);
		BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("debtorcode",true);

		if("new"==op){
			window.document.getElementById('sysMsgGroup').style.display="none";
		}

		if("del"==op ){
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("actiondesc",false);
			BopForSameInduDepositInfoCol_dataset.getField("actiondesc").required= true;

			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("exdebtcode",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("creditorcode",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("debtorcode",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("creditorname",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("debtype",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("creditornamen",true);
			//BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("limitType",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("creditortype",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("valuedate",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("crehqcode",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("contractcurr",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("opercode",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("floatrate",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("spapfeboindex",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("anninrate",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("remark",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("filler2",true);


		}else if("detail" ==op){

			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("exdebtcode",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("creditorcode",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("debtorcode",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("creditorname",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("debtype",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("creditornamen",true);
			//BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("limitType",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("creditortype",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("valuedate",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("crehqcode",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("contractcurr",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("opercode",true);
			//BopForSameInduDepositInfoCol_dataset.disa("floatrate",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("spapfeboindex",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("anninrate",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("remark",true);
			BopForSameInduDepositInfoCol_dataset.setFieldReadOnly("filler2",true);

			document.getElementById("btSave").style.display="none";
		}
				var repStatus = BopForSameInduDepositInfoCol_dataset.getValue("repStatus");
				if (repStatus != "02") {
					document.getElementById("repHerf").href="#";
					document.getElementById("repHerf").style.color="#999999";
				}
    }

    	function  BopForSameInduDepositInfoCol_dataset_afterChange(dataset,field){
    		if(field.fieldName =="anninrate"){
				var anninrate  = parseFloat(BopForSameInduDepositInfoCol_dataset.getValue("anninrate"));
				if(anninrate <0){
					alert("�껯����ֵ����С����!");
					BopForSameInduDepositInfoCol_dataset.setValue("anninrate","");
					return false;
				}
			}
    	}

    	function btSave_onClickCheck(button){
    		if("del" != op ){
				var creditorname = BopForSameInduDepositInfoCol_dataset.getValue("creditorname");
				var creditornamen = BopForSameInduDepositInfoCol_dataset.getValue("creditornamen");
				if(creditorname =="" &&  creditornamen ==""){
					alert("�������ƺ�Ӣ������������һ��!");
					return false;
				}

				var anninrate = BopForSameInduDepositInfoCol_dataset.getValue("anninrate");//�껯����ֵ
				if (!isNaN(anninrate) && parseFloat(anninrate) >= 1) {
					alert("[�껯����ֵ]����ΪС��");
					return false;
				}

				if(op =="del"){
					var actiondesc = BopForSameInduDepositInfoCol_dataset.getValue("actiondesc");
					if (actiondesc.length == 0) {
						alert("����дɾ��ԭ��");
						return false;
					}
				}
			}
			return true;

		}


		function btSave_postSubmit(button){
			alert("����ɹ���");
			closeWin(true);
		}

		function doRepDet(){
			var id = BopForSameInduDepositInfoCol_dataset.getValue("id");
			var appType = BopForSameInduDepositInfoCol_dataset.getValue("appType");
			var currentfile = BopForSameInduDepositInfoCol_dataset.getValue("currentfile");
			//var busiCode = BopForSameInduDepositInfoCol_dataset.getValue("fileNumber");
			showPickup("��ִ���","${contextPath}/fpages/commonloadpage/ftl/ReportApproveResult.ftl?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile );
		}

   	function debtype_DropDown_beforeOpen(dropDown){

	   DataDicTreeSelect_DropDownDataset.setParameter("headDataTypeNo","24");
	}

	function creditortype_DropDown_beforeOpen(dropDown){
	   DataDicTreeSelectCor_DropDownDataset.setParameter("headDataTypeNo","23");
	}

	function btBack_onClick(button){
			closeWin();
	}
</script>
</@CommonQueryMacro.page>
