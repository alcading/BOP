<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BopForDebtYinTuanTabs" navigate="false" currentTab="BopForDebtYinTuanSigned">
		<@CommonQueryMacro.CommonQuery id="bopForDebtYinTuanSigned" init="false" submitMode="current" navigate="false" >
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
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" hasFrame="true" fieldStr="opr[80],filler2[80],workDate[85],actiontype,recStatus[70],approveStatus,repStatus,exdebtcode,debtorcode,debtype,valuedate[85],contractcurr[100],contractamount,maturity[85],floatrate,anninrate,inprterm,spapfeboindex" readonly="true" hasFrame="true" width="900" height="260"/>
					</td>
				</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>
	
	<script language="JavaScript">

		function initCallGetter_post(){
			var currentDate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getTxdate()}";
			bopForDebtYinTuanSigned_interface_dataset.setValue("qworkDateStart", currentDate);
			bopForDebtYinTuanSigned_interface_dataset.setValue("qworkDateEnd", currentDate);
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
			showWin("���Ŵ���ǩԼ����","${contextPath}/fpages/datacollection/ftl/BopForDebtYinTuanSignedAdd.ftl?op=new","report","flushPage()");
		}

		//ˢ������
		function flushPage(){
			bopForDebtYinTuanSigned_dataset.flushData(1);
		}

		//�޸�
		function doCollection(id){
			showWin("���Ŵ���ǩԼ��Ϣ�޸�","${contextPath}/fpages/datacollection/ftl/BopForDebtYinTuanSignedInfo.ftl?id=" + id + "&op=modify","report","flushPage()");
		}

		//ɾ��
		function doDelete(id){
			showWin("���Ŵ���ǩԼ��Ϣɾ��","${contextPath}/fpages/datacollection/ftl/BopForDebtYinTuanSignedInfo.ftl?id=" + id + "&op=delete","report","flushPage()");
		}

		//��ϸ��Ϣ
		function doDetail(id){
			showWin("���Ŵ���ǩԼ��Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BopForDebtYinTuanSignedInfo.ftl?id=" + id + "&op=detail");
		}
	</script>
</@CommonQueryMacro.page>