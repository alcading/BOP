<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�ʽ�������ͽṺ����Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="bopCfaStrdeDsQueryTabs" navigate="false" currentTab="bopCfaStrdeDsInoutMoQuery">
		<@CommonQueryMacro.CommonQuery id="bopCfaStrdeDsInoutMoQuery" init="false" submitMode="all" navigate="false" >
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
						<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="filler2[80],workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],apptype[80],currentfile[320],branchcode[120],buocmonth[100],currency[200],moexamusd,moamreusd,mopfexamusd,mosettamusd,remark[300]" hasFrame="true" width="900" height="260" readonly="true"/>
		      		</td>
		    	</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>

	<script language="JavaScript">
		var ds = bopCfaStrdeDsInoutMoQuery_dataset;

		function initCallGetter_post() {
			//��ʼ��������Ĭ�ϵ�ǰ����
			<#assign v_date = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
			bopCfaStrdeDsInoutMoQuery_interface_dataset.setValue("qworkDateStart","${v_date}");
			bopCfaStrdeDsInoutMoQuery_interface_dataset.setValue("qworkDateEnd","${v_date}");
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
			showWin("�ʽ�������ͽṺ����Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BopCfaStrdeDsEntryInoutMoInfo.ftl?id="+id+"&op="+"detail");
		}
	</script>
</@CommonQueryMacro.page>