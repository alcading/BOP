<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�˻���֧����Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="bopAccDsRecordTabs" navigate="false" currentTab="BopAccDsRecordInOut">
		<@CommonQueryMacro.CommonQuery id="bopAccDsRecordInOut" init="false" submitMode="all" navigate="false" >
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
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="opr[80],workDate[85],actiontype,recStatus[70],approveStatus,repStatus,accountno[200],currencyCode[100],dealDate[85],credit,debit,balance" hasFrame="true" width="900" height="260" readonly="true"/>
			      	</td>
			    </tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>
	<script language="JavaScript">
	
		function initCallGetter_post(){
			var currentDate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getTxdate()}";
			bopAccDsRecordInOut_interface_dataset.setValue("qstartDate", currentDate);
			bopAccDsRecordInOut_interface_dataset.setValue("qendDate", currentDate);
		}
	
		//��ϵͳˢ�µ�Ԫ�������ʱ������
		function datatable1_opr_onRefresh(cell,value,record) {
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				var recStatus = record.getValue("recStatus");
				var innerStr = "<center>";
				if (recStatus == "01" || recStatus == "02") {
					innerStr = innerStr + "<a href=\"JavaScript:doCollection('"+id+"')\">�޸�</a>&nbsp;&nbsp;<a href=\"JavaScript:doDelete('"+id+"')\">ɾ��</a>"
				} else {
					innerStr = innerStr + "<a title='�ü�¼״̬�����޸�' style='color:#999999'>�޸�</a>&nbsp;&nbsp;<a title='�ü�¼״̬����ɾ��' style='color:#999999'>ɾ��</a>";
				}
				innerStr = innerStr + "</center>";
	
				cell.innerHTML =innerStr;
			} else {//�������ڼ�¼ʱ
			 	cell.innerHTML="&nbsp;";
			}
		}
	
		function datatable1_accountno_onRefresh(cell,value,record) {
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				var accountno = record.getValue("accountno");
				cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + accountno + "</a>"
			} else {
				cell.innerHTML="&nbsp;";
			}
		}
		
		function btAdd_onClick(button) {
			btNewClick();
		}
		//����
		function btNewClick(){
			showWin("�˻���֧������","${contextPath}/fpages/datacollection/ftl/BopAccDsRecordInOutAdd.ftl","report","flushPage()");
			//window.location.href = "${contextPath}/fpages/datacollection/ftl/BopAccDsRecordInOutAdd.ftl";
		}
	
		//ˢ������
		function flushPage(){
			bopAccDsRecordInOut_dataset.flushData(1);
		}
	
		//�޸�
		function doCollection(id){
			//window.location.href = "${contextPath}/fpages/datacollection/ftl/BopAccDsRecordInOutInfo.ftl?id=" + id + "&op=modify";
			showWin("�˻���֧���޸�","${contextPath}/fpages/datacollection/ftl/BopAccDsRecordInOutInfo.ftl?id=" + id + "&op=modify","report","flushPage()");
		}
	
		//ɾ��
		function doDelete(id){
			//window.location.href = "${contextPath}/fpages/datacollection/ftl/BopAccDsRecordInOutInfo.ftl?id=" + id + "&op=delete";
			showWin("�˻���֧��ɾ��","${contextPath}/fpages/datacollection/ftl/BopAccDsRecordInOutInfo.ftl?id=" + id + "&op=delete","report","flushPage()");
		}
	
		//��ϸ��Ϣ
		function doDetail(id){
			//window.location.href = "${contextPath}/fpages/datacollection/ftl/BopAccDsRecordInOutInfo.ftl?id=" + id + "&op=detail";
			showWin("�˻���֧����ϸ","${contextPath}/fpages/datacollection/ftl/BopAccDsRecordInOutInfo.ftl?id=" + id + "&op=detail","report","flushPage()");
		}
	</script>
</@CommonQueryMacro.page>