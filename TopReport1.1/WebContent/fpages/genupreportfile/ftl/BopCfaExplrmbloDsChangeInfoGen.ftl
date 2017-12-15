<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BopCfaExplrmbloDsGenTabs" navigate="false" currentTab="BopCfaExplrmbloDsChangeInfoGen">
		<@CommonQueryMacro.CommonQuery id="BopCfaExplrmbloDsChangeInfoGen" init="false" submitMode="current" navigate="false" >
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
						<@CommonQueryMacro.DataTable id ="datatable" hasFrame="true"
							fieldStr="filler2,workDate[100],actiontype,recStatus[70],approveStatus[70],repStatus[70],explrmblono[130],buocmonth[130],changeno,monbeloadbal[100],monenloadbal[100]" readonly="true" hasFrame="true" width="900" height="260"/>
	      			</td>
	    		</tr>

			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>

	<script language="JavaScript">

		//��ϵͳˢ�µ�Ԫ�������ʱ������
		function datatable_filler2_onRefresh(cell,value,record) {
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				//var filler2 = record.getValue("filler2");
				cell.innerHTML = "<center><a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + value + "</a></center>";
			} else {
				//�������ڼ�¼ʱ
			 	cell.innerHTML="&nbsp;";
			}
		}

		//��ѯ
		function doDetail(id) {
			showWin("�䶯��Ϣ��ѯ","${contextPath}/fpages/datacollection/ftl/BopCfaExplrmbloDsChangeInfoAdd.ftl?op=detail&id="+id,"report1","flushPage()");
		}

		//ˢ������
		function flushPage(){
			BopCfaExplrmbloDsChangeInfoGen_dataset.flushData();
		}

	</script>
</@CommonQueryMacro.page>