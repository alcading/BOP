<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="��Ϣ������Ϣ���">
<@CommonQueryMacro.CommonQueryTab id="bopCfaStrdeDsAuditTabs" navigate="false" currentTab="bopCfaStrdeDsInpayEntryAudit">
	<@CommonQueryMacro.CommonQuery id="bopCfaStrdeDsInpayEntryAudit" init="false" submitMode="selected" navigate="false" >
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
					<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAudit" fieldStr="select[80],filler2[80],workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],apptype[80],currentfile[250],strdecode[250],branchcode[120],contract[280],inpaycode,inpaymonth[100],inpayrmbam,inpaycurr[150],inpaycurram,remark[300]" hasFrame="true" width="900" height="260" readonly="true"/>
		      	</td>
		    </tr>
		    
		    <tr>
		    	<td>
		    		<@CommonQueryMacro.FloatWindow id="auditSubWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
		      			<div align="center">
		      				<@CommonQueryMacro.Group id="group1" label="�����Ϣ"
		        			  fieldStr="approveStatusChoose,approveResultChoose" colNm=2/>
		        			 </br>
		      				<center><@CommonQueryMacro.Button id="btAuditSave"/>&nbsp;&nbsp;
		      				<@CommonQueryMacro.Button id= "btBack"/></center>
		      			</div>
		     		</@CommonQueryMacro.FloatWindow>
		    	</td>
		    </tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
</td></tr></table>
<script language="JavaScript">
	var ds = bopCfaStrdeDsInpayEntryAudit_dataset;
	function initCallGetter_post() {
		//��������
		<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
		bopCfaStrdeDsInpayEntryAudit_interface_dataset.setValue("qworkDateStart","${v_txdate}");
		bopCfaStrdeDsInpayEntryAudit_interface_dataset.setValue("qworkDateEnd","${v_txdate}");
	}
	
	function datatable1_filler2_onRefresh(cell,value,record) {
		if(record && record != null) {
			var id = record.getValue("id");
			cell.innerHTML = "<center><a href=\"JavaScript:doDetail('"+id+"')\">"+value+"</a></center>";
		} else {
			cell.innerHTML = "&nbsp;";
		}
	}
	//��ϸ
	function doDetail(id) {
		showWin("��Ϣ������Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BopCfaStrdeDsEntryInpayInfo.ftl?id="+id+"&op="+"detail");
	}
	
	function btAudit_onClick() {
		var hasSelect = false;
		var hasAudit = false;
		var record = ds.getFirstRecord();
		while(record) {
			var v_select = record.getValue("select");
			var v_approveStatus = record.getValue("approveStatus");
			if(v_select == true) {
				hasSelect = true;
				if(v_approveStatus != "00") {
					hasAudit = true;
				}
			}
			record = record.getNextRecord();
		}
		if(!hasSelect) {
			alert("��ѡ����Ӧ�ļ�¼��");
			return false;
		}
		if(hasAudit) {
			if(!confirm("��ѡ��¼��������˼�¼��ȷ��Ҫ���������?")) {
				return false; 
			}
		}
		subwindow_auditSubWindow.show();
	}
	
	function btAuditSave_onClickCheck() {
		var approveStatusChoose = ds.getValue("approveStatusChoose");
		var approveResultChoose = ds.getValue("approveResultChoose");
		if(!approveStatusChoose.length > 0) {
			alert("��ѡ����˽����");
	   		return false;
		}
		if (approveStatusChoose == "02" && approveResultChoose.length < 1)
		   	{
		   		alert("��˽����ͨ�������˵��������д��");
		   		return false;
		   	}
		ds.setParameter("approveStatusChoose",approveStatusChoose);
		ds.setParameter("approveResultChoose",approveResultChoose);
		subwindow_auditSubWindow.hide();
		return true;
	}
	//����
	function btBack_onClick() {
		subwindow_auditSubWindow.hide();
	}
	
	function btAuditSave_postSubmit(button){
		alert("����ɹ�");
		ds.flushData(1);
	}
</script>
</@CommonQueryMacro.page>