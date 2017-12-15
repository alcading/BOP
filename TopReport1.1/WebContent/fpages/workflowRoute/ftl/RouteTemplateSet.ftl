<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>

<@CommonQueryMacro.page title="���·��ģ������">
<@CommonQueryMacro.CommonQuery id="routeTemplateSet" init="true" mode="2">
	<table align="left">
			<tr valign="center">
       			<td valign="top" colspan="2">

					<@CommonQueryMacro.Interface id="intface" label="�������ѯ����" colNm=4  width="700"/>
				</td>
      		</tr>
      	<tr align="right">

        </tr>
      	<tr>
      		<td valign="top">
					<@CommonQueryMacro.PagePilot id="ddresult" maxpagelink="9"/>
			</td>
			<td align="right">
	    	<a href="javascript:window.document.getElementById('btNew').click();">����</a>
	    	<!--
	    	<a href="javascript:window.document.getElementById('btDelete').click();">ɾ��</a>
	        -->
	        </td>
			</tr>
			<tr>
			<td colspan="2">
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="id,routeName,brhClass,isBand,opr" width="100%" hasFrame="true" height="150"  readonly="true"/>
			</td>
			</tr>
			<tr>
      		<td valign="top" colspan="2">
					<@CommonQueryMacro.Group id ="group1" label="��ϸ��Ϣ" fieldStr="status,id,isBand,routeName,isSet,brhClass"colNm=4/>

	  		<table>
        		<tr align="center">
      				<td >
      					<@CommonQueryMacro.Button id= "btSave"/>
      				</td>
      			</tr>
      		</table>
      		</td>
		 </tr>
		<div style="display:none">
		  <@CommonQueryMacro.Button id= "btNew" />
      	  <@CommonQueryMacro.Button id= "btDelete"/>
      	  <@CommonQueryMacro.Button id= "btDetail"/>
		</div>
	 </table>
</@CommonQueryMacro.CommonQuery>
 <script language="javascript">
 //�ύǰ�ļ��
function btDetail_onClickCheck(button){
	if(routeTemplateSet_dataset.getValue("id")==""){
		alert("No Records!");
		return false;
	}
	var routeid = routeTemplateSet_dataset.getValue("id");
	var isBand = routeTemplateSet_dataset.getValue("isBand");
	<#--modify by lizh 20091201 BMS-2276 begin-->
	if(isNaN(routeid)){
	  alert("���ȱ�����Ϣ!");
	  return false;
	 }
	 <#--modify by lizh 20091201 BMS-2276 end-->
	var paramMap = new Map();
  	paramMap.put("routeId",routeid);
  	unfireUserEvent("routeDetailSet_dataset_flushDataPost");
  	if(isBand == "0"){
  		loadPageWindows("userWin", "����·����ϸ", "/fpages/management/ftl/RouteDetailSet.ftl", paramMap, "winZone");
  	}else{
  		loadPageWindows("userWin", "����·����ϸ", "/fpages/management/ftl/RouteDetailSetQuery.ftl", paramMap, "winZone");
  	}

		return false;
}
<#-- modify by shen_antonio jria: BMS-2334 begin -->
function btSave_postSubmit(button){
	routeTemplateSet_dataset.flushData(routeTemplateSet_dataset.pageIndex);
	alert("����ɹ�");
}
<#-- modify by shen_antonio jria: BMS-2334 end -->

<#-- add by henry 20110617 begin-->


function btDelete_onClickCheck(button){
	var _isBind = routeTemplateSet_dataset.getValue("isBand");
	if("1" == _isBind){
		alert('�Ѱ󶨣�����ɾ����');
		return false;
	}
}

function datatable1_opr_onRefresh(cell, value, record)
{
	if(record&&record!=null){
		var id = record.getValue("id");
		cell.innerHTML = "<center><a href=\"JavaScript:contractDel("+id+")\">ɾ��</a>"+ " "+"<a href=\"JavaScript:btnDetailShow("+id+");\">��ϸ</a></center>";
	}else{
		cell.innerHTML = "";
	}
}

function contractDel(Id){
		if(!isNaN(Id)){
			var record = routeTemplateSet_dataset.find(["id"],[Id]);
			routeTemplateSet_dataset.setRecord(record);
		}
		window.document.getElementById('btDelete').click();
}
function btDelete_needCheck(button){
	return false;
}


function btnDetailShow(Id){
		var record = routeTemplateSet_dataset.find(["id"],[Id]);
		if(record.getValue("id")==""){
			alert("No Records!");
			return false;
		}
		var routeid = record.getValue("id");
		var isBand = record.getValue("isBand");
		if(isNaN(routeid)){
		  alert("���ȱ�����Ϣ!");
		  return false;
		 }
		var paramMap = new Map();
	  	paramMap.put("routeId",routeid);
	  	unfireUserEvent("routeDetailSet_dataset_flushDataPost");
	  	if(isBand == "0"){
	  		loadPageWindows("userWin", "����·����ϸ", "/fpages/workflowRoute/ftl/RouteDetailSet.ftl", paramMap, "winZone");
	  	}else{
	  		loadPageWindows("userWin", "����·����ϸ", "/fpages/workflowRoute/ftl/RouteDetailSetQuery.ftl", paramMap, "winZone");
	  	}
}
<#--add by henry 20110617 end-->
</script>
</@CommonQueryMacro.page>
