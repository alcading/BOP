<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro >
<@CommonQueryMacro.page title="���·�����������">
   <table align="left">
   <tr>
      <td>
      	<@CommonQueryMacro.CommonQuery id="ReportInfo" init="false" submitMode="current">
      		<table width="1000px">


			<tr>
   			<td valign="top" colspan="2">
   			<@CommonQueryMacro.Interface id="interface" label="�����ѯ����" colNm=4 showButton="true" />
        	</td>
       		 </tr>
      			<tr>
      			  <td colspan="2">
      			     <@CommonQueryMacro.DataTable id="datatable1" fieldStr="reportName,fileName,fileTotal,fileCreateTime,opr" width="100%" hasFrame="true" readonly="true" />
      			  </td>
      			 </tr>
	 				<tr>
					<td colspan="2">
						<@CommonQueryMacro.Button id= "btTest"/>&nbsp;&nbsp;
					</td>
				</tr>
      		</table>
      	</@CommonQueryMacro.CommonQuery>
      </td>
   </tr>
   </table>
<script language="javascript">

//��ϵͳˢ�µ�Ԫ�������ʱ������
	function datatable1_opr_onRefresh(cell,value,record) {
		if (record) {//�����ڼ�¼ʱ
			
				cell.innerHTML="<center><a href=\"JavaScript:doDownload('"+value+"')\">����</a></center>";
			
		} else {//�������ڼ�¼ʱ
		 cell.innerHTML="&nbsp;";
		}
	}
	//�����ļ�

	function doDownload(id){
		var path=_application_root + "/fileDownload.do?flag=0&filePath="+id;
		location.href=path;
		return false;
	}
function btTest_onClickCheck(button){
var path=_application_root + "/fileDownload.do?flag=2";
		location.href=path;
		return false;
}
</script>
</@CommonQueryMacro.page>