<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#global contextPath = contextPath>
<@CommonQueryMacro.page title="������Ϣ">
<@CommonQueryMacro.CommonQuery id="BopBhnDsManageCollInfo" navigate="false" init="true" insertOnEmpty="true">
<table>
	<tr>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td>
					<@CommonQueryMacro.GroupBox id="groupbox1" label="������Ϣ"
						expand="true">
							<table frame=void class="grouptable" width="100%">
								<tr>
									<td colspan="2" align="center" nowrap class="labeltd">�걨����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField
										fId="rptno"/><input id="btLoadPage" extra="button" style='width=25px;height=17px;' onclick="loadAccount();" type='button' value='...'/></td>
									<td colspan="2" align="center" nowrap class="labeltd">�տ�������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField
										fId="oppuser"/></td>
								</tr>
								<tr>
									<td rowspan="4" colspan="1" align="center" nowrap class="labeltd">�������Ϣ</td>
									<td colspan="1" align="center" nowrap class="labeltd">���������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField
										fId="custype"/></td>
									
									<td rowspan="3" colspan="1" align="center" nowrap class="labeltd">������Ϣ</td>
									<td colspan="1" align="center" nowrap class="labeltd">�������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField
										fId="exrate"/></td>
								</tr>
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">�������֤������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField
										fId="idcode"/></td>
									<td align="center" nowrap class="labeltd">������</td> 
									<td class="datatd"><@CommonQueryMacro.SingleField 
										fId="lcyamt"/></td>
								</tr>
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">��֯�������� </td> 
									<td class="datatd"><@CommonQueryMacro.SingleField 
										fId="custcod"/></td>
									<td colspan="1" align="center" nowrap class="labeltd">������ʺ�/���п��� </td> 
									<td class="datatd"><@CommonQueryMacro.SingleField 
											fId="lcyacc"/></td>
								</tr>
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">��������� </td> 
									<td class="datatd"><@CommonQueryMacro.SingleField 
										fId="custnm"/></td>
										
									<td rowspan="2" colspan="1" align="center" nowrap class="labeltd">�ֻ���Ϣ</td>
									<td align="center" nowrap class="labeltd">�ֻ���</td> 
									<td class="datatd"><@CommonQueryMacro.SingleField
										fId="fcyamt"/></td>
								</tr>
								<tr>
									<td rowspan="3" colspan="1" align="center" nowrap class="labeltd">�����Ϣ</td>
									<td colspan="1" align="center" nowrap class="labeltd">������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="txccy"/></td>
									<td colspan="1" align="center" nowrap class="labeltd">����ʺ�/���п���</td>
									<td class="datatd"><@CommonQueryMacro.SingleField
										fId="fcyacc"/></td>
								</tr>
								<tr>
									<td rowspan="1" align="center" nowrap class="labeltd">�����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField
										fId="txamt"/></td>
									<td rowspan="2" colspan="1" align="center" nowrap class="labeltd">������Ϣ</td>
									<td colspan="1" align="center" nowrap class="labeltd">�������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField
										fId="othamt"/></td>
								</tr>
								<tr>
									<td colspan="1" align="center" nowrap class="labeltd">���㷽ʽ</td>
									<td class="datatd"><@CommonQueryMacro.SingleField
										fId="method"/></td>
									<td colspan="1" align="center" nowrap class="labeltd">�����ʺ�/����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField
										fId="othacc"/></td>
								<tr/>
								<tr>
									<td colspan="2" align="center" nowrap class="labeltd">����ҵ����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField
										fId="buscode"/></td>
								</tr>
							</table> 
						</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
				<tr>
					<td>
						<@CommonQueryMacro.GroupBox id="groupbox1" label="������Ϣ" expand="true">
			<table frame=void class="grouptable" width="900px">
               <tr>
                   <td colspan="2" align="center" nowrap class="labeltd" >��ͬ��</td>
                   <td class="datatd"><@CommonQueryMacro.SingleField fId="contrno"/> </td>

	               <td colspan="1"  align="center" nowrap class="labeltd" >��Ʊ�� </td>
		           <td class="datatd"><@CommonQueryMacro.SingleField fId="invoino"/></td>

               </tr>
               <tr>
				   <td rowspan="2" colspan="1" align="center" nowrap class="labeltd">�����Ϣ</td>
		           <td colspan="1" align="center" nowrap class="labeltd" >���</td>
                   <td class="datatd" ><@CommonQueryMacro.SingleField fId="crtuser"/> </td>

		           <td rowspan="1" colspan="" align="center" nowrap class="labeltd" >�걨����</td>
		           <td class="datatd" ><@CommonQueryMacro.SingleField fId="rptdate"/>  </td>
				</tr>
    			<tr>
    			   <td colspan="1" rowspan="1" align="center" nowrap class="labeltd" >��˵绰</td>
                   <td class="datatd" ><@CommonQueryMacro.SingleField fId="inptelc"/> </td>

		           <td colspan="1" align="center" nowrap class="labeltd" >ҵ����ˮ��</td>
                   <td class="datatd" ><@CommonQueryMacro.SingleField fId="filler2"/> </td>
				</tr>
           </table>
         </@CommonQueryMacro.GroupBox>
					</td>
				</tr>
				<tr style="padding-top:15px">
					<td align="left" colspan="3"><@CommonQueryMacro.Button
						id="btSave"/>&nbsp; &nbsp;<@CommonQueryMacro.Button id="btBack"/></td>
				</tr>
			</table>
		</td>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr id="systemTableTd">
					<td>
						<@CommonQueryMacro.GroupBox id="groupbox2" label="ϵͳ��Ϣ"
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
									fId="repStatus"/><a id="repResult" href="JavaScript:doRepDet()">��ִ˵��<a/>
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
						</table> </@CommonQueryMacro.GroupBox>
					<td>
				</tr>
				<tr id="actiondescTrTd">
					<td>
										<@CommonQueryMacro.GroupBox id="BOPCfaLounexguRecordAD2" label="�޸�/ɾ����Ϣ" expand="true">
									<table frame=void class="grouptable" width="100%" >
										<tr>
											<td  align="center" nowrap class="labeltd">�޸�/ɾ��ԭ��</td>
											<td class="datatd" ><@CommonQueryMacro.SingleField fId="actiondesc"/></td>
										</tr>
									</table>
								</@CommonQueryMacro.GroupBox>
					<td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>
<script language="javascript">
	var op = "${RequestParameters["op"]?default('')}";
	var ds = BopBhnDsManageCollInfo_dataset;
	function initCallGetter_post(){
		//��ִ˵��������ʽ
		var repStatus = ds.getValue("repStatus");
		if(repStatus == "00" || repStatus == "01") {
			document.getElementById("repResult").href = "javascript:void(0)";
			document.getElementById("repResult").style.color = "#999999";
		}
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
		ds.setFieldReadOnly("method",true);
		ds.setFieldReadOnly("buscode",true);
		//ϵͳ��Ϣֻ��
		ds.setFieldReadOnly("actiontype",true);
		ds.setFieldReadOnly("recStatus",true);
		ds.setFieldReadOnly("approveStatus",true);
		ds.setFieldReadOnly("approveResult",true);
		ds.setFieldReadOnly("repStatus",true);
		ds.setFieldReadOnly("crtTm",true);
		ds.setFieldReadOnly("lstUpdTm",true);
		//û�ϱ��޸�ԭ��ֻ��
		var subSuccess = ds.getValue("subSuccess");
		if(subSuccess == "0") {
			if(op == "mod") {
				ds.setFieldReadOnly("actiondesc",true);
			}
		}
		if(op == "add") {
			$("#systemTableTd").get(0).style.display="none";
			$("#actiondescTrTd").hide();
		}
		if(op == "detail") {
			setManageReadOnly();
			$("#btSave").hide();
			$("#btLoadPage").hide();
			ds.setFieldReadOnly("actiondesc",true);
		}
		if(op == "del") {
			setManageReadOnly();
			$("#btLoadPage").hide();
		}
		if(op == "mod") {
			ds.setFieldReadOnly("filler2",true);
		}
	}

	function setManageReadOnly() {
		ds.setFieldReadOnly("contrno",true);
		ds.setFieldReadOnly("invoino",true);
		ds.setFieldReadOnly("crtuser",true);
		ds.setFieldReadOnly("inptelc",true);
		ds.setFieldReadOnly("rptdate",true);
		ds.setFieldReadOnly("filler2",true);
	}
	function btBack_onClick() {
		closeWin();
	}

	//����ǩԼ��Ϣѡ���
	function loadAccount(){
		showPickup("������Ϣ","${contextPath}/fpages/bop/collandaudit/bhn/ftl/winloadpage/BopBhnDsLoadPage.ftl?type=manage");
	}

	function btSave_onClickCheck(button) {
		var rptno = ds.getValue("rptno");
		if(rptno == null || "" == rptno) {
			alert("����ѡ���걨����!");
			return false;
			
		}
		return true;
	}
	function btSave_postSubmit(button) {
		alert("����ɹ�");
		closeWin(true);
	}
	
	function doRepDet(){
		var id = ds.getValue("id");
		var appType = ds.getValue("appType");
		var currentfile = ds.getValue("currentfile");
		//var busiCode = ds.getValue("fileNumber");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile, 600, 500);
	}
</script>
</@CommonQueryMacro.page>
