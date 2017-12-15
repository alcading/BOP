<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="��Լ��ϸ��Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BopCFAExguQryTabs" navigate="false" currentTab="BOPCFAExguQry">
		<@CommonQueryMacro.CommonQuery id="BOPCFAExguQry" init="false" submitMode="selected" navigate="false" >
			<table align="left">
				<tr>
					<td colspan="2">
						<@CommonQueryMacro.Interface id="interface" label="�������ѯ����" />
					</td>
				</tr>

				<tr>
					<td valign="top">
						<@CommonQueryMacro.PagePilot id="pagequery" maxpagelink="9" showArrow="true" />
					</td>
		    	</tr>

		    	<tr>
		    		<td colspan="2">
						<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="filler2[80],brNo[80],brNoName[80],workDate[80],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exguarancode[80],guarantorcode[80],guarantype[80],appdocuno[80],contractdate[80],maturity[80],guarancurr[80],maindebtcurr[80],guaranamount[80],maindebtamount[80],guappcode[80],guappname[80],guappnamen[80],remark[80],actiondesc[80]" hasFrame="true" width="900" height="260" readonly="true"/>
		      		</td>
		    	</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>

	<script language="JavaScript">

	//��������
	function initCallGetter_post() {
		<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
		BOPCFAExguQry_interface_dataset.setValue("qWorkDateStart","${v_txdate}");
		BOPCFAExguQry_interface_dataset.setValue("qWorkDateEnd","${v_txdate}");
	}

	function datatable1_filler2_onRefresh(cell,value,record) {
		if (record) {//�����ڼ�¼ʱ
			var id = record.getValue("id");
			var filler2 = record.getValue("filler2");
			cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + filler2 + "</a>"
		} else {
			cell.innerHTML="&nbsp;";
		}
	}

	//��ϸ��Ϣ
	function doDetail(id){

		showWin("ǩԼ��Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BopForCFAExguDsAdd.ftl?id=" + id + "&op=detail");
	}
	</script>
</@CommonQueryMacro.page>