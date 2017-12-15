<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
	<table  width="95%" cellpadding="2"  align="left">
		<tr>
			<td  width="70%" valign="top">
				<table width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							<@CommonQueryMacro.CommonQuery id="BOPCfaLounexguRecordAD" init="true"  submitMode="current" navigate="false">
								<@CommonQueryMacro.GroupBox id="BOPCfaLounexguRecordAD" label="������Ϣ" expand="true">
									<table frame=void class="grouptable" width="100%">
						  				<tr>
											<td colspan="2" align="center" nowrap class="labeltd" width="25%" >�Ᵽ�ڴ���� </td>
											<td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="lounexgucode"/> </td>
											<td  colspan="2" align="center" nowrap class="labeltd" width="25%">������������</td>
											<td  class="datatd"  width="25%">
												<@CommonQueryMacro.SingleField fId="dofoexlocode"/>
												<input extra="button" id="selectLoad"  style='width=25px;height=17px;'  type="button" onclick="loadNo();" value="..."/>
											</td>
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
						  					<td class="datatd"><@CommonQueryMacro.SingleField fId="credcurrcode"/> </td>
						  					<td  align="center" colspan="2" nowrap class="labeltd" width="25%">������</td>
							                <td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="maturity"/> </td>
										</tr>
										<tr>
											<td  colspan="2" align="center" nowrap class="labeltd" >����ǩԼ���</td>
							  				<td  class="datatd" ><@CommonQueryMacro.SingleField fId="credconamount"/> </td>
							  				<td  align="center" colspan="2" nowrap class="labeltd"  >��ע</td>
							                <td  class="datatd"   ><@CommonQueryMacro.SingleField fId="remark"/> </td>
										</tr>
										<tr>
											<td align="center" colspan="2" nowrap class="labeltd" >ҵ����ˮ��</td>
							  				<td class="datatd" colspan="4" ><@CommonQueryMacro.SingleField fId="filler2"/> </td>
										</tr>
									</table>
								</@CommonQueryMacro.GroupBox>
							</@CommonQueryMacro.CommonQuery>
						</td>
					</tr>
					<tr>
						<td>
							<@CommonQueryMacro.CommonQuery id="BopCfaFogucodeInfo" init="true" submitMode="all" navigate="false" insertOnEmpty="true">
								<@CommonQueryMacro.GroupBox id="BopCfaFogucodeInfo" label="���ⵣ������Ϣ" expand="true">
									<table frame=void width="100%">
										<tr>
											<td id="creMenu" align="right">
												<@CommonQueryMacro.Button id= "btCreNew"/>&nbsp;&nbsp;
												<@CommonQueryMacro.Button id= "btCreDel"/>&nbsp;&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												<@CommonQueryMacro.DataTable id="datatable2" fieldStr="fogunamen,foguname,guaranteetype,fogurecode,fogucode" width="100%" hasFrame="true" height="200px" readonly="false"/>
											</td>
										</tr>
									</table>
								</@CommonQueryMacro.GroupBox>
				  			</@CommonQueryMacro.CommonQuery>
		  				</td>
		  			</tr>

		  			<@CommonQueryMacro.CommonQuery id="BOPCfaLounexguRecordAD"  mode="1" navigate="false">
		  			<tr>
		  				<td>
		  					<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;
							<@CommonQueryMacro.Button id= "btBack"/>&nbsp;&nbsp;
		  				</td>
		  			</tr>
		  		</table>
	 	 	</td>

	  		<td width="8px"></td>
	  			<td  id="newAction" width="25%" valign="top">
					<@CommonQueryMacro.GroupBox id="guoup4" label="ϵͳ��Ϣ" expand="true">
		            	<table frame=void class="grouptable" width="100%">
							<tr>
								<td align="center" nowrap class="labeltd" width="25%">��������</td>
								<td nowrap class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="actiontype" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd" width="25%">��¼״̬</td>
								<td class="datatd" width="25%"><@CommonQueryMacro.SingleField fId="recStatus" /></td>
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
								<td align="center" nowrap class="labeltd">��ִ״̬</td>
								<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="repStatus" />
									<a id="repHerf" href="javascript:doRepDet()">��ִ���</a>
								</td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">����ʱ��</td>
								<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="crtTm" /></td>
							</tr>
							<tr>
								<td align="center" nowrap class="labeltd">������ʱ��</td>
								<td class="datatd"><@CommonQueryMacro.SingleField fId="lstUpdTm" /></td>
							</tr>
						</table>
					</@CommonQueryMacro.GroupBox>
					<@CommonQueryMacro.GroupBox id="guoup5" label="ɾ��ԭ��" expand="true">
						<table frame=void class="grouptable" width="100%">
							<tr>
								<td align="center" nowrap class="labeltd" width="25%">ɾ��ԭ��</td>
								<td class="datatd" width="75%"><@CommonQueryMacro.SingleField fId="actiondesc" /></td>
							</tr>
						</table>
					</@CommonQueryMacro.GroupBox>
				</@CommonQueryMacro.CommonQuery>
			</td>
		</tr>
</table>
<script language="JavaScript">
	var op = "${RequestParameters["op"]?default('')}";
	function initCallGetter_post(dataset) {
		BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("actiontype",true);
		BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("recStatus",true);
		BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("approveStatus",true);
		BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("approveResult",true);
		BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("repStatus",true);
		BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("crtTm",true);
		BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("lstUpdTm",true);
		BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("actiondesc",true);
		BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("dofoexlocode",true);
		document.getElementById('selectLoad').style.display="none";
		if("delInfo" == op ){
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("actiondesc",false);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("lounexgucode",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("cfeogudad",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("creditorcode",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("cfeogudcurr",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("debtorcode",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("cfeogudamount",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("debtorname",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("dofoexlocode",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("debtortype",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("credconamount",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("credcurrcode",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("valuedate",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("maturity",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("remark",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("filler2",true);

			BopCfaFogucodeInfo_dataset.setFieldReadOnly("fogucode",true);
			BopCfaFogucodeInfo_dataset.setFieldReadOnly("foguname",true);
			BopCfaFogucodeInfo_dataset.setFieldReadOnly("fogunamen",true);
			BopCfaFogucodeInfo_dataset.setFieldReadOnly("guaranteetype",true);
			BopCfaFogucodeInfo_dataset.setFieldReadOnly("fogurecode",true);
			BopCfaFogucodeInfo_dataset.setFieldReadOnly("crtTm",true);

			document.getElementById("creMenu").style.display="none";

		}else if("detail" ==op) {
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("lounexgucode",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("cfeogudad",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("creditorcode",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("cfeogudcurr",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("debtorcode",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("cfeogudamount",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("debtorname",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("dofoexlocode",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("debtortype",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("credcurrcode",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("credconamount",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("valuedate",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("maturity",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("remark",true);
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("filler2",true);

			BopCfaFogucodeInfo_dataset.setFieldReadOnly("fogucode",true);
			BopCfaFogucodeInfo_dataset.setFieldReadOnly("foguname",true);
			BopCfaFogucodeInfo_dataset.setFieldReadOnly("fogunamen",true);
			BopCfaFogucodeInfo_dataset.setFieldReadOnly("guaranteetype",true);
			BopCfaFogucodeInfo_dataset.setFieldReadOnly("fogurecode",true);
			BopCfaFogucodeInfo_dataset.setFieldReadOnly("crtTm",true);

			document.getElementById("creMenu").style.display="none";
			document.getElementById("btSave").style.display="none";
		}else if("mod" == op){
			BOPCfaLounexguRecordAD_dataset.setFieldReadOnly("lounexgucode",true);
			document.getElementById('selectLoad').style.display="";
		}else if("new" ==op){
			document.getElementById("newAction").style.display = "none";
			document.getElementById('selectLoad').style.display="";
		}
		var repStatus = BOPCfaLounexguRecordAD_dataset.getValue("repStatus");
		if (repStatus != "02") {
			document.getElementById("repHerf").href="#";
			document.getElementById("repHerf").style.color="#999999";
		}
	}

	function  BOPCfaLounexguRecordAD_dataset_afterChange(dataset,field){
		if(field.fieldName =="credconamount"){
			var credconamount  = parseFloat(BOPCfaLounexguRecordAD_dataset.getValue("credconamount"));
			if(credconamount  <0){
				alert("������ǩԼ������С����!");
				BOPCfaLounexguRecordAD_dataset.setValue("credconamount","");
				return false;
			}
		}
		if(field.fieldName =="cfeogudamount"){
			var cfeogudamount  = parseFloat(BOPCfaLounexguRecordAD_dataset.getValue("cfeogudamount"));
			if(cfeogudamount  <0){
				alert("�����ڴ����ȡ�����С����!");
				BOPCfaLounexguRecordAD_dataset.setValue("cfeogudamount","");
				return false;
			}
		}
	}

	function setRequired(field,flag){
		var f = BOPCfaLounexguRecordAD_dataset.getField(field);
		f.required = flag;
	}

	function btAddCreditor(){
		btCreNew.click();
	}

	function btDelCreditor(){
		btCreDel.click();
	}

	function setRequired(field,flag){
		var f = BOPCfaLounexguRecordAD_dataset.getField(field);
		f.required = flag;
	}

	function  btSave_onClickCheck(button){
		if ("delInfo" != op){
			var  debtortypeValue =  BOPCfaLounexguRecordAD_dataset.getValue("debtortype");
			if(debtortypeValue == "1011"){
				var cfeogudad  =  BOPCfaLounexguRecordAD_dataset.getValue("cfeogudad");
			    var cfeogudcurr =  BOPCfaLounexguRecordAD_dataset.getValue("cfeogudcurr");
			    var cfeogudamount = parseFloat(BOPCfaLounexguRecordAD_dataset.getValue("cfeogudamount"));
				if(cfeogudad ==""){
					alert("��ծ�������͡�Ϊ���ʻ�����������ҵ����׼�ļ��š�Ϊ������!");
					return false;
				}
				if(cfeogudcurr ==""){
					alert("��ծ�������͡�Ϊ���ʻ����������ڴ����ȱ��֡�Ϊ�����");
					return false;
				}
				if(isNaN(cfeogudamount)){
					alert("��ծ�������͡�Ϊ���ʻ����������ڴ����Ƚ�Ϊ�����");
					return false;
				}
			}
			var credcurrcode = BOPCfaLounexguRecordAD_dataset.getValue("credcurrcode");
			if(credcurrcode !="CNY" && credcurrcode !=""){
				var dofoexlocode = BOPCfaLounexguRecordAD_dataset.getValue("dofoexlocode");
				if(dofoexlocode ==""){
					alert("��������֡���Ϊ����ң��������������š�Ϊ������!");
					return false;
				}
			}
			//��Ϣ��
			var valuedate = document.getElementById("valuedate").value;
			//������
			var  maturity= document.getElementById("maturity").value;
			var regS = new RegExp("-","gi");
			valuedate=valuedate.replace(regS,"/");
			maturity=maturity.replace(regS,"/");
			var value1 =new Date(Date.parse(valuedate));
			var value2 = new Date(Date.parse(maturity));
			if(value2<=value1){
				alert("�������ա�����С�ڡ���Ϣ�ա���");
				return false;
			}
			var  fogurecode  =  BopCfaFogucodeInfo_dataset.getValue("fogurecode");
			if(fogurecode.length ==0){
				alert("���ⵣ����ע��ع���/��������Ϊ������!");
				return false;
			}
			var  guaranteetype  =  BopCfaFogucodeInfo_dataset.getValue("guaranteetype");
			if(guaranteetype.length ==0){
				alert("������ʽΪ������!");
				return false;
			}
			var foguname = BopCfaFogucodeInfo_dataset.getValue("foguname");
			var fogunamen = BopCfaFogucodeInfo_dataset.getValue("fogunamen");
			if(foguname =="" &&  fogunamen ==""){
				alert("�������ƺ�Ӣ������������һ��!");
				return false;
			}
			if("delInfo" ==op){
				var actiondesc = BOPCfaLounexguRecordAD_dataset.getValue("actiondesc");
				if(actiondesc ==""){
					alert("ɾ��ԭ����Ϊ��!");
					return false;
				}
			}
			if (!BOPCfaLounexguRecordAD_dataset.modified && !BopCfaFogucodeInfo_dataset.modified ) {
				alert("�����޸ĺ��ٱ��棡");
				return false;
			}
		}
		return true;
	}

	function btSave_postSubmit(button){
		alert("����ɹ���");
		closeWin(true);
	}

	function doRepDet(){
		var id = BOPCfaLounexguRecordAD_dataset.getValue("id");
		var appType = BOPCfaLounexguRecordAD_dataset.getValue("appType");
		var currentfile = BOPCfaLounexguRecordAD_dataset.getValue("currentfile");
		//var busiCode = BOPCfaLounexguRecordAD_dataset.getValue("fileNumber");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/ftl/ReportApproveResult.ftl?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile );
	}

	//�����˻���Ϣѡ���
	function loadNo(){
		showPickup("ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/winloadpage/BopCfaDofoexloDsLoadPageTwo.ftl");
	}

	function btBack_onClick(button){
		closeWin();
	}
</script>
</@CommonQueryMacro.page>