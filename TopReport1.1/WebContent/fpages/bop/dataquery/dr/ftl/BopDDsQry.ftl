<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�������뵥������Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BopDRDsQryTabs" navigate="false" currentTab="BopDDsQry">
		<@CommonQueryMacro.CommonQuery id="BopDDsQry" init="false" submitMode="all" navigate="false" >
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
						<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="filler2[80],buscode[80],brNo[80],brNoName[80],workDate[80],recStatus[80],approveStatus[80],repStatus[80],actiontype[80],actiondesc[80],rptno[80],custype[80],idcode[80],custcod[80],custnm[80],oppuser[80],txccy[80],txamt[80],exrate[80],lcyamt[80],lcyacc[80],fcyamt[80],othamt[80],othacc[80],method[80],inchargeamt[80],inchargeccy[80]" hasFrame="true" width="900" height="260" readonly="true"/>
		      		</td>
		    	</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>

	<script language="JavaScript">
	
		//��������
		function initCallGetter_post() {
			<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
			BopDDsQry_interface_dataset.setValue("qworkDateStart","${v_txdate}");
			BopDDsQry_interface_dataset.setValue("qworkDateEnd","${v_txdate}");
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
			BopDDsQry_dataset.flushData();
		}
		function locate(id) {
			var record = MtsBopDDsQry_dataset.find(["id"],[id]);
			if (record) {
				MtsBopDDsQry_dataset.setRecord(record);
			}
		}
		//��ϸ��Ϣ
		function doDetail(id){
			showWin("���������걨��������Ϣ��ϸ","${contextPath}/fpages/bop/collandaudit/dr/ftl/BopDDsAdd.ftl?id=" + id + "&op=detail","window","flushPage()",window);
		}
	</script>
</@CommonQueryMacro.page>