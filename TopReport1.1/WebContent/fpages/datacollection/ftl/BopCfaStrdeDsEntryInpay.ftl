<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="��Ϣ������Ϣ����">
<@CommonQueryMacro.CommonQueryTab id="bopCfaStrdeDsEntryTabs" navigate="false" currentTab="bopCfaStrdeDsEntryInpay">
	<@CommonQueryMacro.CommonQuery id="bopCfaStrdeDsEntryInpay" init="false" submitMode="all" navigate="false" >
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
					<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="operation[100],filler2[80],workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],strdecode[250],branchcode[120],contract[280],inpaycode,inpaymonth[100],inpayrmbam,inpaycurr[150],inpaycurram,remark[300]" hasFrame="true" width="900" height="260" readonly="true"/>
		      	</td>
		    </tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
</td></tr></table>
<script language="JavaScript">
	function initCallGetter_post() {
		//��������
		<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
		bopCfaStrdeDsEntryInpay_interface_dataset.setValue("qworkDateStart","${v_txdate}");
		bopCfaStrdeDsEntryInpay_interface_dataset.setValue("qworkDateEnd","${v_txdate}");
	}
	//ˢ�²�������
	function datatable1_operation_onRefresh(cell,value,record) {
		if(record) {
			cell.innerHTML="<center><a href=\"JavaScript:doMod('"+value+"')\">�޸�</a>&nbsp;&nbsp;<a href=\"JavaScript:doDel('"+value+"')\">ɾ��</a></center>";
		} else {
			cell.innerHTML = "&nbsp;";
		}
	}
	function datatable1_filler2_onRefresh(cell,value,record) {
		if(record && record != null) {
			var id = record.getValue("id");
			cell.innerHTML = "<center><a href=\"JavaScript:doDetail('"+id+"')\">"+value+"</a></center>";
		} else {
			cell.innerHTML = "&nbsp;";
		}
	}
	function btAdd_onClick(button) {
			btNewClick();
	}
	//��ϸ
	function doDetail(id) {
		showWin("��Ϣ������Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BopCfaStrdeDsEntryInpayInfo.ftl?id="+id+"&op="+"detail");
	}	
	//����
	function btNewClick() {
		showWin("��Ϣ������Ϣ����","${contextPath}/fpages/datacollection/ftl/BopCfaStrdeDsEntryInpayAdd.ftl?op=add","report","flushPage()");
	}
	//�޸�
	function doMod(id) {
		showWin("��Ϣ������Ϣ�޸�","${contextPath}/fpages/datacollection/ftl/BopCfaStrdeDsEntryInpayInfo.ftl?op=mod&id="+id,"report","flushPage()");
	}
	//ɾ��
	function doDel(id) {
		showWin("��Ϣ������Ϣɾ��","${contextPath}/fpages/datacollection/ftl/BopCfaStrdeDsEntryInpayInfo.ftl?op=del&id="+id,"report","flushPage()");
	}
	//ˢ��ҳ��
	function flushPage() {
		bopCfaStrdeDsEntryInpay_dataset.flushData(1);
	}
</script>
</@CommonQueryMacro.page>