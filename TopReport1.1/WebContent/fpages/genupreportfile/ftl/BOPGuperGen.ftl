<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="��Լ��ϸ��Ϣ">
<@CommonQueryMacro.CommonQueryTab id="BopCFAExguGenTabs" navigate="false" currentTab="BOPGuperGen">
	<@CommonQueryMacro.CommonQuery id="BOPGuperGen" init="false" submitMode="selected" navigate="false" >
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
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="filler2[80],brNo[80],brNoName[80],workDate[80],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exguarancode[80],guarantorcode[80],buscode[80],complianceno[80],pguperamount[80],gupercurr[80],guperdate[80],guperamount[80],bencode[80],bename[80],benamen[80],remark[80],actiondesc[80]" hasFrame="true" width="900" height="260" readonly="true"/>
		      	</td>
		    </tr>
		    
		    
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
</td></tr></table>
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
	
	showWin("��Լ��ϸ��Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BOPForGuperDsInfoAdd.ftl?id=" + id + "&op=detail");
}
</script>
</@CommonQueryMacro.page>