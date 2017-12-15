<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="ǩԼ��Ϣ">

<@CommonQueryMacro.CommonQueryTab id="bOPForDebtCurrMarketQueryTabs" navigate="false" currentTab="BOPForDebtCurrMarketSignedQuery">
	<@CommonQueryMacro.CommonQuery id="bOPForDebtCurrMarketSignedQuery" init="false" submitMode="all" navigate="false" >
		<table align="left">
			<tr>
				<td >
					<@CommonQueryMacro.Interface id="interface"  label="�������ѯ����" />
				</td>
			</tr>
			<tr>
  			  <td>
  			    <@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9"   pageCache="false" showArrow="true"/>
  			  </td>
  			 </tr>
  			 <tr>
		      	<td >
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="filler2[80],brNo,brNoName,workDate[100],actiontype[80],recStatus[70],approveStatus,repStatus,exdebtcode[180],debtorcode[120],debtype[80],valuedate[100],contractcurr[120],contractamount[120],maturity[100],anninrate[100],spapfeboindex" readonly="true" hasFrame="true" width="900" height="260"/>
		      	</td>

		      </tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">

	function initCallGetter_post(){
		var currentDate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getTxdate()}";
		bOPForDebtCurrMarketSignedQuery_interface_dataset.setValue("qworkDate", currentDate);
		bOPForDebtCurrMarketSignedQuery_interface_dataset.setValue("eworkDate", currentDate);
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
		showWin("�����г�����ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtCurrMarketToolsCol.ftl?id="+id+"&op=detaile");
	}
	
</script>
</@CommonQueryMacro.page>