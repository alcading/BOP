<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign op=RequestParameters["op"]?default("")>
<@CommonQueryMacro.page title="����Ա��ɫ����">
	<table align="left" width="700">
		<tr align="center">
			<td width="100%">
				<@CommonQueryMacro.CommonQuery id="operMngMod" init="true" navigate="false" submitMode="all" >
					<@CommonQueryMacro.GroupBox id="guoup1" label="����Ա��Ϣ" expand="true">
						<table frame=void class="grouptable" width="100%">
						<tr>
							<td align="center" nowrap class="labeltd" width="25%"> ����Ա�� </td>
							<td class="datatd"  width="25%"><@CommonQueryMacro.SingleField fId="tlrno"/></td>
							<td align="center" nowrap class="labeltd"  width="25%"> ����Ա���� </td>
							<td  class="datatd"  width="25%"><@CommonQueryMacro.SingleField fId="tlrName" /></td>
						</tr>
					   </table>
				   </@CommonQueryMacro.GroupBox>
				</@CommonQueryMacro.CommonQuery>
			</td>
		</tr>
		
		<tr>
		
			<td>
				<@CommonQueryMacro.CommonQuery id="bctlMngEntry" init="true" submitMode="selected" navigate="false">
					<@CommonQueryMacro.GroupBox id="guoup1" label="��Ȩ������Ϣ" expand="true">
						<table frame=void width="100%">
					      	<tr>
					      		<td valign="top">
									<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="select[60],brno[160],brname" width="100%" readonly="false"/>
								</td>
						 	</tr>
							
						 </table>
					 </@CommonQueryMacro.GroupBox>
				</@CommonQueryMacro.CommonQuery>
			</td>
			
		</tr>
		<tr>
			<td width="100%">
				<@CommonQueryMacro.CommonQuery id="operMngRoleInfo" init="true" submitMode="selected" navigate="false">
					<table width="100%">
					<tr>
						<td width="100%">
							<@CommonQueryMacro.GroupBox id="guoup2" label="��λ��Ϣ" expand="true">
								<table frame=void width="100%">
							      	<tr>
							      		<td valign="top">
												<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="select[60],roleId[160],roleName" width="100%" readonly="false"/>
										</td>
								 	</tr>
								 </table>
							 </@CommonQueryMacro.GroupBox>
						 </td>
					 </tr>
					 <tr id="buttonHide" align="left">
		  				 <td>
	      					<@CommonQueryMacro.Button id= "btRoleSave" />
	      					&nbsp;&nbsp;
	                        <@CommonQueryMacro.Button id= "btCancel" />
	      				</td>
			    	</tr>
					</table>
				</@CommonQueryMacro.CommonQuery>
			</td>
		</tr>
		<!--
		<tr id ="show" style="display:none">
		
			<td>
				<@CommonQueryMacro.CommonQuery id="TlrManageRelMng" init="true" submitMode="selected" navigate="false">
					<@CommonQueryMacro.GroupBox id="guoup1" label="��ѡ��������������Ա" expand="true">
						<table frame=void width="100%">
					      	<tr>
					      		<td valign="top">
									<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="select[60],tlrno[160],tlrName" width="100%" readonly="false"/>
								</td>
						 	</tr>
						<tr align="left">
		  				 <td>
		  				  </br>
	      					<@CommonQueryMacro.Button id= "btRoleSave1" />
	      					&nbsp;&nbsp;
	                        <@CommonQueryMacro.Button id= "btCancel1" />
	      				</td>
			    	</tr>
						 </table>
					 </@CommonQueryMacro.GroupBox>
				</@CommonQueryMacro.CommonQuery>
			</td>
		</tr>
	    -->
</table>
<script language="javascript">
	var op = "${op}";
	
	function initCallGetter_post(dataset) {
		if (op == "new") {
			operMngMod_dataset.setFieldReadOnly("tlrno",false);
		}else{
			operMngMod_dataset.setFieldReadOnly("tlrno",true);
		}
		operMngMod_dataset.setParameter("op",op);
	}
	
	function btRoleSave_onClickCheck(){
		var tlrno = operMngMod_dataset.getValue("tlrno");
		var tlrName = operMngMod_dataset.getValue("tlrName");
		if (tlrno.length==0 || tlrName.length==0) {
			alert("����Ա�źͲ���Ա���Ʊ�����д��");
			return false;
		}
		var hasBctlSelected = false;
		var bctlRecord = bctlMngEntry_dataset.getFirstRecord();
		while(bctlRecord){
			var v_selected = bctlRecord.getValue("select");
			if( v_selected == true ){
				hasBctlSelected=true;
			}
			bctlRecord=bctlRecord.getNextRecord();
	   	}
	   	if (!hasBctlSelected) {
	   		alert("����ѡ��һ����Ȩ������");
	   		return false;
	   	}
	   	
	   	var record1 = operMngRoleInfo_dataset.getFirstRecord();
	var chk=0;
	var bizArr = new Array();
	while(record1){
		var temp = record1.getValue("select");
		if(temp){
			bizArr[chk] = record1.getValue("roleId");
			//alert(bizArr[chk]);
			chk++;
		}
		record1=record1.getNextRecord();
	}

	if (chk==0) {
	   		alert("������ѡ��һ����λ��");
	   		return false;
	   	}
	  
	for(var i=0;i<bizArr.length;i++){
		if( "100"== bizArr[i]){
			alert("��ѡ������������±ߵ�������Ա!");
			//�����ʾ���ص�div
			document.getElementById("show").style.display="";
			document.getElementById("buttonHide").style.display="none";
			return false;
		}
	}
	   	return true;
	}
	//�������ť�ļ��,��Ҫ������,ҵ������,

</script>
</@CommonQueryMacro.page>
