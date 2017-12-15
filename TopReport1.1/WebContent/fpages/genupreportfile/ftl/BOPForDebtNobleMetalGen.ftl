<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�˻�������Ϣ">

<@CommonQueryMacro.CommonQueryTab id="BOPForDebtNobleMetalGenTabs" navigate="false" currentTab="BOPForDebtNobleMetalGen">
	<@CommonQueryMacro.CommonQuery id="BOPForDebtNobleMetalGen" init="false" submitMode="selected" navigate="false" >
		<table align="left">
			<tr>
				<td>
					<@CommonQueryMacro.Interface id="interface" label="�������ѯ����" />
				</td>
			</tr>
			<tr>
				<td valign="top">
					<@CommonQueryMacro.PagePilot id="ddresult" maxpagelink="9" showArrow="true" />
				</td>
		    </tr>
		    <tr>
		    	<td>
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="filler2[80],brNo,brNoName,workDate[100],exdebtcode[180],debtorcode[120],debtype[80],valuedate[100],contractcurr[140],contractamount[120],maturity[100],anninrate[100],inprterm,spapfeboindex" hasFrame="true" width="900" height="260" readonly="true"/>
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
		showWin("��������ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtNobleMetalLendingCol.ftl?id=" + id + "&op=detaile");
	}
</script>
</@CommonQueryMacro.page>