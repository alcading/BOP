<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�˻�������Ϣ">

<@CommonQueryMacro.CommonQueryTab id="BOPForDebtNobleMetalGenTabs" navigate="false" currentTab="BOPForDebtNobleMetalGenChange">
	<@CommonQueryMacro.CommonQuery id="BOPForDebtNobleMetalGenChange" init="false" submitMode="selected" navigate="false" >
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
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="filler2[80],brNo,brNoName,workDate[100],exdebtcode[190],buscode[120],changeno[80],changtype[120],chdate[120],chcurrency[140],chamount[120],fairvalue[120]" hasFrame="true" width="900" height="260" readonly="true"/>
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
			cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + value + "</a>";
		} else {//�������ڼ�¼ʱ
		 	cell.innerHTML="&nbsp;";
		}
	}

	function doDetail(id){
		showWin("��������ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtNobleMetalLendingChangeInfoCol.ftl?id=" + id + "&op=detaile");
	}
</script>
</@CommonQueryMacro.page>