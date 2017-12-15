<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�䶯��Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BopCfaDofoexloDsAuditTabs" navigate="false" currentTab="BopCfaDofoexloDsChangeInfoAudit">
		<@CommonQueryMacro.CommonQuery id="BopCfaDofoexloDsChangeInfoAudit" init="false" submitMode="selected" navigate="false" >
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
						<@CommonQueryMacro.DataTable id ="BopCfaDofoexloDsChangeInfoAuditTable" hasFrame="true" paginationbar="btApproved"
							fieldStr="select[60],filler2,workDate[100],actiontype,recStatus[70],approveStatus[70],repStatus[70],dofoexlocode[130],buscode[130],changeno,loanopenbalan[100],changedate[100],withcurrence[150],withamount[100],settamount[100]" readonly="true" hasFrame="true" width="900" height="260"/>
	      			</td>
	    		</tr>

	    		<tr>
					<td>
						<@CommonQueryMacro.FloatWindow id="aditADSubWindow" label="�����Ϣ" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
							<div align="center">
								<@CommonQueryMacro.Group id="group1" label="�����Ϣ" fieldStr="approveStatusChoose,approveResultChoose" colNm=2/>
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

		function initCallGetter_post(){
			<#assign workdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()?default('')>
			BopCfaDofoexloDsChangeInfoAudit_interface_dataset.setValue("qstartDate", "${workdate}");
			BopCfaDofoexloDsChangeInfoAudit_interface_dataset.setValue("qendDate", "${workdate}");	
		}
		
		//��ϵͳˢ�µ�Ԫ�������ʱ������
		function BopCfaDofoexloDsChangeInfoAuditTable_filler2_onRefresh(cell,value,record) {
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				var recStatus = record.getValue("recStatus");
				cell.innerHTML = "<center><a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">"+value+"</a></center>";
			} else {
				//�������ڼ�¼ʱ
			 	cell.innerHTML="&nbsp;";
			}
		}

		//��ѯ
		function doDetail(id){
			showWin("�䶯��Ϣ��ѯ","${contextPath}/fpages/datacollection/ftl/BopCfaDofoexloDsChangeInfoAdd.ftl?op=detail&id="+id,"report","flushPage()");
		}

		//ˢ������
		function flushPage(){
			BopCfaDofoexloDsChangeInfoAudit_dataset.flushData(1);
		}

		function btSave_postSubmit(buttno) {
			subwindow_aditADSubWindow.close();
			flushCurrentPage();
			alert("����ɹ�");
		}

		function btApproved_onClickCheck(button) {

			var hasSelected = false;
			var hasAudit = false;
			var record = BopCfaDofoexloDsChangeInfoAudit_dataset.getFirstRecord();
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

			var status = BopCfaDofoexloDsChangeInfoAudit_dataset.getValue("approveStatusChoose");
			var result = BopCfaDofoexloDsChangeInfoAudit_dataset.getValue("approveResultChoose");
			if (!status.length > 0) {
	   			alert("��ѡ����˽����");
	   			return false;
	   		}
	   		if (status == "02" && result.length < 1) {
	   			alert("��˽����ͨ�������˵��������д��");
	   			return false;
			}

			BopCfaDofoexloDsChangeInfoAudit_dataset.setParameter("approveStatusChoose",status);
			BopCfaDofoexloDsChangeInfoAudit_dataset.setParameter("approveResultChoose",result);
			return true;
		}

		//ˢ�µ�ǰҳ
		function flushCurrentPage() {
			BopCfaDofoexloDsChangeInfoAudit_dataset.flushData(BopCfaDofoexloDsChangeInfoAudit_dataset.pageIndex);
		}

		function btApproved_onClick() {
			subwindow_aditADSubWindow.show();
		}

		function btClose_onClick() {
			subwindow_aditADSubWindow.hide();
		}
	</script>
</@CommonQueryMacro.page>