<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="���ڻ���걨��������Ϣ���">
	<@CommonQueryMacro.CommonQueryTab id="BopEQDsAuditTabs" navigate="false" currentTab="BopEDsAudit">
		<@CommonQueryMacro.CommonQuery id="BopEDsAudit" init="false" submitMode="selected" navigate="false" >
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
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAudit" fieldStr="select[40],filler2[80],buscode[100],workDate[100],recStatus[80],approveStatus[80],repStatus[80],actiontype[80],actiondesc[100],rptno[80],custype[80],idcode[100],custcod[80],custnm[80],oppuser[80],oppacc[80],txccy[80],txamt[80],exrate[80],lcyamt[80],lcyacc[80],fcyamt[80],fcyacc[80],othamt[80],method[80]" hasFrame="true" width="900" height="260" readonly="true"/>
		      		</td>
		    	</tr>

		    	<tr>
		    		<td>
		    			<@CommonQueryMacro.FloatWindow id="aditADSubWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
		      				<div align="center">
		      					<@CommonQueryMacro.Group id="group1" label="�����Ϣ"  fieldStr="approveStatusChoose,approveResultChoose" colNm=2/>
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
		function initCallGetter_post() {
			<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
			BopEDsAudit_interface_dataset.setValue("qworkDateStart","${v_txdate}");
			BopEDsAudit_interface_dataset.setValue("qworkDateEnd","${v_txdate}");
		}
		
		function locate(id) {
		
		var record = BopEDsAudit_dataset.find(["id"],[id]);
		if (record) {
			BopEDsAudit_dataset.setRecord(record);
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
		//ˢ������
		function flushPage(){
			BopEDsAudit_dataset.flushData(BopEDsAudit_dataset.pageIndex);
		}
		function btAuditSave_onClickCheck(){
		   	var approveStatusChoose = BopEDsAudit_dataset.getValue("approveStatusChoose");
		   	var approveResultChoose = BopEDsAudit_dataset.getValue("approveResultChoose");
		   	if (!approveStatusChoose.length > 0) {
		   		alert("��ѡ����˽����");
		   		return false;
		   	}
		   	if (approveStatusChoose == "02" && approveResultChoose.length < 1) {
		   		alert("��˽����ͨ�������˵��������д��");
		   		return false;
		   	}
		   	BopEDsAudit_dataset.setParameter("approveStatusChoose",approveStatusChoose);
		   	BopEDsAudit_dataset.setParameter("approveResultChoose",approveResultChoose);
			subwindow_aditADSubWindow.hide();
		}
		function btAuditSave_postSubmit(button){
			alert("����ɹ�");
			BopEDsAudit_dataset.flushData(1);
		}
		function btAudit_onClick(){
			var hasSelected = false;
			var hasAudit = false;
			var record = BopEDsAudit_dataset.getFirstRecord();
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
		//��ϸ��Ϣ
		function doDetail(id){
			locate(id);
			showWin("���ڻ�������Ϣ��ϸ","${contextPath}/fpages/bop/collandaudit/eq/ftl/BopEDsCollectionInfo.ftl?id=" + id + "&op=det","window","flushPage()",window);
		}
	</script>
</@CommonQueryMacro.page>