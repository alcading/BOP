<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>

<@CommonQueryMacro.page title="���·�߰�">
<@CommonQueryMacro.CommonQuery id="routeBindingEntry" init="true" mode="2">
	<table align="left" width="700" >
			<tr valign="left">
       			<td valign="top" colspan="2">
					<@CommonQueryMacro.Interface id="intface" label="�������ѯ����" colNm=4  />
				</td>
      		</tr>
      	<tr align="right">

    	</tr>
      	<tr>
      		<td valign="top" >
					<@CommonQueryMacro.PagePilot id="ddresult" maxpagelink="9999"/>
			</td>
			<td align="right" >
	    	<a href="javascript:window.document.getElementById('btNew').click();">����</a>
	    	<!--<a href="javascript:window.document.getElementById('btDelete').click();">ɾ��</a>
	       	-->
	       	</td>
			</tr>
			<tr>
				<td colspan="2">
				<#-- modify by shen_antonio jria: BMS-2334 begin -->
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="bussType,startBrhidName,maxAmt,isBand,opr" width="100%" hasFrame="true" height="150"  readonly="true"/>
					<#-- modify by shen_antonio jria: BMS-2334 end -->
				</td>
			</tr>
			<tr>
      		<td valign="top" colspan="2">
					<@CommonQueryMacro.Group id ="group1" label="��ϸ��Ϣ" fieldStr="bussType,startBrhid,brhClass,maxAmt,isBand"colNm=4/>


	  		<table>
        		<tr align="left">
      				<td >
      					<@CommonQueryMacro.Button id= "btSave"/>
      					&nbsp;&nbsp;
      					<@CommonQueryMacro.Button id= "btBind"/>
      				</td>
      			</tr>
      		</table>
      		</td>
		 </tr>
		 <div style="display:none">
		    <@CommonQueryMacro.Button id= "btNew" />
      		<@CommonQueryMacro.Button id= "btDelete"/>
      	 </div>
	 </table>
</@CommonQueryMacro.CommonQuery>
<script language="javascript">
function btDelete_onClickCheck(button){
	var _isBand = routeBindingEntry_dataset.getValue("isBand");
	if(_isBand=="1"){
		alert("·���Ѱ󶨲���ɾ����");
		return false;
	}
	if(!confirm("ȷ��ɾ��")){
		return false;
	}
}

function btBind_onClickCheck(button){
	var id = routeBindingEntry_dataset.getValue("id");
	var paramMap = new Map();
  	 	paramMap.put("id",id);
  	 	loadPageWindows("userWin", "����·�߰���ϸ", "/fpages/workflowRoute/ftl/RouteBindingDetail.ftl", paramMap, "winZone");
   	 	return false;

	var  _nextUrl = "/fpages/workflowRoute/ftl/RouteBindingDetail.ftl?id="+ id;
	button.url = _nextUrl;

}
<#-- modify by shen_antonio jria: BMS-2334 begin -->
function btSave_postSubmit(button){
	routeBindingEntry_dataset.flushData(routeBindingEntry_dataset.pageIndex);
	alert("����ɹ�");
}
<#-- modify by shen_antonio jria: BMS-2334 end -->

<#-- add by henry 20110617 begin-->
function datatable1_opr_onRefresh(cell, value, record)
{
	if(record&&record!=null){
		var id = record.getValue("id");
		cell.innerHTML = "<a href=\"JavaScript:contractDel("+id+")\">ɾ��</a>";
	}else{
		cell.innerHTML = "";
	}
}

function contractDel(Id){
		var record = routeBindingEntry_dataset.find(["id"],[Id]);
		routeBindingEntry_dataset.setRecord(record);
		window.document.getElementById('btDelete').click();
}
<#--add by henry 20110617 end-->
</script>
</@CommonQueryMacro.page>
