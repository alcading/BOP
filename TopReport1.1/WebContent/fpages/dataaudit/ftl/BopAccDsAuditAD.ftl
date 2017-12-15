<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�˻�������Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="bopAccDsAuditTabs" navigate="false" currentTab="BopAccDsAuditAD">
		<@CommonQueryMacro.CommonQuery id="bopAccDsAuditAD" init="false" submitMode="selected" navigate="false" >
			<table align="left">
				<tr>
					<td>
						<@CommonQueryMacro.Interface id="interface" label="�������ѯ����" />
					</td>
				</tr>

				<tr>
					<td valign="top">
						<@CommonQueryMacro.PagePilot id="ddresult" maxpagelink="9" showArrow="true" />
					</td>
			    </tr>

			    <tr>
			    	<td>
						<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="select[40],workDate[85],actiontype,recStatus[70],approveStatus,repStatus,accountno[200],currencyCode[100],accountstat,businessDate[85],amtype,enCode,enName,accountType[200],accountCata,fileNumber,limitType,accountLimit" hasFrame="true" width="900" height="260" readonly="true"/>
			      	</td>
			    </tr>

			    <tr>
			    	<td>
			    		<@CommonQueryMacro.Button id="btAudit"/>
			    	</td>
			    </tr>

			    <tr>
			    	<td>
			    		<@CommonQueryMacro.FloatWindow id="aditADSubWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
			      			<div align="center">
			      				<@CommonQueryMacro.Group id="group1" label="�����Ϣ"
									fieldStr="approveStatusChoose,approveResultChoose" colNm=2/>
			        			 </br>
			      				<center>
			      					<@CommonQueryMacro.Button id= "btAuditSave"/>&nbsp;&nbsp;
			      					<@CommonQueryMacro.Button id= "btBack"/>
			      				</center>
			      			</div>
			     		</@CommonQueryMacro.FloatWindow>
			    	</td>
			    </tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>
	<script language="JavaScript">
	
		function initCallGetter_post() {
			var currentDate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getTxdate()}";
			bopAccDsAuditAD_interface_dataset.setValue("qstartDate", currentDate);
			bopAccDsAuditAD_interface_dataset.setValue("qendDate", currentDate);
		}
	
		//��ϵͳˢ�µ�Ԫ�������ʱ������
		function datatable1_accountno_onRefresh(cell,value,record) {
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				var accountno = record.getValue("accountno");
				cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + accountno + "</a>";
			} else {//�������ڼ�¼ʱ
			 	cell.innerHTML="&nbsp;";
			}
		}
		
		function btAuditSave_onClickCheck() {
		
		   	var approveStatusChoose = bopAccDsAuditAD_dataset.getValue("approveStatusChoose");
		   	var approveResultChoose = bopAccDsAuditAD_dataset.getValue("approveResultChoose");
		   	if (!approveStatusChoose.length > 0) {
		   		alert("��ѡ����˽����");
		   		return false;
		   	}
		   	if (approveStatusChoose == "02" && approveResultChoose.length < 1) {
		   		alert("��˽����ͨ�������˵��������д��");
		   		return false;
		   	}
		   	bopAccDsAuditAD_dataset.setParameter("approveStatusChoose",approveStatusChoose);
		   	bopAccDsAuditAD_dataset.setParameter("approveResultChoose",approveResultChoose);
			subwindow_aditADSubWindow.hide();
		}
		
		function btAuditSave_postSubmit(button) {
			alert("����ɹ�");
			bopAccDsAuditAD_dataset.flushData(1);
		}
		
		function btAudit_onClick() {
			var hasSelected = false;
			var hasAudit = false;
			var record = bopAccDsAuditAD_dataset.getFirstRecord();
			while(record) {
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
		   		if(!confirm("��ѡ��¼��������˼�¼��ȷ�������������"))
				{
					return false;
				}
		   	}
			subwindow_aditADSubWindow.show();
		}
		
		function btBack_onClick() {
			subwindow_aditADSubWindow.hide();
		}
		
		function doDetail(id) {
			//window.location.href = "${contextPath}/fpages/datacollection/ftl/BopAccDsRecordADInfo.ftl?id=" + id + "&op=detail";
			showWin("�����˻���ϸ","${contextPath}/fpages/datacollection/ftl/BopAccDsRecordADInfo.ftl?id=" + id + "&op=detail");
		}
	</script>
</@CommonQueryMacro.page>