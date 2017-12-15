<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BOPForDebtOtherDebtsAuditTabs" navigate="false" currentTab="BOPForDebtOtherDebtsAudit">
		<@CommonQueryMacro.CommonQuery id="BOPForDebtOtherDebtsAudit" init="false" submitMode="selected" navigate="false" >
			<table align="left">
				<tr>
					<td colspan="2">
						<@CommonQueryMacro.Interface id="interface" label="�������ѯ����" />
					</td>
				</tr>

				<tr>
					<td>
	  			    	<@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9" pageCache="false" showArrow="true"/>
					</td>
				</tr>

				<tr>
					<td colspan="2">
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btApproved" fieldStr="select[40],filler2,workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exdebtcode[180],debtorcode[120],debtype[80],valuedate[100],contractcurr[150],contractamount[100],maturity[100],anninrate[100],inprterm,spapfeboindex" readonly="true" hasFrame="true" width="900" height="260"/>
					</td>
				</tr>

				<tr>
					<td width="500">
						<@CommonQueryMacro.FloatWindow id="aditADSubWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
							<div align="center">
								<@CommonQueryMacro.Group id="group1" label="�����Ϣ"  fieldStr="approveStatusChoose,approveResultChoose" colNm=2/>
								</br>
								<center>
									<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;
				      				<@CommonQueryMacro.Button id= "btClose"/>
				      			</center>
				      		</div>
				     	</@CommonQueryMacro.FloatWindow>
				    </td>
				</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>
	<script language="JavaScript">

		//��������
		function initCallGetter_post(){
			<#assign workdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
			BOPForDebtOtherDebtsAudit_interface_dataset.setValue("startdate","${workdate}");
			BOPForDebtOtherDebtsAudit_interface_dataset.setValue("enddate","${workdate}");		
		}
		//��ϵͳˢ�µ�Ԫ�������ʱ������
		function datatable1_opr_onRefresh(cell,value,record) {
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				var recStatus = record.getValue("recStatus");
				var innerStr = "<center>";
				if (recStatus == "01" || recStatus == "02") {
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

		function locate(id) {

			var record = BOPForDebtOtherDebtsAudit_dataset.find(["id"],[id]);
			if (record) {
				BOPForDebtOtherDebtsAudit_dataset.setRecord(record);
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

		//��ϸ
		function doDetail(id) {
			locate(id);
			showWin("������ծǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtOtherDebtsCol.ftl?id="+id+"&op=detaile","report","flushCurrentPage()");
		}

		function btSave_postSubmit(buttno) {
			subwindow_aditADSubWindow.close();
			flushCurrentPage();
			alert("����ɹ�");
		}

		function btApproved_onClickCheck(button) {
			var hasSelected = false;
			var hasAudit = false;
			var record = BOPForDebtOtherDebtsAudit_dataset.getFirstRecord();
			while(record){
				var v_selected = record.getValue("select");
				var v_approveStatus = record.getValue("approveStatus");
				if( v_selected == true ){
					hasSelected=true;
					if (v_approveStatus != "00") {
						hasAudit = true;
					}
				}
				record=record.getNextRecord();
	   		}
	   		if (!hasSelected) {
	   			alert("��ѡ����Ӧ�ļ�¼��");
	   			return false;
	  	 	}
	  	 	if (hasAudit) {
	   			if(!confirm("��ѡ��¼��������˼�¼��ȷ�������������")) {
					return false;
				}
	   		}
		}

		function btSave_onClickCheck(button) {

			var status = BOPForDebtOtherDebtsAudit_dataset.getValue("approveStatusChoose");
			var result = BOPForDebtOtherDebtsAudit_dataset.getValue("approveResultChoose");
			if (!status.length > 0) {
	   			alert("��ѡ����˽����");
	   			return false;
	   		}
	   		if (status == "02" && result.length < 1) {
	   			alert("��˽����ͨ�������˵��������д��");
	   			return false;
			}
			BOPForDebtOtherDebtsAudit_dataset.setParameter("approveStatusChoose",status);
			BOPForDebtOtherDebtsAudit_dataset.setParameter("approveResultChoose",result);
			return true;
		}

		//ˢ�µ�ǰҳ
		function flushCurrentPage() {
			BOPForDebtOtherDebtsAudit_dataset.flushData(1);
		}

		function btApproved_onClick() {
			subwindow_aditADSubWindow.show();
		}

		function btClose_onClick() {
			subwindow_aditADSubWindow.hide();
		}

	</script>
</@CommonQueryMacro.page>