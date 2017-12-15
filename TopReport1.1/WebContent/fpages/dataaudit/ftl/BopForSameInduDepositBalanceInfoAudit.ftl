<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="ǩԼ��Ϣ���">

<@CommonQueryMacro.CommonQueryTab id="BopForSameInduDepositAuditTabs" navigate="false" currentTab="BopForSameInduDepositBalanceInfoAudit">
	<@CommonQueryMacro.CommonQuery id="BopForSameInduDepositBalanceInfoAudit" init="false" submitMode="selected" navigate="false" >
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
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="select[40],filler2[80],workDate[85],actiontype,recStatus[70],approveStatus,repStatus,exdebtcode[180],buscode[120],changeno,accoamount,chdate[80]" hasFrame="true" width="900" height="260" readonly="true"/>
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
		      				<center><@CommonQueryMacro.Button id= "btAuditSave"/>&nbsp;&nbsp;
		      				<@CommonQueryMacro.Button id= "btBack"/></center>
		      			</div>
		     		</@CommonQueryMacro.FloatWindow>
		    	</td>
		    </tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">

		
	//��������
	function  initCallGetter_post(){
		<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
		BopForSameInduDepositBalanceInfoAudit_interface_dataset.setValue("qworkDate","${v_txdate}");
		BopForSameInduDepositBalanceInfoAudit_interface_dataset.setValue("eworkDate","${v_txdate}");	
	}
	
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
	
	   	var approveStatusChoose = BopForSameInduDepositBalanceInfoAudit_dataset.getValue("approveStatusChoose");
	   	var approveResultChoose = BopForSameInduDepositBalanceInfoAudit_dataset.getValue("approveResultChoose");
	   	if (!approveStatusChoose.length > 0) {
	   		alert("��ѡ����˽����");
	   		return false;
	   	}
	   	if (approveStatusChoose == "02" && approveResultChoose.length < 1) {
	   		alert("��˽����ͨ�������˵��������д��");
	   		return false;
	   	}
	   	BopForSameInduDepositBalanceInfoAudit_dataset.setParameter("approveStatusChoose",approveStatusChoose);
	   	BopForSameInduDepositBalanceInfoAudit_dataset.setParameter("approveResultChoose",approveResultChoose);
		subwindow_aditADSubWindow.hide();
	}
	
	function btAuditSave_postSubmit(button){
		alert("����ɹ�");
		BopForSameInduDepositBalanceInfoAudit_dataset.flushData();
	}
	
	function btAudit_onClick(){
		var hasSelected = false;
		var hasAudit = false;
		var record = BopForSameInduDepositBalanceInfoAudit_dataset.getFirstRecord();
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
		showWin("����ͬҵ��������Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BopForSameInduDepositBalanceInfoCol.ftl?id="+id+"&op=detailBalance","report","flushPage()");
	}
	
	    //ˢ������
	function flushPage(){
		
		BopForSameInduDepositBalanceInfoAudit_dataset.flushData();
	}
</script>
</@CommonQueryMacro.page>