<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>

<@CommonQueryMacro.page title="��ʱ������Ϣ">
<@CommonQueryMacro.CommonQuery id="bopTimedScheduler" init="true" submitMode="current">
<table width="90%">
  	<tr>
  		<td valign="top">
			<@CommonQueryMacro.PagePilot id="ddresult" maxpagelink="9" showArrow="true" />
		</td>
	 </tr>
	 <tr>
		 <td>
			<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="jobName,jobTime,jobStauts,justWorkdateRun,jobRemark,opr"  readonly="true" width="100%" hasFrame="true" />
		 </td>
	 </tr>
	 <tr>
	 	<td>
	 		<@CommonQueryMacro.FloatWindow id="signWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
      			<div align="center">
      				<@CommonQueryMacro.Group id="group1" label="��ʱ������Ϣ�޸�"
        			  fieldStr="jobName,jobTime,jobStauts,justWorkdateRun,jobRemark" colNm=4/>
        			<br/>
        			<@CommonQueryMacro.Button id="btSave" />

      			</div>
     		</@CommonQueryMacro.FloatWindow>
	 	</td>
	 </tr>
	 <tr align="center">
		<td>
			<div style="display:none">
				<@CommonQueryMacro.Button id= "btJobStatus" />
				<@CommonQueryMacro.Button id= "btModify"/>
			 </div>
		</td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>
<script language="javascript">
	//��λһ����¼
	function locate(id) {
		var record = bopTimedScheduler_dataset.find(["id"],[id]);
		if (record) {
			bopTimedScheduler_dataset.setRecord(record);
		}
	}

	function datatable1_opr_onRefresh(cell, value, record)
	{
		if(record&&record!=null){
			var id = record.getValue("id");
			var jobStauts = record.getValue("jobStauts");
			var innerStr = "<center><a href=\"JavaScript:doModifyShow('"+id+"')\">�޸�</a>&nbsp;&nbsp;";
			//��Ч
			if (jobStauts == "1") {
				innerStr = innerStr + "<a style=\"color:#666666\" title=\"�����������������ܲ���\">����</a>&nbsp;&nbsp;" +
		    		" <a href=\"JavaScript:doJobStatus('"+id+"','0')\">ֹͣ</a></center>";
		    } else {
		    	innerStr = innerStr + " <a href=\"JavaScript:doJobStatus('"+id+"','1')\">����</a>&nbsp;&nbsp;" +
		    		"<a style=\"color:#666666\" title=\"��������ֹͣ�����ܲ���\">ֹͣ</a></center>";
		    }
		    cell.innerHTML = innerStr;
		}else{
			cell.innerHTML = "";
		}
	}

	function doJobStatus(id, jobStatus){
		locate(id);
		bopTimedScheduler_dataset.setParameter("id", id);
		bopTimedScheduler_dataset.setParameter("jobStatus", jobStatus);
		btJobStatus.click();
	}

	function doModifyShow(id){
		locate(id);
		subwindow_signWindow.show();
	}

	function btSave_onClickCheck(){
		if (!bopTimedScheduler_dataset.modified) {
			alert("�����޸ĺ��ٱ��棡");
			return false;
		}
		return true;
	}

	function btSave_postSubmit(){
		alert("����ɹ���");
		subwindow_signWindow.hide();
		bopTimedScheduler_dataset.flushData(bopTimedScheduler_dataset.pageIndex);
	}

	function btJobStatus_postSubmit(){
		alert("����ɹ���");
		bopTimedScheduler_dataset.flushData(bopTimedScheduler_dataset.pageIndex);
	}

</script>
</@CommonQueryMacro.page>
