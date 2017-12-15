<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="�ϱ��ļ�����">
<script type='text/javascript' src='${contextPath}/dwr/interface/ReportFile.js'> </script>
<table width="80%" align="left">
	<tr>
		<td width="100%">
			��ҳ &gt; �����ϱ��ļ� &gt; �ϱ��ļ�����
		</td>
	</tr>
	<tr>
		<td width="100%">
			<hr />
		</td >
	</tr>
	<tr>
		<td width="100%">
			<@CommonQueryMacro.CommonQuery id="genReportFile" init="false" submitMode="all" navigate="false">
				<table width="100%">
				<tr><td>
					<@CommonQueryMacro.Interface id="interface" label="�������ѯ����" />
				</td></tr>
				<tr><td>
				<br>
				</td></tr>
				<tr><td>
				<@CommonQueryMacro.DataTable id="datatable1" fieldStr="brNo,brName,confirmStatus,confirmTm,confirmTlrNo,subfileStatus,subfileTm,subfileTlrNo" width="100%" height="300" hasFrame="true" paginationbar="btConfrim,-,btCancell,-,btGenFile"/>
				</td></tr>
				<tr><td>
					<@CommonQueryMacro.FloatWindow id="aditADSubWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
		      			<div align="center">
		      				<@CommonQueryMacro.Group id="group1" label="ȡ������ԭ��"
		        			  fieldStr="subfileRemark" colNm=2/>
		        			 </br>
		      				<center><@CommonQueryMacro.Button id= "btCancellConfrim"/>
		      			</div>
		     		</@CommonQueryMacro.FloatWindow>
				</td></tr>
				</table>
			</@CommonQueryMacro.CommonQuery>
		</td>
	</tr>
</table>
<script language="JavaScript">
    var createFileBop = "${statics["com.huateng.report.genupreportfile.utils.ReportSubUtils"].IS_CREATE_FILE_BOP}";

	function initCallGetter_post(){
		genReportFile_interface_dataset.setValue("workDate", _today_date);
		genReportFile_interface_dataset.setValue("busiType","01");
		genReportFile_interface_dataset.setValue("busiTypeName","01-��깤��");
		btConfrim.disable(true);
		btCancell.disable(true);
		btGenFile.disable(true);
	}

	//�ļ���������
	if(createFileBop == "1"){
		sendToFile();
	}

	function genReportFile_dataset_afterScroll(){
		var flag = false;
		var conFlag = false;
		var record = genReportFile_dataset.getFirstRecord();
		while(record){
			btGenFile.disable(false);
			var v_confirmStatus = record.getValue("confirmStatus");
			var v_subfileStatus = record.getValue("subfileStatus");
			if(v_confirmStatus != "01"){
				conFlag = true;
			}
			//�ж��Ƿ����ݴ������
			if(v_subfileStatus != "01"){
				flag = true;
			}
			record=record.getNextRecord();
	   	}
	   	if(flag && conFlag){
	   		btConfrim.disable(true);
	   		btCancell.disable(true);
	   	} else if(flag && !conFlag){
	   		btConfrim.disable(false);
	   		btCancell.disable(true);
	   	} else if (!flag && !conFlag) {
	   		btConfrim.disable(true);
	   		btCancell.disable(false);
	   	}
	}

	//����У��
	function btGenFile_onClickCheck(){
		//�ϱ��ļ�����У���Ƿ���Ҫ�ϱ����ɵ�����
		var busiType = genReportFile_dataset.getValue("busiType");
		var appType = genReportFile_dataset.getValue("appType");
		ReportFile.getSubFileInfoCount(busiType, appType, fileCallback);
	   	return true;
	}

	function fileCallback(data){
		var workDate = genReportFile_interface_dataset.getValue("workDate");
		var busiType = genReportFile_dataset.getValue("busiType");
		var appType = genReportFile_dataset.getValue("appType");
		if(data>0){
			var subFlag = false;
			var record = genReportFile_dataset.getFirstRecord();
			while(record){
				var v_subfileStatus = record.getValue("subfileStatus");
				if(v_subfileStatus != "01"){
					subFlag = true;
					break;
				}
				record=record.getNextRecord();
		   	}
		   	if(!subFlag){
		   		if (confirm('��������ϱ�״̬��ȫ���������Ƿ������ϱ��ļ���')){
		   			showWin("�ϱ��ļ�����ȷ��","${contextPath}/fpages/genupreportfile/ftl/BopToSubFileConfirm.ftl?busiType=" + busiType + "&appType=" + appType,"window","sendToFile()",window);
		   		} else {
		   			return false;
		   		}
		   	} else {
		   		showWin("�ϱ��ļ�����ȷ��","${contextPath}/fpages/genupreportfile/ftl/BopToSubFileConfirm.ftl?busiType=" + busiType + "&appType=" + appType,"window","sendToFile()",window);
		   	}
		}else{
			alert(appType+"û����Ҫ�ϱ������ݣ�");
		}
	}

	function sendToFile(){
		var busiType = genReportFile_dataset.getValue("busiType");
		var appType = genReportFile_dataset.getValue("appType");
		//��ʼ���������ļ�����
		window.setTimeout("window.location.href = '${contextPath}/fpages/genupreportfile/jsp/createSubFileInfo.jsp?busiType="+busiType+"&appType="+appType+"'",0);
	}

	function btCancell_onClickCheck(){
		genReportFile_dataset.setValue("subfileRemark","");
		subwindow_aditADSubWindow.show();
	}

	function btConfrim_onClickCheck(){
		genReportFile_dataset.setValue("busiType",genReportFile_dataset.getValue("busiType"));
		genReportFile_dataset.setValue("appType",genReportFile_dataset.getValue("appType"));
	}

	function btConfrim_postSubmit(){
		genReportFile_dataset.flushData();
	}

	function btCancellConfrim_onClickCheck(){
		genReportFile_dataset.setParameter("subfileRemark", genReportFile_dataset.getValue("subfileRemark"));
		genReportFile_dataset.setValue("busiType",genReportFile_dataset.getValue("busiType"));
		genReportFile_dataset.setValue("appType",genReportFile_dataset.getValue("appType"));
		return true;
	}

	function btCancellConfrim_postSubmit(){
		subwindow_aditADSubWindow.hide();
		genReportFile_dataset.flushData();
	}

</script>
</@CommonQueryMacro.page>