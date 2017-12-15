<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�˻�������Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BopForSameInduDepositAuditTabs" navigate="false" currentTab="BopForSameInduDepositInfoAudit">
		<@CommonQueryMacro.CommonQuery id="BopForSameInduDepositInfoAudit" init="false" submitMode="selected" navigate="false" >
			<table align="left">
				<tr>
					<td>
						<@CommonQueryMacro.Interface id="interface" label="�������ѯ����" />
					</td>
				</tr>

				<tr>
					<td>
						<@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9" pageCache="false" showArrow="true"/>
					</td>
				</tr>

		    	<tr>
		    		<td>
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAudit" fieldStr="select[40],filler2[80],workDate[85],actiontype,recStatus[70],approveStatus,repStatus,exdebtcode[180],debtorcode[120],debtype[80],valuedate[100],contractcurr[80],floatrate[80],anninrate[80]" hasFrame="true" width="900" height="260" readonly="true"/>
		      		</td>
		    	</tr>


		    	<tr>
		    		<td>
		    			<@CommonQueryMacro.FloatWindow id="aditADSubWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
		      				<div align="center">
		      					<@CommonQueryMacro.Group id="group1" label="�����Ϣ" fieldStr="approveStatusChoose,approveResultChoose" colNm=2/>
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

		//��������
		function initCallGetter_post(){
			<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
			BopForSameInduDepositInfoAudit_interface_dataset.setValue("qworkDate","${v_txdate}");
			BopForSameInduDepositInfoAudit_interface_dataset.setValue("eworkDate","${v_txdate}");			
		}	

		//var changFileType;
		//��ϵͳˢ�µ�Ԫ�������ʱ������
		function datatable1_filler2_onRefresh(cell,value,record) {
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				var filler2 = record.getValue("filler2");
				cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + filler2 + "</a>";
			} else {//�������ڼ�¼ʱ
			 	cell.innerHTML="&nbsp;";
			}
		}
		function btAuditSave_onClickCheck(){
		   	var approveStatusChoose = BopForSameInduDepositInfoAudit_dataset.getValue("approveStatusChoose");
		   	var approveResultChoose = BopForSameInduDepositInfoAudit_dataset.getValue("approveResultChoose");
		   	if (!approveStatusChoose.length > 0) {
		   		alert("��ѡ����˽����");
		   		return false;
		   	}
		   	if (approveStatusChoose == "02" && approveResultChoose.length < 1) {
		   		alert("��˽����ͨ�������˵��������д��");
		   		return false;
		   	}
		   	BopForSameInduDepositInfoAudit_dataset.setParameter("approveStatusChoose",approveStatusChoose);
		   	BopForSameInduDepositInfoAudit_dataset.setParameter("approveResultChoose",approveResultChoose);
			subwindow_aditADSubWindow.hide();
		}
		function btAuditSave_postSubmit(button){
			alert("����ɹ�");
			BopForSameInduDepositInfoAudit_dataset.flushData(1);
		}
		function btAudit_onClick(){
			var hasSelected = false;
			var hasAudit = false;
			var record = BopForSameInduDepositInfoAudit_dataset.getFirstRecord();
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
		   		if(!confirm("��ѡ��¼��������˼�¼��ȷ�������������"))
				{
					return false;
				}
		   	}
			subwindow_aditADSubWindow.show();
		}
		function btBack_onClick(){
			subwindow_aditADSubWindow.hide();
		}
		function doDetail(id){
			//window.location.href = "${contextPath}/fpages/datacollection/ftl/BopAccDsRecordADInfo.ftl?id=" + id + "&op=detail";
			showWin("����ͬҵ���ǩԼ��Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BopForSameInduDepositInfoCol.ftl?id="+id+"&op=detail","report","flushPage()");
		}
		//ˢ������
		function flushPage(){
			BopForSameInduDepositInfoAudit_dataset.flushData(1);
		}
	</script>
</@CommonQueryMacro.page>