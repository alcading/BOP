<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="������Ϣ">
<@CommonQueryMacro.CommonQueryTab id="JshDfDsQueryTabs" navigate="false" currentTab="JshDfDsManageQuery">
<table width=""><tr><td>
	<@CommonQueryMacro.CommonQuery id="JshDfDsManageQuery" init="false" submitMode="all" navigate="false" >
		<table align="left">
			<tr>
				<td colspan="2">
					<@CommonQueryMacro.Interface id="interface" label="�������ѯ����" />
				</td>
			</tr>
			<tr>
				<td valign="top">
					<@CommonQueryMacro.PagePilot id="ddresult" maxpagelink="9" showArrow="true" />
				</td>
		    </tr>
		    <tr>
		    	<td colspan="2">
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="filler2[80],buscode[80],brNo[80],brNoName[80],workDate[80],recStatus[80],approveStatus[80],repStatus[80],actiontype[80],actiondesc[80],rptno[80],txcode[80],usetype[80],usedetail[150],crtuser[80],inptelc[100],rptdate[80]" hasFrame="true" width="900" height="260" readonly="true"/>
		      	</td>
		    </tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</table></tr></td>
</@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">
	function initCallGetter_post() {
		//��������
		<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
		JshDfDsManageQuery_interface_dataset.setValue("qworkDateStart","${v_txdate}");
		JshDfDsManageQuery_interface_dataset.setValue("qworkDateEnd","${v_txdate}");
	}
	
	function datatable1_filler2_onRefresh(cell,value,record) {
		if(record && record != null) {
			var id = record.getValue("id");
			cell.innerHTML = "<center><a href=\"JavaScript:doDetail('"+id+"')\">"+value+"</a></center>";
		} else {
			cell.innerHTML = "&nbsp;";
		}
	}
	//��ϸ
	function doDetail(id) {
		showWin("������Ϣ��ϸ","${contextPath}/fpages/jsh/collandaudit/df/ftl/JshDfDsManageCollInfo.ftl?id="+id+"&op="+"detail","window","",window);
	}
</script>
</@CommonQueryMacro.page>