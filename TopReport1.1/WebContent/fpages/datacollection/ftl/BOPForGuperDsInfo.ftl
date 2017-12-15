<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="��Լ��ϸ��Ϣ">
<@CommonQueryMacro.CommonQueryTab id="BopCFAExguTabs" navigate="false" currentTab="BOPForGuperDsInfo">
	<@CommonQueryMacro.CommonQuery id="BOPGuperInfo" init="false" submitMode="all" navigate="false" >
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
					<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="opr[80],filler2[80],workDate[80],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exguarancode[80],buscode[80],complianceno[80],guarantorcode[80],pguperamount[80],gupercurr[80],guperdate[80],guperamount[80],bencode[80],bename[80],benamen[80],remark[80],actiondesc[80]" hasFrame="true" width="900" height="260" readonly="true"/>
		      	</td>
		    </tr>
		    
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
</td></tr></table>
<script language="JavaScript">


//��ϵͳˢ�µ�Ԫ�������ʱ������
function datatable1_opr_onRefresh(cell,value,record) {
	if (record) {//�����ڼ�¼ʱ
		var id = record.getValue("id");
		var recStatus = record.getValue("recStatus");
		var innerStr = "<center>";
		if (recStatus == "01" || recStatus == "02") {
			innerStr = innerStr + "<a href=\"JavaScript:doCollection('"+id+"')\">�޸�</a>&nbsp;&nbsp;<a href=\"JavaScript:doDelete('"+id+"')\">ɾ��</a>"
		} else {
			innerStr = innerStr + "<a title='�ü�¼״̬�����޸�' style='color:#999999'>�޸�</a>&nbsp;&nbsp;<a title='�ü�¼״̬����ɾ��' style='color:#999999'>ɾ��</a>";
		}
		innerStr = innerStr + "</center>";
		 
		cell.innerHTML =innerStr;
	} else {//�������ڼ�¼ʱ
	 	cell.innerHTML="&nbsp;";
	}
}

function initCallGetter_post() {
	<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
	BOPGuperInfo_interface_dataset.setValue("qstartDate","${v_txdate}");
	BOPGuperInfo_interface_dataset.setValue("qendDate","${v_txdate}");
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
	BOPGuperInfo_dataset.flushData(1);
}



function locate(id) {
	
	var record = BOPGuperInfo.find(["id"],[id]);
	if (record) {
		BOPGuperInfo.setRecord(record);
	}
}
function btAdd_onClick(button) {
			btNewClick();
}

function btNewClick(){
	
	showWin("��Լ��ϸ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForGuperDsInfoAdd.ftl?op=new","report","flushPage()");

	
}

//�޸�
function doCollection(id){
	
	showWin("��Լ��ϸ��Ϣ�޸�","${contextPath}/fpages/datacollection/ftl/BOPForGuperDsInfoAdd.ftl?id=" + id + "&op=mod","report","flushPage()");
}

//ɾ��
function doDelete(id){
	
	showWin("��Լ��ϸ��Ϣɾ��","${contextPath}/fpages/datacollection/ftl/BOPForGuperDsInfoAdd.ftl?id=" + id + "&op=del","report","flushPage()");
}

//��ϸ��Ϣ
function doDetail(id){
	
	showWin("��Լ��ϸ��Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BOPForGuperDsInfoAdd.ftl?id=" + id + "&op=detail");
}
</script>
</@CommonQueryMacro.page>