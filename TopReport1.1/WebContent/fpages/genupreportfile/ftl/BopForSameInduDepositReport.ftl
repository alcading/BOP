<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
<@CommonQueryMacro.CommonQueryTab id="BopForSameInduDepositReportTabs" navigate="false" currentTab="BopForSameInduDepositReport">
	<@CommonQueryMacro.CommonQuery id="BopForSameInduDepositReport" init="false" submitMode="all" navigate="false" >
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
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="filler2[80],workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exdebtcode[180],debtorcode[120],debtype[80],valuedate[100],contractcurr[80],floatrate[80],anninrate[80],creditorcode,creditorname,creditornamen,creditorca,creditortype,crehqcode,opercode" readonly="true" hasFrame="true" width="1000" height="260"/>
		      	</td>

		      </tr>
		   
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">
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
		//window.location.href = "${contextPath}/fpages/datacollection/ftl/BopAccDsRecordADInfo.ftl?id=" + id + "&op=detail";
		showWin("����ͬҵ���ǩԼ��Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BopForSameInduDepositInfoCol.ftl?id="+id+"&op=detail","report","flushPage()");
	}

</script>
</@CommonQueryMacro.page>