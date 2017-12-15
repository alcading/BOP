<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>

<@CommonQueryMacro.page title="����·�߰�">
<table align="left">

<tr>
<td valign="top" rowspan="1"  valign="top">
<@CommonQueryMacro.CommonQuery id="routeBindingDetail1_Config" init="true" navigate="false" submitMode="all">
	<table align="left">
			<tr>
       		<td valign="top"  valign="top">
      <@CommonQueryMacro.Group id ="group2" label="��ϸ��Ϣ" fieldStr="bizTypeName,startBrhid,brhClass,maxAmt,isBand" colNm=2/>
       		</td>
      		</tr>

   </table>
</@CommonQueryMacro.CommonQuery>

</td>
<td valign="top" rowspan="1"  valign="top">
<br/>
<br/>
<br/>
<@CommonQueryMacro.CommonQuery id="routeBindingDetail2_Config" init="true" navigate="false" >
	<table align="left">
		<table>
			<tr>
       			<td rowspan="1"  valign="top" >
       			<#-- modify by shen_antonio 20091214 jira: BMS-2334 begin -->
        		<@CommonQueryMacro.DataTable id ="datatable2" fieldStr="select,routeId,routeName" width="300" />
        		<#-- modify by shen_antonio 20091214 jira: BMS-2334 end -->
        		</td>
      		</tr>
      	</table>
      	<table>
      		<tr align="center">
       			<td align="center">
         			<@CommonQueryMacro.Button id= "btSave2"/>
         			&nbsp;&nbsp;&nbsp;&nbsp;
        		</td>
        		<td >
  					<@CommonQueryMacro.Button id= "btBack2"/>
  					&nbsp;&nbsp;&nbsp;&nbsp;
      			</td>
      			<td >
  					<@CommonQueryMacro.Button id= "btAdd"/>
  					&nbsp;&nbsp;&nbsp;&nbsp;
      			</td>
      	  	</tr>
      	 </table>
   </table>
</@CommonQueryMacro.CommonQuery>
</td>
</tr>
</table>

<script language="javaScript">

function btAdd_onClickCheck(button){
	path = _application_root + "/fpages/workflowRoute/ftl/RouteTemplateSet.ftl";
    window.open(path,"_blank","resizable=1,location=0,scrollbars=1, width=1024,height=768 ");
    return false;
}

function btBack2_onClickCheck(button){
	//alert("�����ɹ���");
	unloadPageWindows("userWin");
	return false;
}

<#-- modify by shen_antonio 20091214 jira: BMS-2334 begin -->
function routeBindingDetail2_Config_dataset_afterChange(dataset, field)
{
	routeBindingDetail2_Config_dataset.disableEvents();
	var record = routeBindingDetail2_Config_dataset.firstUnit;
	var temp = routeBindingDetail2_Config_dataset.getValue("select");
	if(temp==true)
	{

		while(record)
		{
			record.setValue("select",false);
			record=record.nextUnit;
		}
		routeBindingDetail2_Config_dataset.setValue("select",temp);
	}

	routeBindingDetail2_Config_dataset.enableEvents();
}
<#-- modify by shen_antonio 20091214 jira: BMS-2334 end -->
function btSave2_onClickCheck(button){
	var id = routeBindingDetail2_Config_dataset.getParameter("id");
	var record = routeBindingDetail2_Config_dataset.firstUnit;
	if(record){
		var routeId = record.getValue("routeId");
		if(routeId == null ||routeId ==""){
		alert("�޼�¼���ܱ���");
		return false;
		}
	}else{
		alert("�޼�¼���ܱ���");
		return false;
	}

//	var  _nextUrl = "/fpages/workflowRoute/ftl/RouteBindingEntry.ftl?id="+ id;
//	var  _nextUrl = "/fpages/workflowRoute/ftl/RouteBindingEntry.ftl";
//	button.url = _nextUrl;
	return true;
}

function btSave2_postSubmit(button){
	alert("�󶨳ɹ�!");
}

function datatable2_routeid_onRefresh(cell, value, record)
{
	if(value =="")
    {	cell.innerHTML = "";
    	return false;
    }
	var routeId = record.getValue("routeId");
	cell.innerHTML = "<a href=\"Javascript:openRouteDetail('" + routeId + "')\">" + value + "</a>";
}
function openRouteDetail(value){
	path = _application_root + "/fpages/workflowRoute/ftl/RouteDetailSetQuery.ftl?routeId=" + value  ;
    window.open(path,"_blank","resizable=1,location=0,scrollbars=1, width=1024,height=768 ");
}
</script>
</@CommonQueryMacro.page>
