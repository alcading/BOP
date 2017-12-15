<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="�䶯��Ϣ">
<@CommonQueryMacro.CommonQueryTab id="BopForDebtYinTuanTabs" navigate="false" currentTab="BopForDebtYinTuanChange">
	<@CommonQueryMacro.CommonQuery id="bopForDebtYinTuanChange" init="false" submitMode="current" navigate="false" >
		<table align="left">
			<tr>
				<td colspan="2">
					<@CommonQueryMacro.Interface id="interface"  label="�������ѯ����" />
				</td>
			</tr>
			<tr>
  				<td>
  			    	<@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9" pageCache="false" showArrow="true"/>
  			  	</td>
		 	</tr>
		 	<tr>
	      		<td colspan="2">
					<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="opr[80],filler2[80],workDate[85],actiontype[80],recStatus[80],approveStatus,repStatus,exdebtcode[180],buscode[120],changeno,changtype[80],chdate[85],chcurrency[120],chamount,fairvalue" readonly="true" hasFrame="true" width="900" height="260"/>
		      	</td>
	      	</tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">
	
	function initCallGetter_post(){
		var currentDate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getTxdate()}";
		bopForDebtYinTuanChange_interface_dataset.setValue("qworkDateStart", currentDate);
		bopForDebtYinTuanChange_interface_dataset.setValue("qworkDateEnd", currentDate);
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
	
	function datatable1_filler2_onRefresh(cell,value,record) {
		if (record) {//�����ڼ�¼ʱ
			var id = record.getValue("id");
			cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + value + "</a>"
		} else {
			cell.innerHTML="&nbsp;";
		}
	}
	
	function btAdd_onClick(button) {
			btNewClick();
		}
	//����
	function btNewClick(){		
		showWin("���Ŵ���䶯��Ϣ����","${contextPath}/fpages/datacollection/ftl/BopForDebtYinTuanChangeInfo.ftl?op=new","report","flushPage()");
	}
	
	//ˢ������
	function flushPage(){
		bopForDebtYinTuanChange_dataset.flushData(1);
	}
	
	//�޸�
	function doCollection(id){
		showWin("���Ŵ���䶯��Ϣ�޸�","${contextPath}/fpages/datacollection/ftl/BopForDebtYinTuanChangeInfo.ftl?id=" + id + "&op=modify","report","flushPage()");
	}
	
	//ɾ��
	function doDelete(id){
		showWin("���Ŵ���䶯��Ϣɾ��","${contextPath}/fpages/datacollection/ftl/BopForDebtYinTuanChangeInfo.ftl?id=" + id + "&op=delete","report","flushPage()");
	}
	
	//��ϸ��Ϣ
	function doDetail(id){
		showWin("���Ŵ���䶯��Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BopForDebtYinTuanChangeInfo.ftl?id=" + id + "&op=detail");
	}
</script>
</@CommonQueryMacro.page>