<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�ҵ�����" >
<@CommonQueryMacro.CommonQuery id="pageqryexp_mydownload" navigate="true" init="true" submitMode= "current" >
<table align="left" width="850px">
		<tr>
      		<td>
      			<@CommonQueryMacro.Interface id="interface" label="�������ѯ����" />
      		</td>
		</tr>
		<tr>
      		<td>
      			<@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9" showArrow="true" pageCache="false"/>
      		</td>
		</tr>
		<tr>
      		<td align="center">
      			<@CommonQueryMacro.DataTable id="datatable1" fieldStr="tskNm,fileNm,tskStartTms,tskEndTms,expRcdSumNum,expFileSize,tskStat[60],op[35]"  width="100%" hasFrame="true" height="300" readonly="true"/>
      		</td>
		</tr>
</table>
<iframe name="dfrm"  id="dfrm" height="0" width="0" src=""></iframe>
</@CommonQueryMacro.CommonQuery >
<script language="javascript">
//��λһ����¼
function locate(id) {
	var record = pageqryexp_mydownload_dataset.find(["id"],[id]);
	if (record) {
		pageqryexp_mydownload_dataset.setRecord(record); 
	}
}
//��ϵͳˢ�µ�Ԫ�������ʱ������ 
function datatable1_op_onRefresh(cell,value,record) {
	if (record) {//�����ڼ�¼ʱ
		if (record.getValue("tskStat")=="3") {
			cell.innerHTML="<a href='JavaScript:download(\""+value+"\")'>����</a> ";
		} else {
			cell.innerHTML="<a href='JavaScript:void(0)'>�޷�����</a> ";
		}
	} else {//�������ڼ�¼ʱ
		cell.innerHTML="&nbsp;";
	}
}
function download(id) {
	locate(id);
	var filename = pageqryexp_mydownload_dataset.getValue("fileNm");
	var filepath = pageqryexp_mydownload_dataset.getValue("expFileNm");
	//window.open("${contextPath}/pageqryexp/DownloadAction.do?downloadinfo="+encode(filename+"|"+filepath));
	document.getElementById('dfrm').src="${contextPath}/pageqryexp/DownloadAction.do?downloadinfo="+encode(filename+"|"+filepath);
}
</script >
</@CommonQueryMacro.page>