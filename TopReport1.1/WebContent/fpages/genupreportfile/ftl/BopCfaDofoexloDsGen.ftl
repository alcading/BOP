<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BopCfaDofoexloDsGenTabs" navigate="false" currentTab="BopCfaDofoexloDsGen">
		<@CommonQueryMacro.CommonQuery id="BopCfaDofoexloDsGen" init="false" submitMode="current" navigate="false" >
			<table align="left">
				<tr>
					<td colspan="2">
						<@CommonQueryMacro.Interface id="interface" label="�������ѯ����" />
					</td>
				</tr>

				<tr>
					<td colspan="2" valign="top">
						<@CommonQueryMacro.PagePilot id="ddresult" maxpagelink="9" showArrow="true" />
					</td>
	    		</tr>

	    		<tr>
	    			<td colspan="2">
						<@CommonQueryMacro.DataTable id ="BopCfaDofoexloDsGenTable" hasFrame="true"
							fieldStr="filler2[180],brNo,brNoName,workDate[100],actiontype,repStatus[70],dofoexlocode[130],debtorcode[80],dofoexlotype,valuedate[100],maturity[100],currence[150],contractamount[100],anninrate[80]" readonly="true" hasFrame="true" width="900" height="260"/>
	      			</td>
	    		</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>
	<script language="JavaScript">

	//��ϵͳˢ�µ�Ԫ�������ʱ������
	function BopCfaDofoexloDsGenTable_filler2_onRefresh(cell,value,record) {
		if (record) {//�����ڼ�¼ʱ
			var id = record.getValue("id");
			var recStatus = record.getValue("recStatus");
			cell.innerHTML = "<center><a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">"+value+"</a></center>";
		} else {
			//�������ڼ�¼ʱ
		 	cell.innerHTML="&nbsp;";
		}
	}

	//��ѯ
	function doDetail(id){
		showWin("ǩԼ��Ϣ��ѯ","${contextPath}/fpages/datacollection/ftl/BopCfaDofoexloDsAdd.ftl?op=detail&id="+id,"report","flushPage()");
	}

	//ˢ������
	function flushPage(){
		BopCfaDofoexloDsGen_dataset.flushData();
	}

</script>
</@CommonQueryMacro.page>