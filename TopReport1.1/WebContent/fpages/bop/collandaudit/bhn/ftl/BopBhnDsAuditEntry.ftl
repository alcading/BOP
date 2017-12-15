<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="������Ϣ">
<@CommonQueryMacro.CommonQueryTab id="BopBhnDsAuditTabs" navigate="false" currentTab="BopBhnDsAuditEntry">
<table width=""><tr><td>
	<@CommonQueryMacro.CommonQuery id="BopBhnDsAuditEntry" init="false" submitMode="selected" navigate="false" >
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
					<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAudit" fieldStr="select[40],filler2[80],buscode[100],workDate[100],recStatus[80],approveStatus[80],repStatus[80],actiontype[80],actiondesc[100],rptno[80],custype[80],idcode[150],custcod[80],custnm[100],oppuser[100],txccy[150],txamt[100],exrate[100],txamt[100],lcyacc[150],fcyamt[100],fcyacc[150],othamt[100],othacc[150],method[100]" hasFrame="true" width="900" height="260" readonly="true"/>
		      	</td>
		    </tr>

		    <tr>
		    	<td>
		    		<@CommonQueryMacro.FloatWindow id="contractAuditSubWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
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
</table></tr></td>
</@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">
	function initCallGetter_post() {
		//��������
		<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
		BopBhnDsAuditEntry_interface_dataset.setValue("qworkDateStart","${v_txdate}");
		BopBhnDsAuditEntry_interface_dataset.setValue("qworkDateEnd","${v_txdate}");
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
		showWin("������Ϣ��ϸ","${contextPath}/fpages/bop/collandaudit/bhn/ftl/BopBhnDsCollInfo.ftl?id="+id+"&op="+"detail","window","",window);
	}
	//ˢ��ҳ��
	function flushPage() {
		var ds = BopBhnDsAuditEntry_dataset;
		ds.flushData(1);
	}
	
	function btAudit_onClick() {
		var ds = BopBhnDsAuditEntry_dataset;
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
		subwindow_contractAuditSubWindow.show();
	}
	
	function btAuditSave_onClickCheck() {
		var ds = BopBhnDsAuditEntry_dataset;
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
		subwindow_contractAuditSubWindow.hide();
		return true;
	}
	//����
	function btBack_onClick() {
		subwindow_contractAuditSubWindow.hide();
	}

	function btAuditSave_postSubmit(button){
		alert("����ɹ�");
		flushPage();
	}
</script>
</@CommonQueryMacro.page>