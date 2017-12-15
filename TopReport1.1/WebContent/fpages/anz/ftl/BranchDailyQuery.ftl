<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro >
<@CommonQueryMacro.page title="����������ҵ����ѯ">
   <table align="left">
   <tr>
      <td>
      	<@CommonQueryMacro.CommonQuery id="BranchDailyQuery" init="false" submitMode="current">
      		<table width="1000px">


			<tr>
   			<td valign="top" colspan="2">
   			<@CommonQueryMacro.Interface id="interface" label="����������ҵ����ѯ" colNm=4 showButton="true" />
        	</td>
       		 </tr>
      				<tr>
      			  <td colspan="2">
      			     <@CommonQueryMacro.DataTable id="datatable1" fieldStr="updt,brno,ncustNum,allamt,inamt,outamt,countSolder,avncustNum,avinamt,avoutamt,opr" width="100%" hasFrame="true" readonly="true" />
      			  </td>
      			 </tr>
      			 <tr style="display:none">
					<td colspan="2">
						<@CommonQueryMacro.Button id= "btSee"/>&nbsp;&nbsp;

					</td>
				</tr>
				
      		</table>
      	</@CommonQueryMacro.CommonQuery>
      </td>
   </tr>
   </table>
<script language="javascript">
var qcmrm;
var qdate;
function locate(id) {

		var record = BranchDailyQuery_dataset.find(["brno"],[id]);
		if (record) {
			BranchDailyQuery_dataset.setRecord(record);
		}
	}
	function datatable1_opr_onRefresh(cell,value,record) {
		if (record) {//�����ڼ�¼ʱ
			
				cell.innerHTML="<center><a href=\"JavaScript:doSee('"+value+"')\">��Ʒ������ϸ</a></center>";
			
		} else {//�������ڼ�¼ʱ
		 cell.innerHTML="&nbsp;";
		}
	}
	function doSee(id){
	locate(id);
	qcmrm=BranchDailyQuery_dataset.getValue("brno");
	qdate=BranchDailyQuery_dataset.getValue("updt");
	btSee.click();
}
function btSee_onClickCheck(button){
button.url = "/fpages/anz/ftl/BranchDailyQueryDetail.ftl?qbrno="+qcmrm+"&qdate="+qdate;

}
</script>
</@CommonQueryMacro.page>