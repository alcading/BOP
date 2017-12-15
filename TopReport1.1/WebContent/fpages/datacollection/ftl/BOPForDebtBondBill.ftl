<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BOPForDebtBondBillTabs" navigate="false" currentTab="BOPForDebtBondBill">
		<@CommonQueryMacro.CommonQuery id="BOPForDebtBondBill" init="false" submitMode="current" navigate="false">
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
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="opr[100],filler2,workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exdebtcode[180],debtorcode[120],debtype[180],valuedate[100],contractcurr[150],contractamount[120],maturity[100],anninrate[100],spapfeboindex" readonly="true" hasFrame="true" width="900" height="260"/>
					</td>
				</tr>

			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>


	<script language="JavaScript">
		
		function initCallGetter_post() {
			//��������
			<#assign workdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
			BOPForDebtBondBill_interface_dataset.setValue("qWorkDateStart","${workdate}");
			BOPForDebtBondBill_interface_dataset.setValue("qWorkDateEnd","${workdate}");
		}
		
		//��ϵͳˢ�µ�Ԫ�������ʱ������
		function datatable1_opr_onRefresh(cell,value,record) {
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				var recStatus = record.getValue("recStatus");
				var innerStr = "<center>";
				var actiontype = record.getValue("actiontype");
				var repStatus = record.getValue("repStatus");
				if (("01" == recStatus || "02" == recStatus) && ("D" != actiontype || ("D" == actiontype && "01" != repStatus))) {
					innerStr = innerStr + "<a href=\"JavaScript:doModify('"+id+"')\">�޸�</a>&nbsp;&nbsp;<a href=\"JavaScript:doDelete('"+id+"')\">ɾ��</a>"
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
				var filler2 = record.getValue("filler2");
				cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + filler2 + "</a>"
			} else {
				cell.innerHTML="&nbsp;";
			}
		}
		
		function btAdd_onClick(button) {
			btNewClick();
		}
		//����
		function btNewClick(){
			showWin("ծȯ��Ʊ��ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtBondBillCol.ftl?op=new","report","flushPage()");
		}
		//��ϸ
		function doDetail(id) {
			showWin("ծȯ��Ʊ��ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtBondBillCol.ftl?op=detaile&id="+id,"report","flushPage()");
		}
		//�޸�
		function doModify(id) {
			showWin("ծȯ��Ʊ��ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtBondBillCol.ftl?op=mod&id="+id,"report","flushPage()");
		}
		//ɾ��
		function doDelete(id) {
			showWin("ծȯ��Ʊ��ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtBondBillCol.ftl?op=del&id="+id,"report","flushPage()");
		}
		//ˢ������
		function flushPage(){
			BOPForDebtBondBill_dataset.flushData(1);
		}
	</script>
</@CommonQueryMacro.page>