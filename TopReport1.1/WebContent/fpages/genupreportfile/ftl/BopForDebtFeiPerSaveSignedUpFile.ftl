<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="��Ϣ��¼��ѯ">
<@CommonQueryMacro.CommonQueryTab id="bopForDebtFeiPerSaveSignedUpTabs" navigate="false" currentTab="BopForDebtFeiPerSaveSignedUpFile">
	<@CommonQueryMacro.CommonQuery id="bopForDebtFeiPerSaveSignedUpFile" init="false" submitMode="selected" navigate="false" >
		<table align="left">
			<tr>
				<td>
					<@CommonQueryMacro.Interface id="interface"  label="�������ѯ����" />
				</td>
			</tr>
			<tr>
  			  	<td>
  			    	<@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9"   pageCache="false" showArrow="true"/>
  			  	</td>
  			</tr>
  			<tr>
		      	<td>
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="select[40],filler2,workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exdebtcode[180],debtorcode[120],debtype[80],contractcurr[80],floatrate[80],anninrate[80],creditorcode[80],creditorname[80],creditornamen[80],creditortype[80],spapfeboindex[80],opercode" readonly="true" hasFrame="true" width="1000" height="260"/>
		      	</td>
      		</tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">

	function datatable1_filler2_onRefresh(cell,value,record) {
		if (record) {//�����ڼ�¼ʱ
			var id = record.getValue("id");
			var filler2 = record.getValue("filler2");
			cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + filler2 + "</a>"
		} else {
			cell.innerHTML="&nbsp;";
		}
	}
	
	//��ϸ��Ϣ
	function doDetail(id){
		showWin("�Ǿ���������ǩԼ��Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BopForDebtFeiPerSaveSignedInfo.ftl?id=" + id + "&op=detail");
	}
</script>
</@CommonQueryMacro.page>