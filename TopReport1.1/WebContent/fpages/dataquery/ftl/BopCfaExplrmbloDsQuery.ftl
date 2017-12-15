<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="��Ϣ��¼��ѯ">
	<@CommonQueryMacro.CommonQueryTab id="BopCfaExplrmbloDsQueryTabs" navigate="false" currentTab="BopCfaExplrmbloDsQuery">
		<@CommonQueryMacro.CommonQuery id="BopCfaExplrmbloDsQuery" init="false" submitMode="current" navigate="false" >
			<table align="left">
				<tr>
					<td colspan="2">
						<@CommonQueryMacro.Interface id="interface" label="�������ѯ����" />
					</td>
				</tr>
				<tr>
					<td>
						<@CommonQueryMacro.PagePilot id="ddresult" maxpagelink="9" showArrow="true" />
					</td>
	    		</tr>
	    		<tr>
	    			<td colspan="2">
						<@CommonQueryMacro.DataTable id ="BopCfaExplrmbloDsQueryTable" hasFrame="true"
							fieldStr="filler2,workDate[100],actiontype,recStatus[70],approveStatus[70],repStatus[70],explrmblono[130],creditorcode,debtorcode[80],debtorname,valuedate[100],maturity[100],credconcurr[150],credconamount[100]" readonly="true" hasFrame="true" width="900" height="260"/>
	      			</td>
	    		</tr>

			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>
	<script language="JavaScript">
		function initCallGetter_post() {
			//��ʼ��������Ĭ�ϵ�ǰ����
			<#assign v_date = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
			BopCfaExplrmbloDsQuery_interface_dataset.setValue("workDateStart","${v_date}");
			BopCfaExplrmbloDsQuery_interface_dataset.setValue("workDateEnd","${v_date}");
		}
		//��ϵͳˢ�µ�Ԫ�������ʱ������
		function BopCfaExplrmbloDsQueryTable_filler2_onRefresh(cell,value,record) {
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				var filler2 = record.getValue("filler2");
				cell.innerHTML = "<center><a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">"+filler2+"</a></center>";
			} else {
				//�������ڼ�¼ʱ
			 	cell.innerHTML="&nbsp;";
			}
		}

		//��ѯ
		function doDetail(id){
			showWin("ǩԼ��Ϣ��ѯ","${contextPath}/fpages/datacollection/ftl/BopCfaExplrmbloDsAdd.ftl?op=detail&id="+id,"report1","flushPage()");
		}

		//ˢ������
		function flushPage(){
			BopCfaExplrmbloDsQuery_dataset.flushData();
		}

	</script>
</@CommonQueryMacro.page>