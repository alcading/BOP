<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="�����Ϣ">

<@CommonQueryMacro.CommonQueryTab id="BopForSameInduDepositDataQueryTabs" navigate="false" currentTab="BopForSameInduDepositChangeDataQuery">
	<@CommonQueryMacro.CommonQuery id="BopForSameInduDepositChangeDataQuery" init="false" submitMode="all" navigate="false" >
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
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="filler2[80],brNo[80],brNoName[80],workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exdebtcode[180],buscode[120],changeno,accoamount,chdate" readonly="true" hasFrame="true" width="900" height="260"/>
		      	</td>

		      </tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">

	function initCallGetter_post(){
		<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
		//interface���ѯ�����ù�������Ĭ�ϵ���
	    BopForSameInduDepositChangeDataQuery_interface_dataset.setValue("qworkDate","${v_txdate}");
	    BopForSameInduDepositChangeDataQuery_interface_dataset.setValue("eworkDate","${v_txdate}");
	}

//��ϵͳˢ�µ�Ԫ�������ʱ������
	function datatable1_filler2_onRefresh(cell,value,record) {
		if (record) {//�����ڼ�¼ʱ
			var id = record.getValue("id");
			var filler2 = record.getValue("filler2");
			cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + filler2 + "</a>";
		} else {//�������ڼ�¼ʱ
		 	cell.innerHTML="&nbsp;";
		}
	}
		
	function doDetail(id){
		showWin("����ͬҵ��������Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BopForSameInduDepositBalanceInfoCol.ftl?id="+id+"&op=detailBalance","report","flushPage()");
	}
</script>
</@CommonQueryMacro.page>