<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="���ⵣ����Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BopCFAExguTabs" navigate="false" currentTab="BOPForCFAExguDsInfo">
		<@CommonQueryMacro.CommonQuery id="BOPForCFAExguDsInfo" init="false" submitMode="all" navigate="false" >
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
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="opr[80],filler2[80],brNo[80],brNoName[80],workDate[80],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exguarancode[80],guarantorcode[80],guarantype[80],appdocuno[80],contractdate[80],maturity[80],guarancurr[80],maindebtcurr[80],guaranamount[80],maindebtamount[80],guappcode[80],guappname[80],guappnamen[80],remark[80],actiondesc[80]" hasFrame="true" width="900" height="260" readonly="true"/>
		      		</td>
		    	</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>

	<script language="JavaScript">
		//��������
		function initCallGetter_post() {
			<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
			BOPForCFAExguDsInfo_interface_dataset.setValue("qstartDate","${v_txdate}");
			BOPForCFAExguDsInfo_interface_dataset.setValue("qendDate","${v_txdate}");
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
		//ˢ������
		function flushPage(){
			BOPForCFAExguDsInfo_dataset.flushData(1);
		}
		function locate(id) {
			var record = BOPForCFAExguDsInfo_dataset.find(["id"],[id]);
			if (record) {
				BOPForCFAExguDsInfo_dataset.setRecord(record);
			}
		}
		
		function btAdd_onClick(button) {
			btNewClick();
		}
		function btNewClick(){
			showWin("���ⵣ��ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BopForCFAExguDsAdd.ftl?op=new","report","flushPage()");
		}
		//�޸�
		function doCollection(id){
			showWin("���ⵣ��ǩԼ��Ϣ�޸�","${contextPath}/fpages/datacollection/ftl/BopForCFAExguDsAdd.ftl?id=" + id + "&op=mod","report","flushPage()");
		}
		//ɾ��
		function doDelete(id){
			showWin("���ⵣ��ǩԼ��Ϣɾ��","${contextPath}/fpages/datacollection/ftl/BopForCFAExguDsAdd.ftl?id=" + id + "&op=del","report","flushPage()");
		}
		//��ϸ��Ϣ
		function doDetail(id){
			showWin("���ⵣ��ǩԼ��Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BopForCFAExguDsAdd.ftl?id=" + id + "&op=detail");
		}
	</script>
</@CommonQueryMacro.page>