<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="������Ϣ">
<@CommonQueryMacro.CommonQueryTab id="BopFSDsAuditTabs" navigate="false" currentTab="BopSDsAudit">
	<@CommonQueryMacro.CommonQuery id="BopSDsAudit" init="false" submitMode="selected" navigate="false" >
		<table align="left">
			<tr>
				<td>
					<@CommonQueryMacro.Interface id="interface"  label="�������ѯ����" />
				</td>
			</tr>
			<tr>
  			  	<td>
  			    	<@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9"   pageCache="false" showArrow="true"/>
  			  	</td>
  			</tr>
  			<tr>
		      	<td>
					<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAudit" fieldStr="select[40],filler2[80],buscode[100],workDate[100],recStatus[80],approveStatus[80],repStatus[80],actiontype[80],actiondesc[100],rptno[80],isref,country,paytype[120],payattr[120],txcode[200],tc1amt,txcode2[200],tc2amt,contrno[120],invoino[120],billno[120],contamt,regno,crtuser,inptelc,rptdate[85]" readonly="true" hasFrame="true" width="1000" height="260"/>
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

	function initCallGetter_post(){
		var currentDate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getTxdate()}";
		BopSDsAudit_interface_dataset.setValue("qworkDateStart", currentDate);
		BopSDsAudit_interface_dataset.setValue("qworkDateEnd", currentDate);
	}

	//��ϵͳˢ�µ�Ԫ�������ʱ������
	function datatable1_filler2_onRefresh(cell,value,record) {
		if (record) {//�����ڼ�¼ʱ
			var id = record.getValue("id");
			cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + value + "</a>";
		} else {//�������ڼ�¼ʱ
		 	cell.innerHTML="&nbsp;";
		}
	}
	
	function btAuditSave_onClickCheck(){
	
	   	var approveStatusChoose = BopSDsAudit_dataset.getValue("approveStatusChoose");
	   	var approveResultChoose = BopSDsAudit_dataset.getValue("approveResultChoose");
	   	if (!approveStatusChoose.length > 0) {
	   		alert("��ѡ����˽����");
	   		return false;
	   	}
	   	if (approveStatusChoose == "02" && approveResultChoose.length < 1) {
	   		alert("��˽����ͨ�������˵��������д��");
	   		return false;
	   	}
	   	BopSDsAudit_dataset.setParameter("approveStatusChoose",approveStatusChoose);
	   	BopSDsAudit_dataset.setParameter("approveResultChoose",approveResultChoose);
		subwindow_aditADSubWindow.hide();
	}
	
	function btAuditSave_postSubmit(button){
		alert("����ɹ�");
		BopSDsAudit_dataset.flushData(1);
	}
	
	function btAudit_onClick(){
		var hasSelected = false;
		var hasAudit = false;
		var record = BopSDsAudit_dataset.getFirstRecord();
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
		showWin("������Ϣ��ϸ","${contextPath}/fpages/bop/collandaudit/fs/ftl/BopSDsCollectionInfo.ftl?id=" + id + "&op=detail","window","",window);
	}
</script>
</@CommonQueryMacro.page>