<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BOPForDebtQueryTabs" navigate="false" currentTab="BOPForDebtBilLoanQuery">
		<@CommonQueryMacro.CommonQuery id="BOPForDebtBilLoanQuery" init="false" submitMode="all" navigate="false" >
			<table align="left">
				<tr>
					<td colspan="2">
						<@CommonQueryMacro.Interface id="interface"  label="�������ѯ����" />
					</td>
				</tr>

				<tr>
  			  		<td>
  			    		<@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9"   pageCache="false" showArrow="true"/>
  			  		</td>
  			 	</tr>

  			 	<tr>
		      		<td colspan="2">
						<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="filler2[100],brNo[140],brNoName[180],workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exdebtcode[190],debtorcode[140],debtype[90],contractdate[120],valuedate[120],contractcurr[140],contractamount[120],maturity[120],anninrate[100],inprterm,spapfeboindex" readonly="true" hasFrame="true" width="900" height="230"/>
		      		</td>
		      	</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>
	<script language="JavaScript">
		function initCallGetter_post() {
			//��ʼ��������Ĭ�ϵ�ǰ����
			<#assign v_date = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
			BOPForDebtBilLoanQuery_interface_dataset.setValue("qWorkDateStart","${v_date}");
			BOPForDebtBilLoanQuery_interface_dataset.setValue("qWorkDateEnd","${v_date}");
		}
		function locate(id) {

			var record = BOPForDebtBilLoanQuery_dataset.find(["id"],[id]);
			if (record) {
				BOPForDebtBilLoanQuery_dataset.setRecord(record);
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
		//��ϸ
		function doDetail(id) {
			locate(id);
			showWin("˫�ߴ���ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtBilLoanCol.ftl?id="+id+"&op=detaile&model=Query","report","flushPage()");
		}

	    //ˢ������
		function flushPage(){
			BOPForDebtBilLoanQuery_dataset.flushData();
		}
	</script>
</@CommonQueryMacro.page>